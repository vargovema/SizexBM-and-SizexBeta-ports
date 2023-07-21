# Replicating the Fama French 3-Factor Model with Updated Data up to December 2018

This project presents new findings regarding the pricing power of the Fama French (FF) 3-factor model by reproducing the methodology used in Table I of the FF 1996 paper titled 'Multifactor explanations of asset pricing anomalies.' This study aims to incorporate updated evidence by utilizing the 25 Size x Book-to-Market (BM) portfolios and the 25 Size x Beta portfolios, thus extending the sample period of analysis up to December 2018.

## 25 Size x BM portfolios

### Summary statistics for portfolio returns and standard deviations

The summary statistic for 25 Size x BM portfolios is reported in Table 1. From the results, we see that the mean portfolio returns are as per expectation provided by Fama and French (1996). The average portfolio returns are quite similar to the ones reported by Fama and French (1996) and they also follow similar trends. For instance, we see that for a given size (market capitalization), the expected monthly excess returns tend to be higher for higher book-to-market values. Moreover, we see that smaller market caps tend to outperform higher market caps, however, the pattern does not hold for companies with low book-to-market values. When it comes to volatility, we see that low book-to-market stocks tend to have higher volatility while stocks with bigger market capitalization tend to have lower volatility. 

<figcaption align = "center"><b> Table 1: Summary statistics of the 25 Size x BM portfolio monthly returns.</b></figcaption> 
<br />
<table style="text-align:center"><caption><strong>Size: Small</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.251</td><td>7.858</td><td>-34.817</td><td>38.476</td></tr>
<tr><td style="text-align:left">2</td><td>0.763</td><td>6.876</td><td>-31.549</td><td>40.622</td></tr>
<tr><td style="text-align:left">3</td><td>0.763</td><td>5.948</td><td>-29.365</td><td>27.581</td></tr>
<tr><td style="text-align:left">4</td><td>0.976</td><td>5.660</td><td>-29.490</td><td>27.264</td></tr>
<tr><td style="text-align:left">High</td><td>1.062</td><td>5.967</td><td>-29.469</td><td>33.296</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 2</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.486</td><td>7.119</td><td>-33.327</td><td>27.746</td></tr>
<tr><td style="text-align:left">2</td><td>0.750</td><td>5.946</td><td>-32.258</td><td>25.540</td></tr>
<tr><td style="text-align:left">3</td><td>0.854</td><td>5.400</td><td>-29.002</td><td>25.756</td></tr>
<tr><td style="text-align:left">4</td><td>0.888</td><td>5.224</td><td>-25.636</td><td>27.006</td></tr>
<tr><td style="text-align:left">High</td><td>0.953</td><td>5.978</td><td>-29.437</td><td>29.131</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 3</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.488</td><td>6.538</td><td>-30.326</td><td>24.177</td></tr>
<tr><td style="text-align:left">2</td><td>0.774</td><td>5.406</td><td>-29.652</td><td>24.386</td></tr>
<tr><td style="text-align:left">3</td><td>0.731</td><td>4.962</td><td>-24.938</td><td>21.358</td></tr>
<tr><td style="text-align:left">4</td><td>0.853</td><td>4.880</td><td>-23.631</td><td>22.822</td></tr>
<tr><td style="text-align:left">High</td><td>0.982</td><td>5.609</td><td>-26.719</td><td>28.624</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 4</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.611</td><td>5.839</td><td>-26.540</td><td>25.792</td></tr>
<tr><td style="text-align:left">2</td><td>0.599</td><td>5.079</td><td>-29.429</td><td>19.865</td></tr>
<tr><td style="text-align:left">3</td><td>0.680</td><td>4.926</td><td>-25.556</td><td>23.434</td></tr>
<tr><td style="text-align:left">4</td><td>0.822</td><td>4.758</td><td>-22.483</td><td>23.780</td></tr>
<tr><td style="text-align:left">High</td><td>0.808</td><td>5.643</td><td>-24.440</td><td>27.318</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: Big</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.494</td><td>4.593</td><td>-22.239</td><td>21.829</td></tr>
<tr><td style="text-align:left">2</td><td>0.525</td><td>4.377</td><td>-23.020</td><td>16.111</td></tr>
<tr><td style="text-align:left">3</td><td>0.536</td><td>4.247</td><td>-22.309</td><td>18.274</td></tr>
<tr><td style="text-align:left">4</td><td>0.479</td><td>4.586</td><td>-27.096</td><td>19.182</td></tr>
<tr><td style="text-align:left">High</td><td>0.636</td><td>5.338</td><td>-19.592</td><td>23.616</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

Table 1 was created using the package stargazer by Hlavac (2018).

### Estimates of FF alphas, factor loadings, and regression R-squared values

The results of OLS regression models built on the time-series that track 25 Size x BM portfolio monthly returns can be found in Table 2. From the results, we observe patterns that are consistent with the models built by Fama and French (1996). First of all, we see that all the factor loadings carry high significance levels that are above 99%. Furthermore, they follow a similar pattern since the bigger the size of market capitalization, the smaller the factor loading of the SMB (small minus big) factor. The SMB factor is positive for almost all the stocks except for big market caps where the factor has a negative loading. The emerging pattern is explained by Fama and French (1996) who suggest that "[s]tocks with low long-term past returns (losers) tend to have positive SMB and HML slopes (they are smaller and relatively distressed) and higher future average returns" (p.56). When it comes to HML (high minus low) factor loading, we see that they are negative for all the low book-to-market equities. Otherwise, the stocks have a positive HML factor loading that tends to increase for higher market caps. Concerning the model alphas, many of them do not carry statistical significance. Nevertheless, Table 7 suggests the average to be around -0.015 which is in accordance with the expectation of Fama and French (1996) that the alpha values are close to 0 on average. Concerning the R-squared values, all of them are above 80% and they tend to be higher for smaller market caps.

<figcaption align = "center"><b>Table 2: Three-Factor time-series OLS regressions of 25 Size x BM portfolios.</b></figcaption>

<table style="text-align:center"><caption><strong>Three-Factor time-series OLS regressions of 25 Size x BM portfolios.</strong></caption>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Small</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.094<sup>***</sup> (0.022)</td><td>0.975<sup>***</sup> (0.017)</td><td>0.937<sup>***</sup> (0.013)</td><td>0.878<sup>***</sup> (0.012)</td><td>0.957<sup>***</sup> (0.013)</td></tr>
<tr><td style="text-align:left">SMB</td><td>1.366<sup>***</sup> (0.031)</td><td>1.315<sup>***</sup> (0.023)</td><td>1.079<sup>***</sup> (0.018)</td><td>1.063<sup>***</sup> (0.018)</td><td>1.077<sup>***</sup> (0.018)</td></tr>
<tr><td style="text-align:left">HML</td><td>-0.294<sup>***</sup> (0.034)</td><td>0.040 (0.025)</td><td>0.297<sup>***</sup> (0.019)</td><td>0.444<sup>***</sup> (0.019)</td><td>0.677<sup>***</sup> (0.020)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.496<sup>***</sup> (0.092)</td><td>-0.021 (0.069)</td><td>-0.036 (0.052)</td><td>0.163<sup>***</sup> (0.052)</td><td>0.130<sup>**</sup> (0.054)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.913</td><td>0.936</td><td>0.950</td><td>0.946</td><td>0.947</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.325</td><td>1.750</td><td>1.327</td><td>1.320</td><td>1.379</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 2</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.131<sup>***</sup> (0.016)</td><td>1.018<sup>***</sup> (0.013)</td><td>0.967<sup>***</sup> (0.013)</td><td>0.964<sup>***</sup> (0.012)</td><td>1.073<sup>***</sup> (0.013)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.993<sup>***</sup> (0.022)</td><td>0.883<sup>***</sup> (0.019)</td><td>0.765<sup>***</sup> (0.019)</td><td>0.710<sup>***</sup> (0.017)</td><td>0.875<sup>***</sup> (0.018)</td></tr>
<tr><td style="text-align:left">HML</td><td>-0.384<sup>***</sup> (0.024)</td><td>0.116<sup>***</sup> (0.020)</td><td>0.383<sup>***</sup> (0.021)</td><td>0.567<sup>***</sup> (0.018)</td><td>0.784<sup>***</sup> (0.019)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.174<sup>***</sup> (0.066)</td><td>0.009 (0.056)</td><td>0.077 (0.056)</td><td>0.064 (0.049)</td><td>-0.031 (0.053)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.946</td><td>0.944</td><td>0.931</td><td>0.943</td><td>0.951</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.659</td><td>1.412</td><td>1.419</td><td>1.245</td><td>1.330</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 3</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.104<sup>***</sup> (0.014)</td><td>1.037<sup>***</sup> (0.015)</td><td>0.990<sup>***</sup> (0.015)</td><td>0.977<sup>***</sup> (0.014)</td><td>1.078<sup>***</sup> (0.017)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.736<sup>***</sup> (0.020)</td><td>0.543<sup>***</sup> (0.021)</td><td>0.431<sup>***</sup> (0.021)</td><td>0.415<sup>***</sup> (0.020)</td><td>0.555<sup>***</sup> (0.025)</td></tr>
<tr><td style="text-align:left">HML</td><td>-0.434<sup>***</sup> (0.022)</td><td>0.168<sup>***</sup> (0.023)</td><td>0.422<sup>***</sup> (0.023)</td><td>0.596<sup>***</sup> (0.022)</td><td>0.790<sup>***</sup> (0.027)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.089 (0.059)</td><td>0.076 (0.063)</td><td>-0.002 (0.062)</td><td>0.073 (0.061)</td><td>0.059 (0.073)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.948</td><td>0.914</td><td>0.899</td><td>0.902</td><td>0.892</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.496</td><td>1.588</td><td>1.577</td><td>1.532</td><td>1.849</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 4</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.079<sup>***</sup> (0.014)</td><td>1.067<sup>***</sup> (0.016)</td><td>1.046<sup>***</sup> (0.017)</td><td>1.005<sup>***</sup> (0.016)</td><td>1.165<sup>***</sup> (0.020)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.392<sup>***</sup> (0.020)</td><td>0.198<sup>***</sup> (0.023)</td><td>0.176<sup>***</sup> (0.024)</td><td>0.201<sup>***</sup> (0.022)</td><td>0.263<sup>***</sup> (0.028)</td></tr>
<tr><td style="text-align:left">HML</td><td>-0.408<sup>***</sup> (0.022)</td><td>0.188<sup>***</sup> (0.025)</td><td>0.424<sup>***</sup> (0.025)</td><td>0.552<sup>***</sup> (0.024)</td><td>0.789<sup>***</sup> (0.030)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.109<sup>*</sup> (0.060)</td><td>-0.050 (0.068)</td><td>-0.030 (0.069)</td><td>0.086 (0.065)</td><td>-0.100 (0.082)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.934</td><td>0.886</td><td>0.873</td><td>0.881</td><td>0.866</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.506</td><td>1.719</td><td>1.758</td><td>1.642</td><td>2.072</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Big</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.967<sup>***</sup> (0.010)</td><td>0.992<sup>***</sup> (0.013)</td><td>0.952<sup>***</sup> (0.016)</td><td>1.031<sup>***</sup> (0.015)</td><td>1.120<sup>***</sup> (0.022)</td></tr>
<tr><td style="text-align:left">SMB</td><td>-0.237<sup>***</sup> (0.015)</td><td>-0.211<sup>***</sup> (0.018)</td><td>-0.258<sup>***</sup> (0.022)</td><td>-0.216<sup>***</sup> (0.021)</td><td>-0.108<sup>***</sup> (0.031)</td></tr>
<tr><td style="text-align:left">HML</td><td>-0.377<sup>***</sup> (0.016)</td><td>0.086<sup>***</sup> (0.020)</td><td>0.302<sup>***</sup> (0.024)</td><td>0.644<sup>***</sup> (0.022)</td><td>0.810<sup>***</sup> (0.034)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.169<sup>***</sup> (0.044)</td><td>0.032 (0.054)</td><td>0.003 (0.066)</td><td>-0.214<sup>***</sup> (0.061)</td><td>-0.179<sup>*</sup> (0.093)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.942</td><td>0.903</td><td>0.848</td><td>0.887</td><td>0.807</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.108</td><td>1.365</td><td>1.658</td><td>1.543</td><td>2.350</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

Table 2 was created using the package stargazer by Hlavac (2018).

### Discussing how the results support or weaken the evidence provided by FF (1996) 

Overall, the findings of the analysis of the 25 Size x BM portfolios support the findings of Fama and French (1996) which means that their conclusions hold with more recent market data. Moreover, Table 7 suggests that the average R-squared value of the implemented FF model is around 91.2% which is quite close to the average R-squared value of 93% provided in the research by Fama and French (1996). Additionally, the alpha values tend to be negative for smaller book-to-market equities and positive for higher book-to-market equities, similar to the observation of Fama and French (1996).

### Evidence and discussion on whether or not the FF model performs better than the CAPM

Based on the regression output in Table 3, we see that the CAPM model has higher loading of the market premium factor. However, the CAPM performs worse than the three-factor FF model since we see that the R-squared values are significantly lower. More specifically, the R-squared values are around 16.2% lower on average for CAPM models as depicted in Table 7. 

<figcaption align = "center"><b>Table 3: CAPM of the 25 Size x BM portfolios.</b></figcaption>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Small</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.422<sup>***</sup> (0.042)</td><td>1.238<sup>***</sup> (0.037)</td><td>1.109<sup>***</sup> (0.030)</td><td>1.023<sup>***</sup> (0.030)</td><td>1.066<sup>***</sup> (0.033)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.478<sup>**</sup> (0.186)</td><td>0.129 (0.164)</td><td>0.195 (0.134)</td><td>0.452<sup>***</sup> (0.135)</td><td>0.516<sup>***</sup> (0.145)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.631</td><td>0.625</td><td>0.669</td><td>0.629</td><td>0.615</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>4.776</td><td>4.216</td><td>3.423</td><td>3.450</td><td>3.705</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 2</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.398<sup>***</sup> (0.032)</td><td>1.179<sup>***</sup> (0.026)</td><td>1.060<sup>***</sup> (0.024)</td><td>1.016<sup>***</sup> (0.024)</td><td>1.123<sup>***</sup> (0.030)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.230 (0.141)</td><td>0.145 (0.114)</td><td>0.311<sup>***</sup> (0.107)</td><td>0.367<sup>***</sup> (0.106)</td><td>0.378<sup>***</sup> (0.132)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.743</td><td>0.758</td><td>0.743</td><td>0.729</td><td>0.680</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>3.611</td><td>2.926</td><td>2.741</td><td>2.721</td><td>3.383</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 3</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.326<sup>***</sup> (0.026)</td><td>1.120<sup>***</sup> (0.020)</td><td>1.009<sup>***</sup> (0.020)</td><td>0.964<sup>***</sup> (0.021)</td><td>1.062<sup>***</sup> (0.028)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.192<sup>*</sup> (0.116)</td><td>0.200<sup>**</sup> (0.088)</td><td>0.214<sup>**</sup> (0.087)</td><td>0.359<sup>***</sup> (0.095)</td><td>0.438<sup>***</sup> (0.122)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.792</td><td>0.827</td><td>0.797</td><td>0.752</td><td>0.691</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.981</td><td>2.249</td><td>2.237</td><td>2.433</td><td>3.120</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 4</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>1.226<sup>***</sup> (0.020)</td><td>1.077<sup>***</sup> (0.016)</td><td>1.012<sup>***</sup> (0.019)</td><td>0.956<sup>***</sup> (0.020)</td><td>1.089<sup>***</sup> (0.027)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.018 (0.088)</td><td>0.047 (0.073)</td><td>0.161<sup>*</sup> (0.083)</td><td>0.332<sup>***</sup> (0.088)</td><td>0.249<sup>**</sup> (0.117)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.850</td><td>0.866</td><td>0.814</td><td>0.777</td><td>0.718</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.261</td><td>1.862</td><td>2.124</td><td>2.246</td><td>3.001</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Big</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.981<sup>***</sup> (0.014)</td><td>0.935<sup>***</sup> (0.013)</td><td>0.849<sup>***</sup> (0.018)</td><td>0.881<sup>***</sup> (0.022)</td><td>0.964<sup>***</sup> (0.029)</td></tr>
<tr><td style="text-align:left">Constant</td><td>-0.009 (0.062)</td><td>0.045 (0.060)</td><td>0.100 (0.079)</td><td>0.028 (0.096)</td><td>0.142 (0.127)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.879</td><td>0.879</td><td>0.771</td><td>0.711</td><td>0.629</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.602</td><td>1.526</td><td>2.034</td><td>2.469</td><td>3.255</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

Table 3 was created using the package stargazer by Hlavac (2018).

## 25 Size x Beta portfolios

### Reporting summary statistics for portfolio returns and standard deviations

The summary statistic for 25 Size x Beta portfolios is reported in Table 4. From the summary statistics in Table 4, we again see that smaller market caps tend to outperform bigger market caps when it comes to the average monthly excess returns. However, as the book-to-market equity is getting higher, we do not see the same pattern as with 25 Size x BM portfolios since the returns initially start to increase for higher book-to-market values and then they start decreasing. Regarding the volatility of the  25 Size x Beta portfolios, Table 4 suggests that the beta portfolios are less volatile than the 25 Size x BM portfolios. Moreover, the volatility tends to increase for higher book-to-market equities. 

<figcaption align = "center"><b>Table 4: Summary statistics of the 25 Size x Beta portfolio monthly returns.</b></figcaption>
<br />
<table style="text-align:center"><caption><strong>Size: Small</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.723</td><td>4.380</td><td>-23.622</td><td>23.026</td></tr>
<tr><td style="text-align:left">2</td><td>0.867</td><td>5.059</td><td>-28.687</td><td>23.461</td></tr>
<tr><td style="text-align:left">3</td><td>0.877</td><td>5.861</td><td>-28.742</td><td>28.595</td></tr>
<tr><td style="text-align:left">4</td><td>0.944</td><td>6.436</td><td>-32.530</td><td>31.014</td></tr>
<tr><td style="text-align:left">High</td><td>0.724</td><td>8.117</td><td>-34.003</td><td>39.632</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 2</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.694</td><td>4.284</td><td>-21.158</td><td>18.241</td></tr>
<tr><td style="text-align:left">2</td><td>0.850</td><td>4.733</td><td>-25.675</td><td>23.555</td></tr>
<tr><td style="text-align:left">3</td><td>0.926</td><td>5.418</td><td>-29.154</td><td>25.873</td></tr>
<tr><td style="text-align:left">4</td><td>0.861</td><td>6.146</td><td>-30.654</td><td>24.883</td></tr>
<tr><td style="text-align:left">High</td><td>0.673</td><td>7.830</td><td>-34.975</td><td>31.963</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 3</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.670</td><td>3.810</td><td>-17.049</td><td>21.075</td></tr>
<tr><td style="text-align:left">2</td><td>0.849</td><td>4.567</td><td>-27.000</td><td>19.498</td></tr>
<tr><td style="text-align:left">3</td><td>0.811</td><td>5.194</td><td>-28.211</td><td>20.015</td></tr>
<tr><td style="text-align:left">4</td><td>0.764</td><td>5.920</td><td>-30.340</td><td>26.093</td></tr>
<tr><td style="text-align:left">High</td><td>0.694</td><td>7.547</td><td>-32.963</td><td>32.036</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: 4</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.660</td><td>3.820</td><td>-17.625</td><td>20.305</td></tr>
<tr><td style="text-align:left">2</td><td>0.761</td><td>4.562</td><td>-26.165</td><td>20.918</td></tr>
<tr><td style="text-align:left">3</td><td>0.720</td><td>5.093</td><td>-26.434</td><td>21.481</td></tr>
<tr><td style="text-align:left">4</td><td>0.587</td><td>5.758</td><td>-28.415</td><td>17.779</td></tr>
<tr><td style="text-align:left">High</td><td>0.726</td><td>7.493</td><td>-31.292</td><td>34.448</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

<table style="text-align:center"><caption><strong>Size: Big</strong></caption>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Statistic</td><td>Mean</td><td>St. Dev.</td><td>Min</td><td>Max</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">Low</td><td>0.495</td><td>3.568</td><td>-13.418</td><td>18.729</td></tr>
<tr><td style="text-align:left">2</td><td>0.536</td><td>4.196</td><td>-21.298</td><td>14.597</td></tr>
<tr><td style="text-align:left">3</td><td>0.503</td><td>4.813</td><td>-24.354</td><td>20.370</td></tr>
<tr><td style="text-align:left">4</td><td>0.493</td><td>5.642</td><td>-25.526</td><td>20.125</td></tr>
<tr><td style="text-align:left">High</td><td>0.409</td><td>7.055</td><td>-29.837</td><td>20.821</td></tr>
<tr><td colspan="5" style="border-bottom: 1px solid black"></td></tr></table>

Table 4 was created using the package stargazer by Hlavac (2018).

### Reporting estimates of FF alphas, factor loadings, and regression R-squared values

The results of OLS regression models build based on the time-series that track 25 Size x Beta portfolio monthly returns can be observed in Table 5. The results suggest that most of the factor loadings tend to carry high significance levels above 99%. However, the HML factor seems to be not significant for market caps of big size and book-to-market values of 3 and 4 (see the last table in Table 5). Moreover, the HML factor loadings for high book-to-market values of sizes 3 and 4 are not significant as well. Concerning the SMB factor, it seems to not carry significance only for low book-to-market equity of size 4 and 4 book-to-market value of size big. The R-squared values of the models in Table 5 tend to be lower than those in Table 2. Nevertheless, the emerging pattern seems to be quite different since the R-squared values tend to increase for higher book-to-market equities, however, the pattern does not hold for big market caps. When it comes to the alpha values, approximately half of them do not carry any significance. Moreover, Table 7 suggests that the alphas are positive on average which is not the case for 25 Size x BM portfolios. Also, all the factor loadings tend to be quite similar for both portfolios with market premium and HML carrying low average loadings for 25 Size x Beta portfolios as depicted in Table 7.

<figcaption align = "center"><b>Table 5: Three-Factor time-series OLS regressions of the 25 Size x Beta portfolios.</b></figcaption>

<table style="text-align:center"><caption><strong>Three-Factor time-series OLS regressions of the 25 Size x Beta portfolios.</strong></caption>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Small</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.667<sup>***</sup> (0.015)</td><td>0.794<sup>***</sup> (0.015)</td><td>0.886<sup>***</sup> (0.015)</td><td>1.033<sup>***</sup> (0.014)</td><td>1.195<sup>***</sup> (0.020)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.774<sup>***</sup> (0.021)</td><td>0.894<sup>***</sup> (0.021)</td><td>1.115<sup>***</sup> (0.021)</td><td>1.142<sup>***</sup> (0.020)</td><td>1.506<sup>***</sup> (0.029)</td></tr>
<tr><td style="text-align:left">HML</td><td>0.411<sup>***</sup> (0.023)</td><td>0.457<sup>***</sup> (0.022)</td><td>0.436<sup>***</sup> (0.022)</td><td>0.373<sup>***</sup> (0.021)</td><td>0.142<sup>***</sup> (0.031)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.089 (0.062)</td><td>0.128<sup>**</sup> (0.061)</td><td>0.051 (0.061)</td><td>0.059 (0.058)</td><td>-0.245<sup>***</sup> (0.085)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.874</td><td>0.906</td><td>0.931</td><td>0.948</td><td>0.930</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.557</td><td>1.554</td><td>1.540</td><td>1.467</td><td>2.149</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 2</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.724<sup>***</sup> (0.017)</td><td>0.836<sup>***</sup> (0.013)</td><td>0.979<sup>***</sup> (0.014)</td><td>1.086<sup>***</sup> (0.014)</td><td>1.331<sup>***</sup> (0.018)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.585<sup>***</sup> (0.023)</td><td>0.673<sup>***</sup> (0.019)</td><td>0.736<sup>***</sup> (0.020)</td><td>0.894<sup>***</sup> (0.020)</td><td>1.151<sup>***</sup> (0.026)</td></tr>
<tr><td style="text-align:left">HML</td><td>0.416<sup>***</sup> (0.025)</td><td>0.422<sup>***</sup> (0.021)</td><td>0.374<sup>***</sup> (0.022)</td><td>0.333<sup>***</sup> (0.022)</td><td>0.090<sup>***</sup> (0.028)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.067 (0.069)</td><td>0.146<sup>***</sup> (0.056)</td><td>0.151<sup>**</sup> (0.059)</td><td>0.012 (0.060)</td><td>-0.276<sup>***</sup> (0.076)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.833</td><td>0.910</td><td>0.923</td><td>0.939</td><td>0.940</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.753</td><td>1.424</td><td>1.504</td><td>1.523</td><td>1.929</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 3</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.731<sup>***</sup> (0.017)</td><td>0.889<sup>***</sup> (0.014)</td><td>1.001<sup>***</sup> (0.015)</td><td>1.121<sup>***</sup> (0.017)</td><td>1.346<sup>***</sup> (0.021)</td></tr>
<tr><td style="text-align:left">SMB</td><td>0.239<sup>***</sup> (0.024)</td><td>0.437<sup>***</sup> (0.020)</td><td>0.540<sup>***</sup> (0.021)</td><td>0.655<sup>***</sup> (0.024)</td><td>0.897<sup>***</sup> (0.029)</td></tr>
<tr><td style="text-align:left">HML</td><td>0.380<sup>***</sup> (0.026)</td><td>0.284<sup>***</sup> (0.021)</td><td>0.308<sup>***</sup> (0.023)</td><td>0.302<sup>***</sup> (0.025)</td><td>-0.017 (0.032)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.123<sup>*</sup> (0.071)</td><td>0.211<sup>***</sup> (0.058)</td><td>0.087 (0.062)</td><td>-0.044 (0.070)</td><td>-0.175<sup>**</sup> (0.087)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.776</td><td>0.896</td><td>0.910</td><td>0.912</td><td>0.916</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.808</td><td>1.475</td><td>1.563</td><td>1.763</td><td>2.198</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 4</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.773<sup>***</sup> (0.019)</td><td>0.969<sup>***</sup> (0.015)</td><td>1.071<sup>***</sup> (0.016)</td><td>1.190<sup>***</sup> (0.018)</td><td>1.400<sup>***</sup> (0.025)</td></tr>
<tr><td style="text-align:left">SMB</td><td>-0.001 (0.026)</td><td>0.153<sup>***</sup> (0.021)</td><td>0.222<sup>***</sup> (0.022)</td><td>0.308<sup>***</sup> (0.025)</td><td>0.640<sup>***</sup> (0.036)</td></tr>
<tr><td style="text-align:left">HML</td><td>0.316<sup>***</sup> (0.028)</td><td>0.269<sup>***</sup> (0.023)</td><td>0.213<sup>***</sup> (0.024)</td><td>0.217<sup>***</sup> (0.027)</td><td>-0.036 (0.039)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.162<sup>**</sup> (0.078)</td><td>0.145<sup>**</sup> (0.063)</td><td>0.056 (0.066)</td><td>-0.157<sup>**</sup> (0.075)</td><td>-0.112 (0.105)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.736</td><td>0.877</td><td>0.894</td><td>0.892</td><td>0.874</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.968</td><td>1.601</td><td>1.659</td><td>1.893</td><td>2.665</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Big</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.764<sup>***</sup> (0.016)</td><td>0.949<sup>***</sup> (0.013)</td><td>1.074<sup>***</sup> (0.014)</td><td>1.203<sup>***</sup> (0.019)</td><td>1.365<sup>***</sup> (0.031)</td></tr>
<tr><td style="text-align:left">SMB</td><td>-0.358<sup>***</sup> (0.023)</td><td>-0.251<sup>***</sup> (0.018)</td><td>-0.166<sup>***</sup> (0.020)</td><td>0.036 (0.026)</td><td>0.137<sup>***</sup> (0.044)</td></tr>
<tr><td style="text-align:left">HML</td><td>0.161<sup>***</sup> (0.024)</td><td>0.055<sup>***</sup> (0.019)</td><td>0.013 (0.021)</td><td>0.026 (0.028)</td><td>-0.149<sup>***</sup> (0.047)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.125<sup>*</sup> (0.067)</td><td>0.083 (0.053)</td><td>-0.018 (0.058)</td><td>-0.140<sup>*</sup> (0.077)</td><td>-0.271<sup>**</sup> (0.129)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.778</td><td>0.898</td><td>0.907</td><td>0.880</td><td>0.786</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>1.684</td><td>1.344</td><td>1.470</td><td>1.957</td><td>3.272</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

Table 5 was created using the package stargazer by Hlavac (2018).

### Discussing how the results support or weaken the evidence provided by FF (1996) 

Fama and French (1996) suggest that the average R-squared values should be around 93%, however, that does not hold for 25 Size x Beta portfolios since the average of R-squared values is around 88.3% as shown in Table 7. As Fama and French (1996) imply: "Since the average HML return is strongly positive (about 6 percent per year), these negative loadings, which are similar to the HML slopes for low-BE/ME stocks, imply lower expected returns" (p.56). However, we see that the factor loadings of the HML factor are positive for low book-to-market equities which contradicts the evidence provided by Fama and French (1996). This could imply that low book-to-market equities do not have lower expected returns in 25 Size x Beta portfolios. Regarding the alpha values, Table 7 shows that the average is around 0.01 which is following the expectation of Fama and French (1996) who suggest that the average should be close to 0.

### Evidence and discussion on whether or not the FF model performs better than the CAPM

The results of the CAPM model can be found in Table 6 where we see that CAPM performs worse than the FF model by looking at the R-squared values. However, the partial reason for this is the fact that due to the formula for R-squared value, it is higher by default for models with more explanatory variables. Nevertheless, the difference in the performance of the CAPM and FF models for 25 Size x Beta portfolios is not as pronounced as in the difference between the CAPM and FF models for 25 Size x BM portfolios.

<figcaption align = "center"><b>Table 6: CAPM of the 25 Size x Beta portfolios.</b></figcaption>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Small</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.757<sup>***</sup> (0.025)</td><td>0.901<sup>***</sup> (0.028)</td><td>1.043<sup>***</sup> (0.032)</td><td>1.205<sup>***</sup> (0.032)</td><td>1.480<sup>***</sup> (0.043)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.335<sup>***</sup> (0.111)</td><td>0.405<sup>***</sup> (0.123)</td><td>0.342<sup>**</sup> (0.143)</td><td>0.327<sup>**</sup> (0.143)</td><td>-0.035 (0.190)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.576</td><td>0.612</td><td>0.610</td><td>0.675</td><td>0.640</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.853</td><td>3.156</td><td>3.665</td><td>3.670</td><td>4.872</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 2</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.775<sup>***</sup> (0.023)</td><td>0.905<sup>***</sup> (0.023)</td><td>1.068<sup>***</sup> (0.024)</td><td>1.214<sup>***</sup> (0.027)</td><td>1.552<sup>***</sup> (0.034)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.296<sup>***</sup> (0.102)</td><td>0.386<sup>***</sup> (0.100)</td><td>0.378<sup>***</sup> (0.106)</td><td>0.239<sup>**</sup> (0.119)</td><td>-0.122 (0.151)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.631</td><td>0.704</td><td>0.749</td><td>0.752</td><td>0.757</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.603</td><td>2.576</td><td>2.714</td><td>3.061</td><td>3.861</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 3</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.717<sup>***</sup> (0.019)</td><td>0.931<sup>***</sup> (0.018)</td><td>1.061<sup>***</sup> (0.020)</td><td>1.206<sup>***</sup> (0.023)</td><td>1.532<sup>***</sup> (0.030)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.303<sup>***</sup> (0.084)</td><td>0.371<sup>***</sup> (0.079)</td><td>0.267<sup>***</sup> (0.090)</td><td>0.146 (0.104)</td><td>-0.091 (0.134)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.682</td><td>0.801</td><td>0.804</td><td>0.799</td><td>0.794</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.150</td><td>2.037</td><td>2.300</td><td>2.655</td><td>3.426</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: 4</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.720<sup>***</sup> (0.019)</td><td>0.956<sup>***</sup> (0.016)</td><td>1.082<sup>***</sup> (0.016)</td><td>1.218<sup>***</sup> (0.019)</td><td>1.537<sup>***</sup> (0.029)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.291<sup>***</sup> (0.084)</td><td>0.271<sup>***</sup> (0.070)</td><td>0.166<sup>**</sup> (0.072)</td><td>-0.037 (0.084)</td><td>-0.061 (0.127)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.685</td><td>0.846</td><td>0.869</td><td>0.862</td><td>0.811</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.144</td><td>1.789</td><td>1.845</td><td>2.144</td><td>3.264</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

<table style="text-align:center"><tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"></td><td colspan="5">Size: Big</td></tr>
<tr><td></td><td colspan="5" style="border-bottom: 1px solid black"></td></tr>
<tr><td style="text-align:left"></td><td>Low</td><td>2</td><td>3</td><td>4</td><td>High</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">RM-RF</td><td>0.664<sup>***</sup> (0.018)</td><td>0.889<sup>***</sup> (0.014)</td><td>1.038<sup>***</sup> (0.014)</td><td>1.206<sup>***</sup> (0.017)</td><td>1.418<sup>***</sup> (0.029)</td></tr>
<tr><td style="text-align:left">Constant</td><td>0.154<sup>*</sup> (0.080)</td><td>0.080 (0.060)</td><td>-0.029 (0.060)</td><td>-0.125 (0.076)</td><td>-0.318<sup>**</sup> (0.130)</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left">R<sup>2</sup></td><td>0.668</td><td>0.864</td><td>0.897</td><td>0.880</td><td>0.779</td></tr>
<tr><td style="text-align:left">Residual Std. Error</td><td>2.057</td><td>1.547</td><td>1.547</td><td>1.957</td><td>3.322</td></tr>
<tr><td colspan="6" style="border-bottom: 1px solid black"></td></tr><tr><td style="text-align:left"><em>Note:</em></td><td colspan="5" style="text-align:right"><sup>*</sup>p<0.1; <sup>**</sup>p<0.05; <sup>***</sup>p<0.01</td></tr>
</table>

Table 6 was created using the package stargazer by Hlavac (2018).

In conclusion, the analysis provided by this paper supports the conclusions of Fama and French (1996) when it comes to the 25 Size x BM portfolios. However, the difference between the FF model build on 25 Size x Beta portfolios and the model results of Fama and French (1996) are more significant. Overall, we conclude that the FF models perform better on both portfolios analysed in this paper than the CAPM models.

<figcaption align = "center"><b>Table 7: Comparison of the FF and CAPM models built on 25 Size x BM and Betas portfolios. The comparison table reports the average values of factor loadings, alphas and R-square values.</b></figcaption>


|          | (Intercept)| RM-RF|   SMB|   HML| R-squared|
|:---------|-----------:|-----:|-----:|-----:|---------:|
|FF BM     |      -0.015| 1.024| 0.520| 0.287|     0.912|
|CAPM BM   |       0.155| 1.083|      |      |     0.743|
|FF Beta   |       0.010| 1.015| 0.518| 0.232|     0.883|
|CAPM Beta |       0.157| 1.083|      |      |     0.750|


## References

Fama, Eugene F., and Kenneth R. French. 1996. “Multifactor Explanations of Asset Pricing Anomalies.” The Journal of Finance 51: 55–84. https://doi.org/10.2307/2329302.
<br />
Hlavac, Marek. 2018. Stargazer: Well-Formatted Regression and Summary Statistics Tables. Bratislava, Slovakia: Central European Labour Studies Institute (CELSI). https://CRAN.R-project.org/package= stargazer.

## Author

Ema Vargova
