import UIKit


var ilkDizim = ["Süleyman" , "Saadet" , "Melek" , "Recep" ]

//Diziler bu şekilde tanımlanır içerisinde birden fazla veri tutabilirler içlerinde istediğimiz verileri tutabiliriz
//Verileri almak için dizinin kaçıncı elemanını istediğimizide(index)   Dizi[3] şeklinde çağrılır fakat bir ekstramız var
//Dizinin ilk elemanı 0 dır ikinci 1 üçüncü 2 olarak devam eder ilk değer sıfırdan başladığı için 0, 1, 2, 3,....
//Şeklinde ilerler

ilkDizim[2].uppercased()

ilkDizim[3] = "Emre"
print(ilkDizim)
    

var ikinciDizim = [10, 20, 30, 40, 50]
ikinciDizim[1] * 5 / 10

var karisikDizim = [100, 200, "Atıl", true, false] as [Any] // dizimizin içerisinde karışık ifadeler bulunduğu için  as any ibaresini koymamız şart aksi halde hata verebilir

//as --> casting any --> any object
var yeniDegisken = karisikDizim[2] as! String //ünlem işareti emin olduğum anlamına gelir

karisikDizim.append("Husika")

karisikDizim.count

karisikDizim[karisikDizim.count - 2]
karisikDizim.last

//karışık  sayılar içeren bir dizi oluşturup küçükten büyüğe sıralayabiliriz

var karisikSayilar = [4, 5, 2 , 50, 100, 24]
karisikSayilar.sort()

var karisikHarfler = ["b", "x", "r", "y", "w", "a"]
karisikHarfler.sort()



// 2. Collection olan SET

var numaralar = [1, 1, 1, 1, 2, 3, 4] // bu değerde 1 ler oldukça fazla ve herbiri farklı değer tutuyor

var numaralar2 : Set = [1, 1, 1, 1, 2, 3, 4] // burada ise 1 ler sadece 1 defa kullanılır

numaralar2.remove(4) //burada 4 numarasını çıkarır 5. indexi değil set te index yoktur değerler vardır

//Bu işlem sadece sayılarda geçerli değildir

var sehirler :Set = ["Istanbul" , "Istanbul" , "Istanbul" , "Adana" , "Isparta"]
sehirler.remove("Isparta")
sehirler
//iki set yada diziyi birbiriyle birleştirebiliriz bu sırada ikisinde olan ortakları set olduğu zaman dizi silinir tek 1 adeti  kullanılır

let ilkSet : Set = [10, 20, 30, 40]
let ikinciSet : Set = [30, 40, 50, 60]

let birlesim = ilkSet.union(ikinciDizim)

// 3. Collection olan Dictionary (Sözlük)

// Dictionary de bir değer belirlediğimiz zaman o değere birde anahtar kelime atayabiliyoruz aşağıdaki örnekte gösterelim
// Key-Value pairing --- Anahtar kelime- değer eşleşşmesi

var meyve = ["Elma" , "Armut" , "Muz"]
var kalori = [100, 150, 200]

meyve[0]
kalori[0] // bu şekilde değerleri çağırabiliriz fakat 100 200 1000 2000 değer olduğunda bu hiçte sağlıklı bir biçim olmaz bu yğzden dictionary ler işimizi çok kolaylaştırır.


var meyveKalorileri = ["Armut" : 100 , "Elma" : 150 , "Karpuz" : 400]
var kaloriMeyve = [100 : "Armut", 150 : "Elma", 400 : "Karpuz"]

meyveKalorileri.keys
meyveKalorileri.values

kaloriMeyve.keys
kaloriMeyve.values

// sözlüklerdeki temel amaç bir değeri anahtar sözcüğe emanet etmektir


