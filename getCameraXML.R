if (!file.exists("data")) {
    dir.create("data")
}

fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xml?accessType=DOWNLOAD"
download.file(fileURL, destfile = "./data/cameras.xml" )
dateDownloaded <- date()