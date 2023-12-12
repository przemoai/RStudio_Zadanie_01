library(latticeExtra)
library(plotrix)

data(USAge.df, package = "latticeExtra")

# Dane dla roku 1961
data_1961 = USAge.df[USAge.df$Year == 1961, ]

# Kategorie wiekowe
wiek = c("0-5", "6-11", "12-17", "18-23", "24-29", "30-35", "36-41",
          "42-47", "48-53", "54-59", "60-65", "66-71", "72 i więcej")

# Kategoryzacja wieku
wiek_kategorie = cut(data_1961$Age, breaks = c(0, 5, 11, 17, 23, 29, 35, 41, 47, 53, 59, 65, 71, Inf),
                      labels = wiek, include.lowest = TRUE)

data_1961$KategoriaWieku = factor(as.character(wiek_kategorie), levels = wiek)

# Podział na mężczyzn i kobiety
mężczyźni = data_1961[data_1961$Sex == "Male", ]
kobiety = data_1961[data_1961$Sex == "Female", ]

# Zsumowanie liczby mężczyzn i kobiet w każdej kategorii wiekowej
sum_mężczyźni = aggregate(Population ~ KategoriaWieku, data = mężczyźni, sum)
sum_kobiety = aggregate(Population ~ KategoriaWieku, data = kobiety, sum)

# Wykres piramidowy ilustrujący zsumowaną liczbę mężczyzn i kobiet w danej kategorii wiekowej
pyramid.plot(sum_mężczyźni$Population, sum_kobiety$Population,
             lxcol = "blue", rxcol = "pink", gap = 1.5,
             labels = sum_mężczyźni$KategoriaWieku,
             top.labels = c("Mężczyźni","Wiek", "Kobiety"),
             main = "Zsumowana Liczba Mężczyzn i Kobiet w Danej Kategorii Wiekowej")
