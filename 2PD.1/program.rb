class Program

  #Paleidus programą rankiniu būdu console'je įvedame studento duomenis (Vardą, Pavardę, Grupę, Išklausytų dalykų/modulių kiekį)
  puts 'Iveskite studento varda: '
  # gets metodu galime nuskaityti naudotojo input'ą
  # chomp metodas pašalina enter arba kitaip sakant naujos eilutės simbolį
  vardas = gets.chomp

  puts 'Iveskite studento pavarde: '
  pavarde = gets.chomp
  puts 'Iveskite studento grupe: '
  grupe = gets.chomp

  puts 'Kiek studentas isklause dalyku?: '
  isklausytiDalykai = gets.chomp

  #String kintamasis konvertuojamas į integer
  number = isklausytiDalykai.to_i

  #Sukuriami trys masyvai į kuriuos bus rašomi - Studento dalykai/moduliai, kreditai už dalyką, bei pažymiai iš to dalyko/modulio
  studentoDalykai = Array.new
  studentoKreditai = Array.new
  studentoPazymiai = Array.new

  #Sukamas ciklas priklausomai nuo to, kiek studentas turėjo išklausytų dalykų, -1 prie number dėl to, nes ciklas pradedamas iteruoti nuo 0 o ne nuo 1
  for i in 0..number-1

    #Prasidėjus ciklui, privalėsime įvesti tiek skirtingų dalykų, kreditų bei pažymių, kiek studentas bus išklausęs dalykų.
    #
    # Įvedame studentio išklausytą dalyką, bei jo modulio pavadinimą patalpiname į masyvą "studentoDalykai"
    puts "Iveskite studento isklausyta dalyka: "
    dalykas = gets.chomp
    studentoDalykai.insert(i, dalykas)

    # Įvedame studento gautą kreditų skaičių iš modulio ir jį įdedame į masyvą "studentoKreditai" su insert funkcija
    # insert(i, numKreditas).  i - reiškia į kelintą poziciją įdėsime mūsų gautą reikšmę, o numKreditas - bus toji reikšmė, kurią įdėsime į masyvą
    # Taip pat string reikšmė "kreditas" konvertuojamas į integer.
    puts 'Iveskite studento gauta kreditu skaiciu: '
    kreditas = gets.chomp
    numKreditas = kreditas.to_i
    studentoKreditai.insert(i, numKreditas)

    # Įvedame studento gautą pažymį iš modulio ir jį įdedame į masyvą "studentoPažymiai" su insert funkcija
    #     # insert(i, numPazymis).  i - reiškia į kelintą poziciją įdėsime mūsų gautą reikšmę, o numPazymis - bus toji reikšmė, kurią įdėsime į masyvą
    #     # Taip pat string reikšmė "pazymis" konvertuojamas į integer.
    puts 'Iveskite studento gauta pazymi: '
    pazymis = gets.chomp
    numPazymis = pazymis.to_i
    studentoPazymiai.insert(i, numPazymis)
  end



#Funkcija/metodas kuri turi tris parametrus(Masyvą - studentoKreditai, masyvą - studentoPazymiai, arraySize - masyvo dydį)
  # Šioje funkcijoje/metode apskaičiuojamas studento vidurkis pagal gautus kreditus iš dalykų ir pažymius
  def getVidurkis(studentoKreditai, studentoPazymiai, arraySize)

    #Du kintamieji sk1, sk2, kadangi jie string tipo, jie bus konvertuojami
    sk1 = 0
    sk2 = 0

    #Kadangi galutinis veiksmas bus dalyba, todėl aš iš anksto apsibrėžiu du kintamuosius dalmuo/daliklis, kad būtų papraščiau suprasti kodą
    dalmuo = sk1.to_i
    daliklis = sk2.to_i

    #Šiame cikle apsiskaičiuoju dalmenį
    #Šiame for cikle iteravimas bus tiek kartų, koks bus masyvo dydis, taip pat privalome atimti -1.
    #Nes jei masyvo dydis yra 5, .size funkcija toki skaičiu ir nurodys, bet masyvo inicializavimas prasideda nuo 0 pozicijos, todėl turime atimti -1.
    for i in 0..arraySize-1

      #Dalmuo šioje formulėje yra, studento pažymio bei kredito sandauga i-tojo elemento masyve bei jų visų suma kartu
     dalmuo = dalmuo + (studentoPazymiai[i].to_i * studentoKreditai[i].to_i)

    end

    #Šiame cikle apskaičiuoju daliklį
    for i in 0..arraySize-1

      #Daliklkis šioje formulėje yra, studento kreditų suma
      daliklis = daliklis +  studentoKreditai[i].to_i

    end




 #Galiausiai dalmuo yra padalinamas iš daliklios ir taip gaunamas studento vidurkis.
    # Rezultatas yra grąžinamas
    return dalmuo / daliklis
  end



  #Kadangi visi masyvai vieno dydžio, pagal viena iš mūsų sukurtu masyvų sužinome kokio dydžio tas masyvas su .size funkcija.
  arraySize = studentoPazymiai.size

  #Sukuriamas Program klasės objektas - class1, su kuriuo galėsime pasiekti toje klasėje esančius metodus,objektus ir kt.
  class1 = Program. new

  # Su class1 sukurtu objektų paduodame Program klasės viduje esančiame metode "getVidurkis" kintamuosiuos (masyvą StudentoKreditai, masyvą StudentoPazymiai, ir masyvo dydį)
  # Taip pat gautas vidurkis yra grąžinamas
  vidurkis = class1.getVidurkis(studentoKreditai, studentoPazymiai, arraySize)

  # Šioje vietoje grąžinama visa informacija apie studentą - (Vardas, Pavardė, Grupė ir Vidurkis ) viskas atvaizduojama ekrane - konsolėje.
  printf "\n  \n \n Results: \n"
  printf "Studento vardas: #{vardas} \n"

  printf "Studento pavarde: #{pavarde} \n"

  printf "Studento grupe: #{grupe} \n"

  printf "Studento vidurkis: #{vidurkis}"


end