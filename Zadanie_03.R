data = c(1.2, 0.9, -0.8, 0.4, 2.7, 0.4, 3.4, -1.6, -0.8, 0.4, 0.5, -0.4, 2.3, 0.5,
          -0.6, 1.6, 0.7, 2.9, -0.1, -0.17, 0.25, 2.6, 1.2, -2.3, -0.4, -2.1, 0.2,
          -0.8, 1.3, 1.12, -0.2, 0.7, 1.1, 2.5, 0.15)

# Test Kołmogorowa
ks_test_result = ks.test(data, "pnorm")
cat("Wartość statystyki Kołmogorowa:", ks_test_result$statistic, "\n")
cat("P-wartość dla testu Kołmogorowa:", ks_test_result$p.value, "\n")

# Wykres dystrybuanty empirycznej i teoretycznej
plot(ecdf(data), main="Test Kołmogorowa", col="blue")
curve(pnorm(x), add=TRUE, col="red")




# Test Shapiro-Wilka
shapiro_test_result = shapiro.test(data)
cat("Wartość statystyki testu Shapiro-Wilka:", shapiro_test_result$statistic, "\n")
cat("P-wartość dla testu Shapiro-Wilka:", shapiro_test_result$p.value, "\n")

# Wykres kwantylowy
qqnorm(data)
qqline(data, col = 2)

