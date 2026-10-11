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

