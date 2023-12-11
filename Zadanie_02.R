# Dane
liczba_goli = c(0, 1, 2, 3, 4, 5, 6, 7)
liczba_meczy = c(5, 7, 16, 14, 6, 3, 1, 1)

# Estymacja parametrów rozkładu Poissona
srednia_goli = sum(liczba_goli * liczba_meczy) / sum(liczba_meczy)

# Teoretyczny rozkład Poissona
teoretyczne_prawdopodobienstwa = dpois(liczba_goli, lambda = srednia_goli)

# Konwersja liczb goli na wektor znaków
liczba_goli_str = as.character(liczba_goli)

# Wykres porównawczy
barplot(cbind(teoretyczne_prawdopodobienstwa * sum(liczba_meczy), liczba_meczy),
        beside = TRUE,
        names.arg = liczba_goli_str,
        col = c("red", "blue"),
        legend.text = c("Teoretyczne", "Empiryczne"),
        main = "Porównanie rozkładu empirycznego z teoretycznym",
        xlab = "Liczba goli w meczu",
        ylab = "Liczba meczy")