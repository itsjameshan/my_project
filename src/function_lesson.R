# Define a new function
fahr_to_kelvin <- function(fahr){
 kelvin <-  ((fahr - 32 )*(5/9))+273.15  
 return(kelvin)
} 

kelvin_to_celsius <- function(kelvin){
  kelvin -273.15
}

gapminder  <- read.csv("data/gapminder-FiveYearData.csv",stringsAsFactors = FALSE)
calGDP <-  function(df){
#takes a dataframe with at leasst population size
  #and per captia GDP as columns
  #returs the same dataframe with a new column
  df$GDP <- df$pop*df$gdpPercap
  return(df)
}