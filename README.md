# census-explorer-tutorial-2015-07

This respository contains installation instructions and slides for my July 2015 tutorial [Make a Census Explorer with Shiny!](http://www.meetup.com/R-ladies/events/223727059/). Before attempting to run the code in the slides, please do the following:

1. Download the latest version of R. As of this writing, the latest 
version is 3.2.1. You can see your current version by typing `R.Version()` from the R command line.
You can get the latest version of R by googling "download latest version
of R".

1. Download the latest version of RStudio. Google "download RStudio".

1. Create an account on [ShinyApps.io](http://www.shinyapps.io/)


1. Run the install.R file in this directory.

1. Get an API Key from the US Census Bureau [here](http://api.census.gov/data/key_signup.html). Then type:

```
library(acs)
api.key.install("<your census api key>")
```
