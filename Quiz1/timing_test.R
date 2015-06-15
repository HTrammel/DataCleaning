# print("option 1")
# print(tapply(DT$pwgtp15,DT$SEX,mean))
# a1 <- replicate(100, system.time({tapply(DT$pwgtp15,DT$SEX,mean)}))
# m1 <- mean(a1["user.self",])
# print(m1)

# print("option 2")
# print({mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)})
# a2 <- replicate(20, system.time({mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)}))
# print(a2)


print("option 3")
print(DT[,mean(pwgtp15),by=SEX])
a3 <- replicate(200, system.time({DT[,mean(pwgtp15),by=SEX]}))
m3 <- mean(a3["user.self",])
print(m3)



# print("option 4")
# print({mean(DT$pwgtp15,by=DT$SEX)})
# a4 <- replicate(20, system.time({mean(DT$pwgtp15,by=DT$SEX)}))
# print(a4)

print("option 6")
print(sapply(split(DT$pwgtp15,DT$SEX),mean))
a6 <- replicate(200, system.time({sapply(split(DT$pwgtp15,DT$SEX),mean)}))
m6 <- mean(a6["user.self",])
print(m6)
