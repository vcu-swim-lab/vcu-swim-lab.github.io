---
layout: post
title: "Mining Sequences of Developer Interactions in Visual Studio for Usage Smells"
permalink: mining-vs
---

### Abstract

In this paper, we present a semi-automatic approach for mining a large-scale dataset of IDE interactions to extract usage
smells, i.e., inefficient IDE usage patterns exhibited by developers in the field. The approach outlined in this paper first mines frequent
IDE usage patterns, filtered via a set of thresholds and by experts, that are subsequently supported (or disputed) using a developer
survey, in order to form usage smells. In contrast with conventional mining of IDE usage data, our approach identifies time-ordered
sequences of developer actions that are exhibited by many developers in the field. This pattern mining workflow is resilient to the ample
noise present in IDE datasets due to the mix of actions and events that these datasets typically contain. We identify usage patterns and
smells that contribute to the understanding of the usability of Visual Studio for debugging, code search, and active file navigation, and,
more broadly, to the understanding of developer behavior during these software development activities. Among our findings is the
discovery that developers are reluctant to use conditional breakpoints when debugging, due to perceived IDE performance problems
as well as due to the lack of error checking in specifying the conditional.

### Authors

- Kostadin Damevski, <damevski@acm.org>
- David C. Shepherd, <david.shepherd@us.abb.com>
- Johannes Schneider, <johannes.schneider@ch.abb.com>
- Lori Pollock, <pollock@udel.edu>

### Dataset Description

The Blaze IDE interaction dataset consists of over 8 million
messages by 196 developers at ABB, Inc., reflecting 32,811
developer hours of usage of the Visual Studio IDE. The raw
datasets are proprietary, so here we provide the patterns
mined from the original data. 

The provided files represent sequences of IDE interaction exhibited
by at least 10% of developers. They represent maximal sequences with
a gap of 1 message, mined by the [MGFSM][mgfsm] algorithm, after several 
preprocessing steps, detailed in the paper below.

- [MGFSM_Patterns.txt][patterns] -- the list of patterns mined from the dataset
- [MGFSM_Pattern_Occurences.txt][occurences] -- descriptive statistics for each pattern, indexed by the line number of each pattern. Only patterns of length 8 and more are included

### Developer Survey Results

- [Survey Report][survey] -- survey of usage smells with 51 developers at ABB, Inc.

### Paper Preprint

*Will be posted here when available*

[mgfsm]: https://github.com/uma-pi1/mgfsm
[patterns]: /datasets/mining-vs/MGFSM_Patterns.txt
[occurences]: /datasets/mining-vs/MGFSM_Pattern_Occurences.txt
[survey]: /datasets/mining-vs/SurveyOfVisualStudioUsageSmells.pdf
