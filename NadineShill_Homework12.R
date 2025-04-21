parameters <- list(
  list(r=1,s=1,n=4,k=3),
  list(r=1,s=1,n=20,k=11),
  list(r=4,s=4,n=4,k=3),
  list(r=4,s=4,n=20,k=11)
)
theta <- seq(0,1,length=1000)
op <- par(mfrow=c(2,2),mar=c(4,7,4,1),mgp=c(3,1,0),cex.main=0.9)
for(param in parameters){
  r <- param$r; s <- param$s; n <- param$n; k <- param$k
  prior <- dbeta(theta,r,s)
  post  <- dbeta(theta,r+k,s+n-k)
  y.max <- max(prior,post)
  yticks <- pretty(c(0,y.max),n=5)
  plot(theta,prior,type="l",lwd=2,col="steelblue",
       ylim=c(0,y.max),xlab=expression(theta),ylab="",
       main=sprintf("r=%d, s=%d   |   n=%d, k=%d",r,s,n,k),
       yaxt="n")
  abline(h=yticks,col="gray90",lty=3)
  axis(2,at=yticks,las=1,cex.axis=0.8)
  mtext("Density",side=2,line=4,cex=1)
  lines(theta,post,lwd=2,col="darkorange")
  legend("topright",c("prior","posterior"),col=c("steelblue","darkorange"),lwd=2,bty="n")
  p_gt_05 <- 1 - pbeta(0.5,r+k,s+n-k)
  mtext(sprintf("P(θ>0.5)=%.3f",p_gt_05),side=3,line=0.5,cex=0.8)
  cat(sprintf("r=%d, s=%d, n=%d, k=%d: P(theta>0.5)=%.3f\n",r,s,n,k,p_gt_05))
}
par(op)

