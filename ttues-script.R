## Steps and script for creating the TidyTuesday dataset

## Find an interesting dataset with a csv file and some sample
## analyses and figures. Then go through these steps to prepare
## and add it to the Tidy Tuesday repository https://github.com/rfordatascience/tidytuesday

# You're going to be 
# - Adding a directory with the dataset to the 'data' directory
# - Updating the general readme.md for TidyTuesday

# If you haven't already installed the tidytuesdaymeta package
# and/or aren't set up yet to load packages from github rather
# than CRAN
library(devtools)
devtools::install_github("hadley/emo")
devtools::install_github("jthomasmock/tidytuesdaymeta")

# Load libraries
library(tidyverse)
library(tidytuesdaymeta)

# STEP 1: Create a TidyTuesday directory and go into that
# directory

# STEP 2: Create a directory YEAR/YYYY-MM-DD for the files
# for this TidyTuesday

# STEP 3: Download the csv file(s) you're using to your
# local computer and put in the YEAR/YYYY-MM-DD directory. 
# Move into that directory to run these commands.

# STEP 4: Create a blank readme.md file in that directory. 
# We'll put information into this file later.

# STEP 5: Load in those csv files to R and check to see 
# that they look ok

# Set the filenames of the csv's you're using. Do this for
# each csv file

csvfile1 <- "csvfilename1.csv"
csvfile2 <- "csvfilename2.csv"


raw_df1 <- read_csv(csvfile1)
raw_df2 <- read_csv(csvfile2)


glimpse(raw_df1)
glimpse(raw_df2)


# STEP 6: Get some graphics that demonstrate some findings
# with this dataset. You need two graphics. Download those 
# and put them into the YYYY/YYYY-MM-DD directory. Save as 
# 'pic1.png' and 'pic2.png' for instance, those are the names
# used in automatic functions. 

# STEP 7: Update the readme.md for this dataset
# - Copy the text from a previous TidyTuesday into the readme, 
# e.g. https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-11-22/readme.md
# - Update the section that describes the data, including the links
# - Update the sections with 'tuesday' with the correct date, and number


# STEP 8: Create the data dictionaries for the datasets and
# add it to the readme.md in the 'Data dictionaries' section


create_tt_dict(raw_df1)
create_tt_dict(raw_df2)

# The file tidytuesday/static/tt_data_type.csv needs to get updated
# Download this file to your directory
# be careful with this one
# adds something to the end of tt_data_type.csv, just do this once
# update the "," part to be the delimiter that's used in
# the files
# Add a new line at the end with this week's information.

# if you have one file
tidytuesdaymeta::update_data_type(c(csvfile), c(","))

# if you have two files
tidytuesdaymeta::update_data_type(c(csvfile1, csvfile2), c(",",","))


# STEP 9: Update the main README and the readme.md in the data/YYYY directory.
# The last lines in these files need to be updated with the dataset for this week

# STEP 10: Draft the tweets/toots
# Use the images and alt text that go with each Tidy Tuesday
# Add the two images that are visualizations of this data, and add the alt text

# Tweet/toot format
# The @R4DScommunity welcomes you to week 49 of #TidyTuesday!  

# We're exploring ABC data! 
# 📂 http://bit.ly/tidyreadme
# 📰 dataset-link
#r4ds #tidyverse #rstats #dataviz
