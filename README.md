# Model ensembles with different response variables for base and meta models: malaria disaggregation regression combining prevalence and incidence data

# Tim Lucas et al.

This is the manuscript for the machine learning + disaggregation paper.
The analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml).

The WSC paper is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_ml_wsc) and the WSC analysis is [here](https://map-fs1.ndph.ox.ac.uk/gitlab/timcdlucas/polygon_machine_learn_wsc).
Finally, the preprint is [here](https://www.biorxiv.org/content/10.1101/548719v1.abstract).
I haven't decided whether I should replace that preprint with this document when ready or separate into a new preprint.


We aim to expand the WSC analysis in a few ways.
1. We will consider briefly whether constraining betas > 0 is useful. Then we will either switch to beta > 0 or keep as is for the full analysis.
2. We want to include globally fitted ML models. So we will look at models with covariates from local ML, global ML and both.
3. Expand to some extra countries. TBD.
