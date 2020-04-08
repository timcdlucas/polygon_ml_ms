



General comments
1. The double use of the environmental variables (first for the ML prediction and second for estimating together with the ML predictions the incidence) implies some correlation between the covariates used in the prevalence model on page 8. In addition, certain ML methods perform similar (see gradient boosting tree and random forest) expecting very similar results, and thus high correlation. I would thus suggest to add a few sentences commenting on these two sources of correlation and how do you expect this to affect your results.



2. I would also suggest to add (on a supplemental file) more information about the use of the ML methods on the supplement together with the cross validation, the tuning parameters used and the model specifics.

3. A potential drawback of the modelling approach you followed is that the uncertainty from the machine learning algorithms is not propagated in the prevalence model. I would suggest to acknowledge this and make suggestions on how to solve this problem as avenues for further research.

4. I have also missed some definition of methodology used. Please provide the definition of stacking and also provide in the supplement a brief explanation on how the ML methods you selected work.

will add

5. I would suggest to add a few sentences of the potential spatial misalignment between the environmental covariates used.

don't understand

6. I find it slightly unnatural the fact that although the main goal of disaggregation methods is to assess incidence (or any other metric) on higher geographical precision, both metrics used assess the coarse geographical resolution (polygons). Of course this is fair, since the "truth" is available on the polygon level. It would be interesting to have some metrics that perform on this higher geographical resolution of interest (and the truth can be the same, assuming identical on the pixels that belong to each polygon).

note to reviewer saying we're working on it

7. The study, as the title suggests is motivated by the malaria incidence. I would suggest to have a small section or paragraph in the paper, interpreting the maps you created and argue about their usefulness in the Malaria example and in the countries selected.



8. The distinction between global and local model was not clear on the first read of the paper. Please specify explicitly that the global model refer to a single model combining all 4 countries with a single spatial component, whereas the local are 4 different country specific models with different spatial components. Given this, it is not unexpected the local model to perform better, since it have a region specific Gaussian Field.

not correct

9. I would have expected that the predictive ability of a model with $n$ covariates (purely talking about bias and not variance) would have been lower compared to the predictive ability of a model with $n+k$ covariates. How do you explain the fact that there are instances where Enviro perfoms better? Can you add some sentences regarding this?

yes

10. The Malaria atlas project also presents prevalence estimates (2nd stage of your model). I would suggest to add some sentences clarifying: 1) how your methods differ from the Malaria continuous prevalence/incidence atlas 2) How  your estimates differ from the estimates published in the malaria atlas 3) Talk about the possibility or not of using the malaria atlas continuous estimates as an additional covariate.

explain to reviewer that this is weird.

11. Initially, the reviewer got the impression that incidence data on aggregated scale will be used to inform the modelling framework (page 2 lines 17-18). The model description on page 8 implies that the incidence on aggregated scale is calculated using the disaggregation model and the observed incidence is used only for cross validation purposes. If you use the observed incidence to inform the predicted values from the disaggregation model, please provide more information. Otherwise, I would remove any claim that the proposed model combines both incidence and prevalence data.

not correct

12. On page 10, the use of $i$ to define different experiments can confuse, since $i$ was also used to denote incidence.

will change

13. Please provide some additional information about how the spatial cross validation was performed using the global models. Did you take all the possible combinations between the country specific clusters results by the k-means?

huh



Reviewer #2: I think this paper is well written, employs interesting methodology, and addresses an important problem. I have several minor questions and requests for clarification, but generally think the manuscript is in good shape.


Page 2 - More contrast with/discussion about true joint models would be useful

add in discussion. cite preprint?

Page 4- "While we do expect there to be variation in time, as long as the spatial biases in sampling do not change through time, the temporal effects will not bias learned relationships as the model will still be learning relationships based on the relative changes along environmental variables."

This claim is not completely clear to me

not sure

> Page 7: "For each model we ran five-fold cross-validation to select hyperparameters using random search for Random Forest and boosted regression trees and grid search for the other models. Root 150 mean square error (RMSE) was used to select the best performing model."

While it may not be problematic given the intended use, some discussion here about why k-fold cross validation is appropriate in a spatial setting would be helpful. Unlike in most "off-the-shelf" ML analyses, we can't assume that the observations are independent, and the error rates estimated under cross validation can fail to account for this fact. Later in the manuscript a spatial approach is mentioned - making that clear here would help.

agree. perhaps should have run spatial


> Page 7: "An empirical logit was used rather than a standard logit as there were many predictions of exactly zero."

Is there any reason to prefer ML-regression + Empirical Logit vs. using  ML-binomial-classification models directly? It seems that the techniques you're using are well suited to directly estimate the probability surface under an appropriate link function rather than doing so indirectly using a linear  model. More discussion of this issue would be helpful.

> Page 7-8:  "these models cannot be fitted using INLA [47] as we are not using a linear link function" - this is unclear to me - the R-INLA software does support alternate link functions, so it seems like it should be possible. The choice of software does not seem crucial to the authors methods, however.

http://www.r-inla.org/faq#TOC-Does-INLA-support-the-use-of-different-link-functions-

explain


> Page 8: "the polynomial is a function from a previously published model" - somewhere, it would be helpful to have a brief note of any limitations, assumptions, or problems associated with this approach. One issue which comes to mind is that, as written, it's not clear if any uncertainty associated with the given parameters is being propagated to the use of the model in the current work. This seems especially important as the authors note later that coverage of posterior credible intervals was poor.

we agree but difficult. just in review response?

Generally, I think additional limitations are required when discussing things like posterior credible intervals. Given that the models are derived using nonparametric components, there is no guarantee that that the posterior distribution will be consistent. Great caution in interpreting inferential measures seems in order.

agree? not sure where to write this
