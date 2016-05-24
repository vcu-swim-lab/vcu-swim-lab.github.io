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


- [MGFSM_Patterns.txt][patterns] -- the list of patterns mined from the dataset
- [MGFSM_Pattern_Occurences.txt][occurences] -- descriptive statistics for each pattern, indexed by the line number of each pattern. Only patterns of length 8 and more are included

### Paper Preprint

*Will be posted here when available*

[mgfsm]: https://github.com/uma-pi1/mgfsm
[patterns]: /datasets/mining-vs/MGFSM_Patterns.txt
[occurences]: /datasets/mining-vs/MGFSM_Pattern_Occurences.txt
