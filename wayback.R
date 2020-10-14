urls <- c("https://choosealicense.com", 
          "https://creativecommons.org",
          "https://www.go-fair.org/fair-principles/",
          "https://www.python.org/dev/peps/pep-0008/",
          "https://google.github.io/styleguide/Rguide.html",
          "https://style.tidyverse.org/",
          "https://fivethirtyeight.com/features/we-used-broadband-data-we-shouldnt-have-heres-what-went-wrong/",
          "https://www.theatlantic.com/business/archive/2013/04/forget-excel-this-was-reinhart-and-rogoffs-biggest-mistake/275088/",
          "https://osf.io/qcvx9/",
          "https://github.com/ls88-openscienceconnector/LS-88-Assignments/blob/master/GRIM_Lab/grim_model_student.ipynb",
          "https://dataverse.harvard.edu/dataverse/ajps",
          "https://dataverse.harvard.edu/dataverse/isq",
          "https://github.com/fivethirtyeight/data",
          "https://www.kaggle.com/",
          "https://www.springernature.com/gp/authors/research-data/research-data-support",
          "https://swcarpentry.github.io/r-novice-gapminder/",
          "http://cogprints.org/8675/1/ReproducibleResearch.pdf",
          "http://www.gastonsanchez.com/stat159/",
          "http://stodden.net/icerm_report.pdf"
          )

devtools::install_github("hrbrmstr/wayback")

df <- c()

for (url in urls){
  x <- wayback::archive_available(url)
  print(x)
  df <- rbind(x, df)
  write_csv("archived_urls.csv", x = df)
}



