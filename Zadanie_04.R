dane = read.csv2("C:\\Users\\pmroc\\Documents\\NS_II_01\\Planowanie_eksperymentu\\dane\\csv-06(Miasta).csv")

# Zakładając, że "lud" to liczba ludności, przekształć ją na pierwszą i drugą cyfrę.
dane$X <- as.integer(substr(dane$lud, 1, 1))  # Pierwsza cyfra
dane$Y <- as.integer(substr(dane$lud, 2, 2))  # Druga cyfra

# Utwórz tabelę krzyżową
tabela_krzyzowa <- table(dane$X, dane$Y)

# Przeprowadź test chi-kwadrat na niezależność
test_chi_kwadrat <- chisq.test(tabela_krzyzowa)

# Wyświetl wyniki testu
print(test_chi_kwadrat)

# Wyznacz współczynnik korelacji
korelacja <- cor(dane$X, dane$Y)

# Wyświetl wynik
print(korelacja)