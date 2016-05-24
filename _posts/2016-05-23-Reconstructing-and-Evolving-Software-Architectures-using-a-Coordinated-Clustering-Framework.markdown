---
layout: post
title: "Reconstructing and Evolving Software Architectures using a Coordinated Clustering Framework"
permalink: cchd 
---

### Abstract

During a long maintenance period, software projects experience architectural erosion and drift, making maintenance tasks more challenging to perform for software engineers unfamiliar with the code base. This paper presents a framework that assists software engineers in recovering a software project’s architecture from its source code. The architectural recovery process is an iterative one that combines clustering based on contextual and structural information in the code base with incremental developer feedback. This process converges when the developer is satisfied with the proposed decomposition of the software, and, as an additional benefit, the framework becomes tuned to aid future evolution of the project. The paper provides both analytic and empirical evaluations of the obtained results; experimental results show a reasonably superior performance of our framework over alternative conventional methods. The proposed framework utilizes a novel compartmentalization tech- nique Coordinated Clustering of Heterogeneous Datasets (CCHD) that relies on contextual and structural information in the code base, but, unlike most previous approaches, does not require specific weights for each information type, which allows it to adapt to different project types and domains.

### Authors

- Sheikh Motahar Naim, <snaim@miners.utep.edu>
- Kostadin Damevski, <damevski@acm.org>
- Mahmud Shahriar Hossain, <mhossain@utep.edu>

### Dataset Description

The decomposition, for the following code bases is given below: Sando (v. 1.7), Apache httpd (v. 2.0), JEdit (v. 5.1.0), Apache OODT (v. 0.2), ArchStudio (v. 4) and ITK (v. 4.5.2). For each we provide the classes and methods for 10 clusters. Please contact us for datasets representing different numbers of clusters.

- Sando -- [10_clusters_method.csv][sando_m]; [10_clusters_class.csv][sando_c]
- httpd -- [10_clusters_method.csv][httpd_m]; [10_clusters_class.csv][httpd_c]
- jEdit -- [10_clusters_method.csv][jedit_m]; [10_clusters_class.csv][jedit_c]
- OODT -- [10_clusters_method.csv][oodt_m]; [10_clusters_class.csv][oodt_c]
- ArchStudio -- [10_clusters_method.csv][archstudio_m]; [10_clusters_class.csv][archstudio_c]
- ITK -- [10_clusters_method.csv][itk_m]; [10_clusters_class.csv][itk_c]

### Paper Preprint

*Will be posted here when available*

[sando_m]: /datasets/cchd/output_sando/10_clusters_method.csv
[sando_c]: /datasets/cchd/output_sando/10_clusters_class.csv
[httpd_m]: /datasets/cchd/output_apache/10_clusters_method.csv
[httpd_c]: /datasets/cchd/output_apache/10_clusters_class.csv
[jedit_m]: /datasets/cchd/output_jedit/10_clusters_method.csv
[jedit_c]: /datasets/cchd/output_jedit/10_clusters_class.csv
[oodt_m]: /datasets/cchd/output_oodt/10_clusters_method.csv
[oodt_c]: /datasets/cchd/output_oodt/10_clusters_class.csv
[archstudio_m]: /datasets/cchd/output_archstudio/10_clusters_method.csv
[archstudio_c]: /datasets/cchd/output_archstudio/10_clusters_class.csv
[itk_m]: /datasets/cchd/output_itk/10_clusters_method.csv
[itk_c]: /datasets/cchd/output_itk/10_clusters_class.csv
