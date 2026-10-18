#Code for Git and GitHub in RStudio

#1. Make sure Git is installed and you have a GitHub account

#2. Configure Git
install.packages("usethis") 
library(usethis) 
use_git_config(user.name = "Your Name", user.email="youremail@mail.com")

#3. Tell R to use Git for version control
library(usethis)
use_git()

#4. Create GitHub token to link to RStudio-- DO NOT LOSE IT!
create_github_token() 

#5. Use your token, and start using GitHub
library(gitcreds) 
gitcreds_set() 

use_github() 


library(tidyverse)
fdata <- data.frame(iris)

fsubset <- fdata %>%
  filter(Species != "versicolor")

#LRM(sepa length ~ petal length)
model1 <- lm(Sepal.Length ~ Petal.Length, data=fsubset)


plot(fsubset$Petal.Length, fsubset$Sepal.Length,
     xlab = "Petal Length",
     ylab = "Sepal Length",
     main= "Regression Model for Viriginica and Setosa Species")
abline(model1, col="red")
