data <- read.table(file = "clipboard", 
                      sep = "\t", header=FALSE)
library(tidyverse)
data <- rename(data, c("fbname"="V1"))


data$nongeo <- 0

# Assigning 1 to foreign accounts
data[c(87:149, 443:447, 460:487,
       489:510, 512:524, 535:536,
       538:546, 548:563, 573:574, 
       576:587, 589, 591:603, 609:636,
       638:641, 643, 649:740, 742:749),2] <- 1

summary(data$nongeo)
