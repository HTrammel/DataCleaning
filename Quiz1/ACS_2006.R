# if (!file.exists("data")) { dir.create("data") }
# 
# fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
# download.file(fileurl, destfile="./data/acs_2006_data.csv")

acs <- read.csv("./data/acs_2006_data.csv")
expensive <- acs["VAL"==24]