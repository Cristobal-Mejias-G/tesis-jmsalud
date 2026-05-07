

library(sjlabelled,dplyr)


issp99<- read_stata("data/issp1999a.dta")
issp09<- read_stata("data/issp2009a.dta")
issp19<- read_stata("data/issp2019a.dta")



# 1999

sjmisc::find_var(issp99,"Chile",search = "all")
sjlabelled::get_labels(issp99$v3,values = "as.name")

cl99 = issp99 %>% dplyr::filter(v3==30)

# 2009

sjmisc::find_var(issp09,"Chile",search = "all")
sjlabelled::get_labels(issp09$V4,values = "as.name")

cl09 <- issp09 %>% dplyr::filter(V4==152)

# 2019 ... solo Chile

cl19 <- issp19