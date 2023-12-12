dane = read.csv2(file.choose())

dane$X = as.integer(substr(dane$lud, 1, 1))  # Pierwsza cyfra
dane$Y = as.integer(substr(dane$lud, 2, 2))  # Druga cyfra

# Tabela krzyżowa
tabela_krzyzowa = table(dane$X, dane$Y)

# Test chi-kwadrat na niezależność
test_chi_kwadrat = chisq.test(tabela_krzyzowa)

# Wyniki testu
print(test_chi_kwadrat)

# Współczynnik korelacji
korelacja = cor(dane$X, dane$Y)

# Wynik
print(korelacja)