safe_checkpoint <- function(snapshot_date,
                            recommended_R_version,
                            checkpoint_location = 'F:/R',
                            ...){
### safe_checkpoint takes a snapshot date and r version and does safer checks to allow code to run,
### but will create directories and install packages if needed.
### safe_checkpoint will take any other input and pass it into the checkpoint::checkpoint function

if (!require('checkpoint')){ #require gives off true if installed and loaded in
  install.packages("checkpoint")
  library("checkpoint")
}

current_R_version  = paste(R.version$major, R.version$minor, sep = '.')

if(current_R_version != recommended_R_version){
  warning("===================================================\n",
          "R version: ",
          current_R_version,
          " does not equal current version: ",
          recommended_R_version,
          ".\n Code may not run correctly.\n\n",
          "Using current R version to install packages into ...\n",
          "==================================================="
  )
}

tryCatch({
  checkpoint::checkpoint(snapshotDate = snapshot_date,
                         R.version = current_R_version,
                         checkpointLocation = checkpoint_location,
                         ...)
},error = function(err) {
  # error handler picks up where error was generated
  print(paste("checkpoint_error:  ",err))
  stop()
})

}
