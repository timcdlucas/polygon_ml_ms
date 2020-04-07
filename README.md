# Improving disaggregation models of malaria incidence by ensembling non-linear models of prevalence

# Tim Lucas et al.

This is the manuscript for the machine learning + disaggregation paper.
The analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml).

The original WSC paper is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml_wsc) and the WSC analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_machine_learn_wsc).
Finally, the preprint is [here](https://www.biorxiv.org/content/10.1101/548719v1.abstract).
I haven't decided whether I should replace that preprint with this document when ready or just leave it.


We expanded the WSC analysis in a few ways.
1. We included globally fitted ML models. So we will look at models with covariates from local ML, global ML and both.
2. Expanded to some extra countries. Added indonesia and Senegal. Brazil was super slow.
3. We considered briefly whether constraining betas > 0 is useful. A prelim analysis on MDG and COL suggests it is not. Which is perhaps surprising but maybe not interesting enough to follow further.
