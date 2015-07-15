s = read.csv("serekovQ4.csv")

cat(mean(s$age[s$sex=="F"]))

cat(mean(s$age[s$sex=="M" & s$eye.color=="brown"]))

cat(sum(s$hair.color %in% c("black","blond","brown")))

cat(sum(s$eye.color=="hazel" & s$hair.color!="gray"))

cat(s[order(s$weight,decreasing = TRUE),][3,]$age)

ordered=s[order(s$eye.color, s$weight, decreasing = TRUE),]

cat(ordered[which(ordered$sex=="M")[3],]$age)

c = CO2

cat(summary(c))

cat(mean(c[c$Type=="Quebec",]$uptake))

cat(sd(c[c$Type=="Quebec",]$uptake))

cat(mean(c[c$Type=="Mississippi",]$uptake))

cat(sd(c[c$Type=="Mississippi",]$uptake))


