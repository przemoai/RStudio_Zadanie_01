wyniki = c(12,26,4,24,8,11,0,13,35,16,7,24,21,17,18,6,26,31,35,18,
            13,27,0,25,4,19,14,27,4,5,33,7,26,25,16,21,0,9,6,6,28,32,
            7,1,23,16,3,13,9,28,11,22,4,23,11,10,21,2,24,16,15,25,12,9,
            31,13,19,15,10,19,23,11,27,15,31,17,22,17,33,26,35,8,14,
            6,4,27,19,21,16,4,9,7,15,30,12,9,6, 23,22,5,7,17,28,6,3)

# Utworzenie tabeli z wartosciami  0-36 oraz zsumowanie wystąpień każdej z liczb
tabela_wyniki <- table(factor(wyniki, levels = 0:36))

# Przeprowadzenie testu
test_wynik = chisq.test(tabela_wyniki)


# Wyświetlenie wyników
test_wynik

if (test_wynik$p.value < 0.05) {
  print("Maszyna nie jest uczciwa.")
} else {
  print("Maszyna jest uczciwa.")
}