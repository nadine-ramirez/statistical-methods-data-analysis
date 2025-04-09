#H_0 \mu_x = \mu_y, H_1 had three possibilities: 
#\mu_x > \mu_y, \mu_x < \mu_y, \mu_x \neq \mu_y
# \sigma_x = \sigma_y = \sigma -> not true here. 
#sd's can be different. 
#x,y normal, indep. 
#w = (\overline{x} - \overline{y}) - (\mu_x - \mu_y)/ \sqrt{sx^2/n + sy^2/m} ~tv
#v degrees of freedom. 
#v = (sx^2/sx^2 + n\m)^2/(1/n-1)(sx^2 /sy^2)^2 + (1/m-1)(n/m)^2
#ratio of variance, ratio of sample sizes
# x <- large sale values, y <- small sale values
x <- c(21,23,13,22,7,17,19,11,2,30,15,43)
y <- c(21,21,14,31,19,19,11,29,20,27,27,24)
c(mean(x),mean(y))
c(sd(x)^2,sd(y)^2)
w <- (mean(x)-mean(y))/sqrt(sd(x)^2/12+sd(y)^2/12)
w
v <- (sd(x)^2/sd(y)^2+12/12)^2/((1/11)*(sd(x)^2/sd(y)^2)^2+1*(1/11)*(12/12)^2)
v
#rounded to 17 degrees of freedom. 
qt(c(0.025, 0.975),17)
#fail to reject H_0
pvalue <- 2*pt(w,17)
pvalue
t.test(x,y,alternative="two.sided",conf.level = 0.95)


