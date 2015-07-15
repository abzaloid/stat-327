rm(list=ls())

a = c(26,14,20,24,5,18,1,15,8,28,22,24,12,5,3,15,11,20,6,13,12,19,23,13,16,9,26,19,21,3)
n = length(a)

cat(sum(a[which(1:n %% 2 == 0)]))

b = c(5,12,7,12,26,2,27,7,17,2,28,4,6,25,20)

cat(sum(a[which(a %in% b)]))

ind = order(a)
x = sort(a)

cat(sum(x[1:4]))

cat(sum(ind[1:4]))

cat(sum(quantile(a)[1:5]))

f = scan("hamlet.txt", what = character())
cat(sum(f %in% "nature"))

g = list(fruit="apple", dairy=c("milk", "eggs"), lotto = c(4,2,1,7))
g$dairy[length(g$dairy)+1]="butter"
g$snacks="popcorn"
g$lotto[length(g$lotto)]=6
g$fruit=NULL


x = list(name=c("Alex","Betty","Chen","David","Eleanor"), score=c(88,93,76,91,80))
         