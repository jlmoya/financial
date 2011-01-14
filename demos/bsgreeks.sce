//
// This help file was automatically generated from bsgreeks.sci using help_from_sci().
// PLEASE DO NOT EDIT
//
mode(1)
//
// Demo of bsgreeks.sci
//

// We compute the Greeks on both a call and put option
// with: underlying price 25 euros,
// strike price 25 euros,
// 0.001 (annual) riskless interest rate,
// 3 month time to maturity (i.e. T=3/12),
// and 0.2 (annual) volatility.
[D,G,Th,R,V]=bsgreeks(25,25,0.01,3/12,0.2)
Vexpected = 4.9727729;
Rexpected = [3.0550246;-3.1793699];
Thexpected = [2.1113101;1.8619344];
Gexpected = 4.9727729;
Dexpected = [0.5298926;-0.4701074];
halt()   // Press return to continue
 
//========= E N D === O F === D E M O =========//
//
// Load this script into the editor
//
filename = "bsgreeks.sce";
dname = get_absolute_file_path(filename);
editor ( fullfile(dname,filename) );
