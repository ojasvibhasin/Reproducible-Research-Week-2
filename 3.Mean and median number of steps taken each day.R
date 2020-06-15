3. Mean and median number of steps taken each day

  meanstepsperday <- stepsByDay %>% summarise(average = mean(stepsperday,na.rm = TRUE),median=median(stepsperday,na.rm = TRUE))
  meanstepsperday
