# Dane
gole = c(0, 1, 2, 3, 4, 5, 6, 7)
mecze = c(5, 7, 16, 14, 6, 3, 1, 1)

# (a) Oszacowanie parametrów rozkładu Poissona
N = sum(mecze)
lambda = sum(gole * mecze) / N

# (b) Wygenerowanie funkcji masy prawdopodobieństwa dla rozkładu Poissona
poisson_pmf = dpois(gole, lambda)

# Wykres porównawczy
barplot(
  mecze / N,
  names.arg = gole,
  col = 'lightblue',
  main = 'Porównanie Empiryczne vs. Rozkład Poissona',
  xlab = 'Liczba Goli w Meczu',
  ylab = 'Prawdopodobieństwo Empiryczne',
  ylim = c(0, 0.4)
)
lines(gole, poisson_pmf, type = 'o', col = 'red')
legend(
  'topright',
  legend = c('Empiryczne', 'Rozkład Poissona'),
  col = c('lightblue', 'red'),
  lty = 1:1,
  cex = 0.8
)
