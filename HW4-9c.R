###create the urn array u
u = 1:9
###establish j as a counting # for when all 3 colors show
j = 0
###establish i as a counting #
i = 1
while (i <= 1000000) {
  ###result is drawing 3 balls from the urn
  result = sample(u, replace = FALSE, 3)
  ###if one ball is G (1,2,3 => green)
  if (1 %in% result || 2 %in% result || 3 %in% result) {
    ###if one ball is R (4,5,6 => red)
    if (4 %in% result || 5 %in% result || 6 %in% result) {
      ###if one ball is W (7,8,9 => white)
      if (7 %in% result || 8 %in% result || 9 %in% result) {
        j = j + 1
      }
    }
  }
  i = i + 1
}
print(j/1000000)