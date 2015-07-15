a <- c(25,27,21,13,21,29,3,7,20,8,13,14,14,22,14,28,8,26,28,5,6,7,8,26,19,21,26,4,28,6)
mean(a)

sd(a)

median(a)

min(a)

(a[1] + a[length(a)]) / 2

sum(a[10:20])

sum(a[(a < 10) * (1:length(a))])

sum(which(a >= 10 & a <= 20))

sum(a[which(a >= 10 & a <= 20)])

sum(a[which(a < 10 | a > 20)])

sum(a[which(a %% 2 == 0)])

sum(a[which(1:length(a) %% 5 == 0)])
