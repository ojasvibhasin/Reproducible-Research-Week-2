1. Loading and preprocessing of data

    fileurl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
    zipfile <- "./course5week2/data.zip" 
    filedir <- "./course5week2"
    unzip_path <- "./course5week2/data" 
    if (!file.exists(filedir)){
        dir.create(filedir)
    }
    download.file(fileurl,file.path(zipfile))
    unzip(zipfile,exdir=unzip_path) 
    datafile <- file.path(unzip_path,"activity.csv")
    activity <- read.csv(datafile)
    activity$date <- ymd(activity$date)
    activity$weekend <- as.factor(ifelse(weekdays(activity$date)=="Saturday" | weekdays(activity$date)=="Sunday","weekend","weekday"))
    activity$dayofweek <- as.factor(weekdays(activity$date))
