library(dplyr)
zb = c('A','B','D','E','F','A')

final = data.frame(liczby = zb)

bbb = c()

for (x in 1:length(zb)){
  
  aaa = which(zb %in% zb[x])
  bbb[x] = (aaa[2]-aaa[1])

}

final$cyfry = bbb

final = na.omit(final)

final = final %>% arrange(cyfry)

head(final[,1],1)
  
