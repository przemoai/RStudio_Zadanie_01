# Liczba symulacji
liczba_symulacji <- 10000

# Wektor przechowujący wyniki
wyniki <- numeric(liczba_symulacji)

# Symulacja
set.seed(123)  # Ustawienie ziarna dla powtarzalności wyników
for (i in 1:liczba_symulacji) {
  losowe_liczby <- sample(1:365, 23, replace = TRUE)
  liczba_unikalnych <- length(unique(losowe_liczby))
  wyniki[i] <- liczba_unikalnych
}

# (a) Rozkład prawdopodobieństwa zmiennej losowej U
rozkład_prawdopodobieństwa <- table(wyniki) / liczba_symulacji

# (b) Wykres
# (b) Poprawiony wykres
barplot(
  rozkład_prawdopodobieństwa,
  xlab = "Liczba unikalnych wartości U",
  ylab = "Prawdopodobieństwo",
  main = "Rozkład prawdopodobieństwa zmiennej U",
  xlim = c(0, 24)
)
