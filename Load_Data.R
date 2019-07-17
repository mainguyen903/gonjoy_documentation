# set directory contains data tables
path = "/Users/user/Documents/Job/GONJOY/DB/Raw/"

# Import data
list_tables = list.files(path=path, pattern=".csv")

for (i in 1:length(list_tables)){
  print(list_tables[i])
}

table_name = gsub("gonjoy34.","",list_tables)
table_name = gsub(".csv","",table_name)

table_name

# function for handling data
desc_fun = function(nameoftable){
  data_field = names(nameoftable)
  description = rep(0,length(data_field))
  table_description=as.data.frame(cbind(data_field,description))
}

# function for cleaning data