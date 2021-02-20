#Mengaktifkan package xlsx
library(xlsx)

#Memasukan data ke dalam variable data
data <- read.xlsx("Delivery Time Data.xlsx", sheetIndex = 1)

#Membuat file png untuk menyimpan scatter plot
png(filename = "plot.png")

#Membuat scatter plot Delivery Time terhadap Number of Cases
plot(data$Number.of.Cases..x., data$Delivery.Time..minutes...y., main = "Delivery Time and Number of Cases", ylab = "Delivery Time", xlab = "Number of Cases")

#Menyimpan plot pada file png yang telah dibuat
dev.off()

#Mencari persamaan regresi
reg <- lm(Delivery.Time..minutes...y. ~ Number.of.Cases..x., data = data)

#Mencari koefisien regresi
reg["coefficients"]

#Membuat file png untuk menyimpan scatter plot dengan garis regresi
png(filename = "plot reg.png")

#Membuat scatter plot Delivery Time terhadap Number of Cases
plot(data$Number.of.Cases..x., data$Delivery.Time..minutes...y., main = "Delivery Time and Number of Cases", ylab = "Delivery Time", xlab = "Number of Cases")

#Menambahkan garis regresi pada plot
abline(reg = c(3.320780, 2.176167), col = "red")

#Menyimpan plot pada file png yang telah dibuat
dev.off()