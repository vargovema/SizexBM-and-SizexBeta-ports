# SizexBM-and-SizexBeta-ports

## 25 Size x BM portfolios

### Summary statistics for portfolio returns and standard deviations

The summary statistic for 25 Size x BM portfolios is reported in Table 1. From the results, we see that the mean portfolio returns are as per expectation provided by @fama_1996_multifactor. The average portfolio returns are quite similar to the ones reported by @fama_1996_multifactor and they also follow similar trends. For instance, we see that for a given size (market capitalization), the expected monthly excess returns tend to be higher for higher book-to-market values. Moreover, we see that smaller market caps tend to outperform higher market caps, however, the pattern does not hold for companies with low book-to-market values. When it comes to volatility, we see that low book-to-market stocks tend to have higher volatility while stocks with bigger market capitalization tend to have lower volatility. 

<figcaption align = "center"><b> Table 1: Summary statistics of the 25 Size x BM portfolio monthly returns.</b></figcaption>

<table style="text-align:center"><caption><strong>Size: Small</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.251</td><td>7.858</td><td>-34.817</td><td>38.476</td></tr>
<tr><td style="text-align:left">2</td><td>0.763</td><td>6.876</td><td>-31.549</td><td>40.622</td></tr>
<tr><td style="text-align:left">3</td><td>0.763</td><td>5.948</td><td>-29.365</td><td>27.581</td></tr>
<tr><td style="text-align:left">4</td><td>0.976</td><td>5.660</td><td>-29.490</td><td>27.264</td></tr>
<tr><td style="text-align:left">High</td><td>1.062</td><td>5.967</td><td>-29.469</td><td>33.296</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>


### Estimates of FF alphas, factor loadings, and regression R2s

The results of OLS regression models built on the time-series that track 25 Size x BM portfolio monthly returns can be found in Table 2. From the results, we observe patterns that are consistent with the models built by @fama_1996_multifactor. First of all, we see that all the factor loadings carry high significance levels that are above 99%. Furthermore, they follow a similar pattern since the bigger the size of market capitalization, the smaller the factor loading of the SMB (small minus big) factor. The SMB factor is positive for almost all the stocks except for big market caps where the factor has a negative loading. The emerging pattern is explained by @fama_1996_multifactor who suggest that "[s]tocks with low long-term past returns (losers) tend to have positive SMB and HML slopes (they are smaller and relatively distressed) and higher future average returns" (p.56). When it comes to HML (high minus low) factor loading, we see that they are negative for all the low book-to-market equities. Otherwise, the stocks have a positive HML factor loading that tends to increase for higher market caps. Concerning the model alphas, many of them do not carry statistical significance. Nevertheless, Table 7 suggests the average to be around -0.015 which is in accordance with the expectation of @fama_1996_multifactor that the alpha values are close to 0 on average. Concerning the R-squared values, all of them are above 80% and they tend to be higher for smaller market caps.

### 3. discuss how the results in 1. and 2. support or weaken the evidence provided by FF (1996) 

Overall, the findings of the analysis of the 25 Size x BM portfolios support the findings of @fama_1996_multifactor which means that their conclusions hold with more recent market data. Moreover, Table 7 suggests that the average R-squared value of the implemented FF model is around 91.2% which is quite close to the average R-squared value of 93% provided in the research by @fama_1996_multifactor. Additionally, the alpha values tend to be negative for smaller book-to-market equities and positive for higher book-to-market equities, similar to the observation of @fama_1996_multifactor.

### 4. provide evidence and discuss whether or not the FF model performs better than the CAPM

Based on the regression output in Table 3, we see that the CAPM model has higher loading of the market premium factor. However, the CAPM performs worse than the three-factor FF model since we see that the R-squared values are significantly lower. More specifically, the R-squared values are around 16.2% lower on average for CAPM models as depicted in Table 7. 


## Task B

### 1. report summary statistics for portfolio returns and standard deviations

The summary statistic for 25 Size x Beta portfolios is reported in Table 4. From the summary statistics in Table 4, we again see that smaller market caps tend to outperform bigger market caps when it comes to the average monthly excess returns. However, as the book-to-market equity is getting higher, we do not see the same pattern as with 25 Size x BM portfolios since the returns initially start to increase for higher book-to-market values and then they start decreasing. Regarding the volatility of the  25 Size x Beta portfolios, Table 4 suggests that the beta portfolios are less volatile than the 25 Size x BM portfolios. Moreover, the volatility tends to increase for higher book-to-market equities. 

### 2. report estimates of FF alphas, factor loadings, and regression R2s

The results of OLS regression models build based on the time-series that track 25 Size x Beta portfolio monthly returns can be observed in Table 5. The results suggest that most of the factor loadings tend to carry high significance levels above 99%. However, the HML factor seems to be not significant for market caps of big size and book-to-market values of 3 and 4 (see the last table in Table 5). Moreover, the HML factor loadings for high book-to-market values of sizes 3 and 4 are not significant as well. Concerning the SMB factor, it seems to not carry significance only for low book-to-market equity of size 4 and 4 book-to-market value of size big. The R-squared values of the models in Table 5 tend to be lower than those in Table 2. Nevertheless, the emerging pattern seems to be quite different since the R-squared values tend to increase for higher book-to-market equities, however, the pattern does not hold for big market caps. When it comes to the alpha values, approximately half of them do not carry any significance. Moreover, Table 7 suggests that the alphas are positive on average which is not the case for 25 Size x BM portfolios. Also, all the factor loadings tend to be quite similar for both portfolios with market premium and HML carrying low average loadings for 25 Size x Beta portfolios as depicted in Table 7.

### 3. discuss how the results in 1. and 2. support or weaken the evidence provided by FF (1996) 

@fama_1996_multifactor suggest that the average R-squared values should be around 93%, however, that does not hold for 25 Size x Beta portfolios since the average of R-squared values is around 88.3% as shown in Table 7. As @fama_1996_multifactor imply: "Since the average HML return is strongly positive (about 6 percent per year), these negative loadings, which are similar to the HML slopes for low-BE/ME stocks, imply lower expected returns" (p.56). However, we see that the factor loadings of the HML factor are positive for low book-to-market equities which contradicts the evidence provided by @fama_1996_multifactor. This could imply that low book-to-market equities do not have lower expected returns in 25 Size x Beta portfolios. Regarding the alpha values, Table 7 shows that the average is around 0.01 which is following the expectation of @fama_1996_multifactor who suggest that the average should be close to 0.

### 4. provide evidence and discuss whether or not the FF model performs better than the CAPM

The results of the CAPM model can be found in Table 6 where we see that CAPM performs worse than the FF model by looking at the R-squared values. However, the partial reason for this is the fact that due to the formula for R-squared value, it is higher by default for models with more explanatory variables. Nevertheless, the difference in the performance of the CAPM and FF models for 25 Size x Beta portfolios is not as pronounced as in the difference between the CAPM and FF models for 25 Size x BM portfolios.

In conclusion, the analysis provided by this paper supports the conclusions of @fama_1996_multifactor when it comes to the 25 Size x BM portfolios. However, the difference between the FF model build on 25 Size x Beta portfolios and the model results of @fama_1996_multifactor are more significant. Overall, we conclude that the FF models perform better on both portfolios analysed in this paper than the CAPM models.




