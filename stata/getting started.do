/* Lalonde analysis
Jack Blundell

Worked example of analysis of lalonde 1986 data.
Structure:
0. Setup
1. Load data
2. Rename and relabel variables
*/

*** 0. Setup

clear
set more off
				
// set working directory
cd "D:/stata"

// open log 
capture log close
log using "lecture1log", replace

*** 1. Load data

use "nsw.dta"

*** 2. Rename and relabel variables

describe

rename treat banana

rename banana treat

label variable treat "Treatment indicator"

des

// close log
log close