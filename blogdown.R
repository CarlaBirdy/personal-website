####################################################################################
#
# Create personal website using blogdown
#    By: Dr Carla Archibald
#    Created on: 29/03/2022
#     
####################################################################################

# wd, data & packages #####
#install.packages("blogdown") # install the blogdown package
#install.packages("rstudioapi") # to easily navigate to files
if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")
library(rstudioapi) # load blogdown
library(blogdown) # load blogdown

setwd("/Users/flickarchibald/Documents/Carla/personal-website")

# start new site
#new_site(theme = "wowchemy/starter-academic") # create your website!
blogdown::serve_site() 
#blogdown::stop_server()

# Hugo: check what needs to be done
blogdown::check_site()

# configure config.yaml file
# baseurl: 'http://carla-archibald.me' or http://carla-archibald.netlify.app
rstudioapi::navigateToFile("config/_default/config.yaml")

# configure gitignore file
file.edit("gitignore") #.Rproj.user, .Rhistory, .RData, .Ruserdata, .DS_Store, Thumbs.db

# configure netufy.toml file
rstudioapi::navigateToFile("netlify.toml")

# Hugo: check site
blogdown::check_site()
blogdown::serve_site()

# Hugo: config_Rprofile
blogdown::config_Rprofile()

# Netlify: config_netlify
blogdown::config_netlify() # blogdown.hugo.version = "0.96.0"

# Configure menu
rstudioapi::navigateToFile("config/_default/menus.yaml")

# Configure theme
rstudioapi::navigateToFile("config/_default/params.yaml")

#### ACTIVE WIDGETS

# LANDING PAGE
rstudioapi::navigateToFile("content/authors/admin/_index.md")

# ABOUT ME
rstudioapi::navigateToFile("content/home/about.md")

# PROJECTS
rstudioapi::navigateToFile("content/home/projects.md") #active:false

# POSTS
rstudioapi::navigateToFile("content/home/posts.md") #active:false
rstudioapi::navigateToFile("content/post/_index.md") #active:false
rstudioapi::navigateToFile("content/post/2020-12-01-r-rmarkdown/index.en.Rmd")

#### DE-ACTIVEATED WIDGETS

# EXPERIENCE
rstudioapi::navigateToFile("content/home/experience.md") #active:false

# SKILLS
rstudioapi::navigateToFile("content/home/skills.md") #active:false

# GALLERY
rstudioapi::navigateToFile("content/home/gallery.md") #active:false

# TALKS
rstudioapi::navigateToFile("content/home/talks.md") #active:false

# ACCOMPLISHMENTS
rstudioapi::navigateToFile("content/home/accomplishments.md") #active: false

# FEATURED
rstudioapi::navigateToFile("content/home/featured.md") #active: false

# TAGS
rstudioapi::navigateToFile("content/home/tags.md") #active: false

# CONTACT
rstudioapi::navigateToFile("content/home/contact.md") #active: false

# PUBLICATIONS
rstudioapi::navigateToFile("content/home/publications.md") #active: false

# ADDITIONAL PAGES
rstudioapi::navigateToFile("content/home/demo.md") #active: false
rstudioapi::navigateToFile("content/home/hero.md") #active: false

# Build site
blogdown::build_site()

# End :) 
