class Program

  #Metodas/Funkcija į kuria paduodame stačiakampio ilgį bei aukšti su kuriuo galime apskaičiuoti stačiakampio plotą, bei pačioje funkcijoje atspausdinamas atsakymas
  def Area_Size(height, lenght)
    printf "Staciakampio plotas: #{height*lenght} \n"
  end

  #Metodas/Funkcija į kuria paduodame stačiakampio ilgį bei aukšti su kuriuo galime apskaičiuoti stačiakampio perimetrą, bei pačioje funkcijoje atspausdinamas atsakymas
  def Perimeter(height, lenght)
    printf "Staciakampio perimetras: #{2 * (height*lenght)} \n"
  end

  #Metodas/Funkcija į kuria paduodame stačiakampio ilgį bei aukšti su kuriuo galime apskaičiuoti stačiakampio įstrižainę, bei pačioje funkcijoje atspausdinamas atsakymas
  def Diagonal(height, lenght)
    printf "Staciakampio istrizaine: #{(Math.sqrt((height*height)+(lenght*lenght)))} \n"
  end

end

integerHeight = 5
integerLenght = 4
printf "Staciakampio aukstis: #{integerHeight} \n"
printf "Staciakmpio ilgis: #{integerLenght} \n \n"


#Sukuriamas klasės Program objektas - class1
class1 = Program. new

#Su sukurtu klasės objektu - class1 galime pasiekti toje klasėje esančias funkcijas/metodus ir jas iškviesti paduodami į jas parametrus
#Iškviesdami Area_Size metodą paduodama į jį programiškai parašytus kintamuosiuos, stačiakampio ilgi bei aukštį, kaip ir į Perimeter ar Diagonal metodus
#
# Area_Size metodas apskaičiuoja stačiakampio plotą bei išvedą atsakymą ekrane
class1.Area_Size(integerHeight, integerLenght)
#Perimeter metodas apskaičiuoja stačiakampio perimetrą ir atsakymą išveda ekrane
class1.Perimeter(integerHeight, integerLenght)
#Diagonal metodas apskaičiuoja stačiakampio įstrižainę ir atsakymą išveda ekrane
class1.Diagonal(integerHeight, integerLenght)

