# Instalacja i załadowanie pakietu plotrix
library(latticeExtra)
library(plotrix)

data(USAge.df)


# Tworzenie danych do piramidy demograficznej dla roku 1961
wiek <- c("0-5", "6-11", "12-17", "18-23", "24-29", "30-35", "36-41",
          "42-47", "48-53", "54-59", "60-65", "66-71", "72 i więcej")
mężczyźni <- c(100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 5, 2, 1)
kobiety <- c(95, 85, 75, 65, 55, 45, 35, 25, 15, 10, 5, 2, 1)

# Rysowanie piramidy demograficznej z większym odstępem między wykresami
pyramid.plot(mężczyźni, kobiety, labels=wiek, main="Piramida demograficzna - 1961",
             lxcol="blue", rxcol="pink", gap=8, 
             top.labels=c("Mężczyźni", "Kobiety"))
