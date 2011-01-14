// Copyright (C) 2009 - 2010 - Francesco Menoncin
// Copyright (C) 2010 - DIGITEO - Michael Baudin
//
// This file must be used under the terms of the GPL (3.0):
// http://gplv3.fsf.org/

function [delta,gama,theta,rho,vega]=bsgreeks(S,K,r,T,sigma)
    //   Compute the Greeks for both a call and a put option in a Black and Scholes model.
    //
    // Calling Sequence
    //   [delta,gama,theta,rho,vega]=bsgreeks(S,K,r,T,sigma)
    //
    // Parameters
    //   S : a 1-by-1 matrix of doubles, current price of the underlying asset
    //   K : a 1-by-1 matrix of doubles, strike price of the option
    //   r : a 1-by-1 matrix of doubles, riskless interest rate (assumed to be constant until the maturity)
    //   T : a 1-by-1 matrix of doubles, time to maturity; it must be in the same time unit of measure as the riskless interest rate (if the riskless interest rate is annual, then an option with maturity of 3 months must have T=3/12)
    //   sigma : a 1-by-1 matrix of doubles, volatility of the underlying (log-) returns; it must be in the same time unit of measure as the riskless interest rate
    //   delta : a 2-by-1 matrix of doubles, the first derivative of the call (first term) and put (second term) option prices with respect to the underlying asset price
    //   gama : a 1-by-1 matrix of doubles, second derivative of the call (or put) option price with respect to the underlying asset price
    //   theta : a 2-by-1 matrix of doubles, vector containing the first derivative of the call (first term) and put (second term) option prices with respect to the time to maturity
    //   rho : a 2-by-1 matrix of doubles, vector containing the first derivative of the call (first term) and put (second term) option prices with respect to the riskless interest rate
    //   vega : a 1-by-1 matrix of doubles, first derivative of the call (or put) option price with respect to the standard deviation of the underlying (log-) returns
    //
    // Description
    // Computes the Greeks of both call and put option in a Black and Scholes framework
    //
    // Examples
    // // We compute the Greeks on both a call and put option 
    // // with: underlying price 25 euros, 
    // // strike price 25 euros,
    // // 0.001 (annual) riskless interest rate, 
    // // 3 month time to maturity (i.e. T=3/12), 
    // // and 0.2 (annual) volatility.
    // [D,G,Th,R,V]=bsgreeks(25,25,0.01,3/12,0.2)
    // Vexpected = 4.9727729;
    // Rexpected = [3.0550246;-3.1793699];
    // Thexpected = [2.1113101;1.8619344];
    // Gexpected = 4.9727729;
    // Dexpected = [0.5298926;-0.4701074];
    //
    // Authors
    // Copyright (C) 2009 - 2010 - Francesco Menoncin
    // Copyright (C) 2010 - DIGITEO - Michael Baudin
    //
    // Bibliography
    //   TODO
    //
    // See also
    //  bsoption
    //  bsimpvol

    d1=-((log(K/S)-(r+1/2*sigma^2)*T)/(sigma*sqrt(T)))
    d2=-((log(K/S)-(r-1/2*sigma^2)*T)/(sigma*sqrt(T)))
    delta=[cdfnor('PQ',d1,0,1);-cdfnor('PQ',-d1,0,1)]
    gama=S*sqrt(T)*exp(-d1^2/2)/sqrt(2*%pi)
    theta=[K*exp(-r*T)*(r*cdfnor('PQ',d2,0,1)+sigma*exp(-d2^2/2)/sqrt(2*%pi)/(2*sqrt(T)));...
    K*exp(-r*T)*(-r*cdfnor('PQ',-d2,0,1)+sigma*exp(-d2^2/2)/sqrt(2*%pi)/(2*sqrt(T)))]
    rho=[T*K*exp(-r*T)*cdfnor('PQ',d2,0,1);-T*K*exp(-r*T)*cdfnor('PQ',-d2,0,1)]
    vega=S*sqrt(T)*exp(-d1^2/2)/sqrt(2*%pi)
endfunction

