# load library

library(dplyr)
library(readr)
library(stringr)
library(tidyr)
library(ggplot2)

# set working directory contains data tables
path_for_import = paste(getwd(), "/Raw/",sep="")

# Import data
list_tables = list.files(path=path_for_import, pattern=".csv")

for (i in 1:length(list_tables)){
  print(list_tables[i])
}

# list of table in Raw data
table_name = gsub("gonjoy34.","",list_tables)
#table_name = gsub(".csv","",table_name)

# table_name

# function for handling data
desc_fun = function(path_contain_file, tablename, path_for_save){
  table=read.csv(paste(path_contain_file,tablename,sep=""),header=T)
  data_field = names(table)
  description = rep("0",length(data_field))
  table_description=as.data.frame(cbind(data_field,description))
  write_csv(table_description,paste(path_for_save,gsub("gonjoy34.","",tablename),sep=""),append = F)
}

path_for_save = paste(getwd(),"/DataTables/",sep="")

# generate table description

for (i in 1: length(list_tables)){
  desc_fun(path_contain_file = path_for_import,list_tables[1], path_for_save = path_for_save)
}
# function for cleaning data