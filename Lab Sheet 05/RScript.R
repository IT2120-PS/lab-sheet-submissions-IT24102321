setwd("C:/Users/Lenovo/Desktop/LB5_It24102321")
Delivery_Times <- read.table("Exercise _Lab_05.txt",header = TRUE ,sep=",")
print(Delivery_Times)


hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")



hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)


cumulative_freq <- cumsum(hist_data$counts)
cumulative_freq
plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "blue")
