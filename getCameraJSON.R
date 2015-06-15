if (!file.exists("data")) {
    dir.create("data")
}

fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.json?accessType=DOWNLOAD"
download.file(fileURL, destfile = "./data/cameras.json" )
dateDownloaded <- date()