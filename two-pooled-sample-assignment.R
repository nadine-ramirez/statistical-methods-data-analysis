twain <- c(0.225, 0.262, 0.217, 0.240, 0.230, 0.229, 0.235, 0.217)
print(twain)
qcs <- c(0.209, 0.205, 0.196, 0.210, 0.202, 0.207, 0.224, 0.223, 0.220, 0.201)
print(qcs_df)
sp <- sqrt(((8-1)*sd(twain)^2+(10-1)*sd(qcs)^2)/(16))
ttest <- (mean(twain)-mean(qcs))/(sp*sqrt(1/8+1/10))
ttest
qt(0.005, 16)
qt(0.995, 16)
#We reject H_0 since we exceed 2.92.
pvalue <- 2*pt(ttest,16,lower.tail = FALSE)
pvalue
t.test(twain,qcs,alternative = "two.sided", var.equal=TRUE)