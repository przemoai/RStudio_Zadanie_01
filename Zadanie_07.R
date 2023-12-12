dane = c(10.1, 64.2, 28.5, 49.5, 13.2, 37.5, 52.9, 17.4, 7.6, 25.4, 85.6, 14.1,
          81.3, 16.5, 30.8, 83.1, 42.9, 66.7, 41.5, 62.8, 66.1, 18.3, 24.1, 81.9,
          36.9, 74.9, 50.2, 91.4, 57.7, 8.7, 30.5, 4.2, 43.3, 89.4, 5.7, 27.7, 4.9,
          17.3, 53.5, 32.6, 65.8, 74.1, 64.7, 58.4, 36.7, 94.6, 72.9, 92.1, 18.1,
          70.8, 84.1, 23.7, 5.3, 32.3, 20.3, 46.5, 64.8, 36.2, 31.6, 75.9, 62.4,
          2.4, 19.4, 70.6, 75.7, 28.5, 73.1, 79.2, 81.2, 29.4, 68.4, 39.6, 67.2,
          41.9, 18.9, 23.8, 21.2, 67.4, 43.2, 22.3, 26.4, 17.1, 2.5, 15.2, 27.1,
          40.2, 34.6, 43.4, 41.7, 36.8, 25.9, 34.3, 13.7, 57.4, 36.9, 15.7, 82.7,
          73.2, 66.3, 70.2)

# Granice klas
granice = c(0, 20, 30, 40, 50, 61, 75, 88, 100)

# Histogram
hist(dane, breaks = granice, main = "Histogram", xlab = "Wartości", ylab = "Częstość")

# Średnia i wariancja dla danych niezgrupowanych
srednia = mean(dane)
wariancja = var(dane)

cat("Średnia dla danych niezgrupowanych:", srednia, "\n")
cat("Wariancja dla danych niezgrupowanych:", wariancja, "\n")

# Podział danych
dane_zgrupowane = cut(dane, breaks = granice)

# Średnią i wariancja dla danych zgrupowanych
srednia_zgrupowana = tapply(dane, dane_zgrupowane, mean)
wariancja_zgrupowana = tapply(dane, dane_zgrupowane, var)

cat("Średnia dla danych zgrupowanych:", srednia_zgrupowana, "\n")
cat("Wariancja dla danych zgrupowanych:", wariancja_zgrupowana, "\n")
