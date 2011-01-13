Financial toolbox

Purpose
-------

The module is dedicated to finance. There are three main areas that are covered: 

 * risk measure and management, 
 * asset allocation, 
 * pricing.

For what concerns the risk measure, some functions are dedicated to the computation of Value at Risk (VaR) and Expected Shortfall (ES). Backtest is also implemented in order to check the goodness of such risk measures. Both VaR and ES are also computed in an Extreme Value Theory framework (EVT). Furthermore, it is possible to estimate the parameters of the EVT density function (through maximum likelihood). The Mean Excess Function for graphical study of an EVT distribution is also implemented.
The interest rate risk is faced by functions aimed at computing duration, convexity, and yield to maturity. Furthermore, Merton, Vasicek and Cox, Ingersoll and Ross interest rate models are implemented together with the estimation of their parameters. Parametric interpolation of the interest rate curve is possible through both Svennson’s and Nelson-Siegel’s models.
Finally, some technical analysis indicators are implemented: Bollinger bands, moving averages, Hurst index.

The asset allocation problem is faced by two functions which compute:

 * the optimal portfolio minimizing the variance of its return and 
 * the optimal portfolio minimizing the expected shortfall of its return. 
In both cases, the portfolios with and without a riskless asset and with and without short selling are computed.


Pricing problem is approached through functions aimed at: 

 * computing the spread on Interest Rate Swaps, 
 * computing the value of options in the Black and Scholes framework (with Greeks and implied volatility), 
 * simulating stochastic processes (through Euler discretization).

Features
--------

 * backtest : Apply the backtest to Expected Shortfall, Value at Risk and a Linear Spectral risk measure.
 * bollinger : Plots the historical prices, the Bollinger bands, and the b-percentage.
 * bsgreeks : Compute the Greeks for Black and Scholes put and call options.
 * bsimpvol : Compute the implied volatility in a Black and Scholes framework.
 * bsoption : Compute the value of both a call and a put option in a Black and Scholes framework.
 * cfr : Compare and merge two or more time series according to dates.
 * duration : Compute both duration and convexity of cash flows by using the yield-to-maturity.
 * esvarevt : Compute both Expected Shortfall and Value at Risk.
 * esvarlin : Compute Expected Shortfall, Value at Risk and a Linear Spectral risk measure on a set of assets.
 * esvaroptim : Compute the optimal portfolio minimizing the Expected Shortfall.
 * euler : Simulate the solution of a system of stochastic differential equation.
 * evt : Estimate the parameters of the Generalized Pareto Distribution.
 * gbm : Estimate the parameters of a Geometric Brownian Motion.
 * hedge : Compute the hedge ratio between an asset and a derivative on that asset.
 * hurst : Compute the Hurst index on historical prices.
 * interest : Estimate the parameters of three spot interest rate models (Merton - Vasicek - CIR).
 * irs : Compute both the spread and the value of the legs of a fix-for-floating Interest Rate Swap.
 * markowitz : Compute the optimal portfolio minimizing the variance.
 * mef : Compute and draw the Mean Excess Function.
 * movav : Compute and draw the moving average of a given time series.
 * nelson_siegel : Estimate the parameters for the Nelson Siegel model of spot interest rates.
 * svennson : Estimate the parameters for the Svennson model of spot interest rates.

TODO
----
 * Rename functions into "finance_*".
 * Shorten description of functions.
 * The help page of the svennson function is not properly formatted.
 * Create unit tests.

Authors
------

2009-2010 - Francesco Menoncin
2010 - DIGITEO - Michaël Baudin

Licence
-------

This toolbox is distributed under the GPL (3.0).


