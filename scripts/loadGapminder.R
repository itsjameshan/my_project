# Load gapminder dataset.
getwd()
gapminder <- read.table("data/gapminder-FiveYearData.csv",
                        header=TRUE,
                        sep=",")
gapminder