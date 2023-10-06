import UIKit

//   Loops   (Döngüler)

// While döngüsü bu döngü koşul sağlanana kadar devam eden bir döngüdür
// Kısa bi şekilde koşullardan bahsedecek olursak


5 == 5 // Eşitmi koşulu (Koşulların sonuçları bool değerdedir)
4 == 5
5 != 4 // Eşit değildir koşulu

4 < 5 // Küçüktür
5 > 4 // Büyüktür
10 <= 5 // Küçük eşit
20 >= 10 // Büyük Eşit


// Asıl konumuz olan While ile ilgili örnek verelim

var x = 0

while x <= 10
{
    print(x)
    x += 1
}

//For loopu

//Örneğin bir dizinin elemanlarını ekrana yazdıracak olursa - örnek olarak dizilerde for loop çok falza işimize yarayabilir akılda bulunsun

var myArray = ["Atıl", "Süleyman", "Mahmut", "Mehmet"]

print(myArray[0])

for isim in myArray
{
    print(isim.uppercased())
}


var numberArray = [10, 20, 30, 40, 50, 60, 70, 80, 90]

for number in numberArray
{
    print(number / 5 * 3)
}

for newNumber in numberArray
{
    print(newNumber)
}


// İF Controller

//Ekstra ve ve veya koşulu

// && işareti ve demektir iki tarafta doğru ise true değeri verir
4 == 4 && 3 == 3
4 == 5 && 3 == 3
// ||  işareti veya demektir iki taraftan biri doğruysa true değeri verir
4 == 2 || 4 == 3
4 == 5 || 3 == 3


var myAge = 25

if myAge <= 20
{
    print("Sen daha sebisun")
}
else if myAge > 21 && myAge < 30
{
    print("20 lu yaşlarındasın")
}
else if myAge > 31  && myAge < 40
{
    print("30 lu yaşlarındasın")
}
else
{
    print("Sen kartlaşmışsun")
}
