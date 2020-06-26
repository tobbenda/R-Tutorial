library(datasets)

hist(lynx,
     breaks= 15,  #15 bars
     freq= FALSE,  #density, not frequency
     col= "red",
     main=paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821-1934"),
     xlab = "Number of Lynx Trapped"
     )

#Adding a normal distribution:
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "blue",
      lwd = 3,
      add = TRUE)  #Add to last plot

detach("package:datasets", unload = TRUE)
dev.off()
cat("\014")
