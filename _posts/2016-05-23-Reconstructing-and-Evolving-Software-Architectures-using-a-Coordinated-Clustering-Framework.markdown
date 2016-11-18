---
layout: post
title: "Reconstructing and Evolving Software Architectures using a Coordinated Clustering Framework"
permalink: cchd 
---

### Abstract

During a long maintenance period, software projects experience architectural erosion and drift, making maintenance tasks more challenging to perform for software engineers unfamiliar with the code base. This paper presents a framework that assists software engineers in recovering a software project’s architecture from its source code. The architectural recovery process is an iterative one that combines clustering based on contextual and structural information in the code base with incremental developer feedback. This process converges when the developer is satisfied with the proposed decomposition of the software, and, as an additional benefit, the framework becomes tuned to aid future evolution of the project. The paper provides both analytic and empirical evaluations of the obtained results; experimental results show a reasonably superior performance of our framework over alternative conventional methods. The proposed framework utilizes a novel compartmentalization technique Coordinated Clustering of Heterogeneous Datasets (CCHD) that relies on contextual and structural information in the code base, but, unlike most previous approaches, does not require specific weights for each information type, which allows it to adapt to different project types and domains.

### Authors

- Sheikh Motahar Naim, <snaim@miners.utep.edu>
- Kostadin Damevski, <damevski@acm.org>
- Mahmud Shahriar Hossain, <mhossain@utep.edu>

### Dataset Description

For the [Sando Code Search Tool][sando_url] we provide all of the original and preprocessed input data, including
the sources for v. 1.7 of this tool, and the variety of lexical and structural data that are used by CCHD.

- Sources
    * [Sando source v. 1.7][sando_src]
- Derivatives
    * [Sando call graph][sando_call_graph]
    * [Sando NL terms per class][sando_terms]
    * [Sando method to class map][sando_mmap]
- Scripts for Performance Measurement
    * [Script for random generation of class data][runtime_class]
    * [Script for random generation of term data][runtime_term]

The decomposition produced by CCHD for the following code bases is provided: Sando (v. 1.7), Apache httpd (v. 2.0), JEdit (v. 5.1.0), Apache OODT (v. 0.2), ArchStudio (v. 4) and ITK (v. 4.5.2). For each we provide the classes and methods for 10 clusters. Please contact us for datasets representing different numbers of clusters.

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
[sando_call_graph]: /datasets/cchd/input_sando/call_graph.txt
[sando_terms]: /datasets/cchd/input_sando/class_terms.txt
[sando_mmap]: /datasets/cchd/input_sando/method_to_class_map.txt
[sando_src]: /datasets/cchd/input_sando/sando-1.7.zip
[sando_url]: https://visualstudiogallery.msdn.microsoft.com/06f39a31-20ce-408c-afee-8a02b484db1c
[runtime_class]: /datasets/cchd/scripts/runtime_vary_class.m
[runtime_term]: /datasets/cchd/scripts/runtime_vary_term.m
