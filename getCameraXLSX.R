if (!file.exists("data")) {
    dir.create("data")
}

fileURL <- "http://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileURL, destfile = "./data/cameras.xlsx" )
dateDownloaded <- date()
