# Model ensembles with different response variables for base and meta models: malaria disaggregation regression combining prevalence and incidence data

# Tim Lucas et al.

This is the manuscript for the machine learning + disaggregation paper.
The analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml).

The WSC paper is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml_wsc) and the WSC analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_machine_learn_wsc).
Finally, the preprint is [here](https://www.biorxiv.org/content/10.1101/548719v1.abstract).
I haven't decided whether I should replace that preprint with this document when ready or separate into a new preprint.


We aim to expand the WSC analysis in a few ways.
1. We want to include globally fitted ML models. So we will look at models with covariates from local ML, global ML and both.
2. Expand to some extra countries. Add indonesia and Senegal. If Brazil isn't super slow add that as well.


3. We considered briefly whether constraining betas > 0 is useful. A prelim analysis on MDG and COL suggests it is not. Which is perhaps surprising but maybe not interesting enough to follow further.


## Journal decision

From Pete:
Journal Royal Stat Society 
Proceeding Royal Soc Interfaces
PLoS Comp Biol

PLoS comp biol was plan for other paper.

Stacked generalisation is at Interface.



