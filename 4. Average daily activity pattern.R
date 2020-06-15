4. Average daily activity pattern
4 a. time series plot of the 5-minute interval and the average number of steps across all days
  
  interval_average <- activity %>% group_by(interval) %>% summarise(average = mean(steps,na.rm = TRUE))
  qplot(interval,average,data=interval_average,geom="line",xlab = "5-minute intervals",ylab = "Average steps taken across all days")
  
  b. Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?

  interval_average[which.max(interval_average$average),]
