function runtime_vary_term()
    dlmwrite('runtime_vary_term.csv', -1);
    for noOfTerms = 100:100:1000
        noOfDocs = 50;
        noOfMethods = noOfDocs*5;
        noOfMethods_noiso = floor(noOfMethods * 0.6);

        tic;
        % build the Term-Document similarity matrix
        S = rand(noOfTerms, noOfDocs);

        % build the adjacency matrix W1 = [0 S; S' 0] for term-doc
        W1 = [zeros(noOfTerms, noOfTerms) S; S' zeros(noOfDocs, noOfDocs)];

        % remove the rows and columns representing isolated nodes from W2
        W2 = rand(noOfMethods_noiso, noOfMethods_noiso);

        % now build the augmented adjacency matrix W = [W1 0; 0 W2]
        W = [W1 zeros(size(W1, 1), size(W2,2)); zeros(size(W2, 1), size(W1,2)) W2];

        % add class-method relations in W
        for i = 1:noOfDocs
            for j = 1:noOfMethods_noiso
                x = rand(1,1);
                if x > 0.8
                    W(noOfTerms+i, noOfTerms+noOfDocs+j) = 1;
                    W(noOfTerms+noOfDocs+j, noOfTerms+i) = 1;
                end
            end
        end
        
        fixed_time = toc;
        
        array_k = [];
        for k = 3:2:9
            tic;
            % apply normalized min-cut spectral clustering
            [clust_idx, sumd, Dist, EigenVectors] = perform_clustering(W, k);

            % make the cluster histogram
            clust_histo = zeros(k, 1);
            for j = 1:(noOfDocs+noOfMethods_noiso)
                idx = clust_idx(noOfTerms+j);
                clust_histo(idx) = clust_histo(idx) + 1;
            end
            clust_histo
            time_k = toc;
            total_time = fixed_time + time_k;
            array_k = [array_k total_time];
        end
        % read the result matrix, append this result vector and write
        % the matric back
        array = dlmread('runtime_vary_term.csv');
        if size(array, 2) == 1 && array(1, 1) == -1
            array = [];
        end
        array = [array; [noOfTerms array_k]];
        dlmwrite('runtime_vary_term.csv', array);
    end
    
function [clust_idx, sumd, Dist, EigenVectors] = perform_clustering(W, k)
    D = diag(sum(W,2));
    L = D - W;
    [Vec, Val] = eig(L, D);
    [~, order] = sort(diag(Val));
    Val = Val(order, order);
    Vec = Vec(:, order);
    Vec = Vec(:, 2:k+1);
    [clust_idx, ~, sumd, Dist] = kmeans(Vec, k, 'replicates', 10);
    EigenVectors = Vec;
