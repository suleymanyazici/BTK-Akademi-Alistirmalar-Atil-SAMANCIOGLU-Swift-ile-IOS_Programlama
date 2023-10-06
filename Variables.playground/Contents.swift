import UIKit

//Değişken Tanımlama(string)
//----------------------------------------------------------------------------------------------------------------------------
// var---> yani variable yanii değişken demek yeni bir değer tanımlamak için kullanılır
// Metin ifadeleri String biçimindedir tırnak aralarına yazılır
var myName = "Süleyman"
var mySurname = "YAZICI"
myName.uppercased()
myName.append("1")
print(myName + " " + mySurname)
myName.count

//Değişken Tanımlama(İnteger)
//--------------------------------------------------------------------------------------------------------------------------------
// Sayısal ifadelerde kendi aralarında birkaç şekle ayrılır tam sayılara İnteger yani Xcdoe de belirtildiği şekilde int
var firstNumber = 50 * 10

var internettenGelenVeri = 50 //bu şekilde cümle başlıklarını büyütürde yazım yaparsak adı camelCase dir
internettenGelenVeri.isMultiple(of: 2)
var internetten_gelen_veri = 55 // bu şekilde yazım şeklinede snake_case denir



//Değişken Tanımlama(Float-Double)
//--------------------------------------------------------------------------------------------------------------------------------
//Kesirli ifadeler ise 2 ye ayrılır kaç bitte tulutduğu ile ilgilidir bunlardan biri double biri float float 32 bite kadar double ise 64 bit büyüklüktedir
// let----> let ise sabit bir değer belirliyecekisek kullanırız
// let neden kullanılır örneğin bu değişken pi sayısı dünya genelinde saabit bir sayı bu sayıyı değişmiyeceksek var ile tanımlamamıza gerek yok
let pi  = 3.14




//Değişken Tanımlama(Boolean)
//--------------------------------------------------------------------------------------------------------------------------------
//Son değerimiz ise Boolean yani True(Doğru) false ve False(Yanlış) şeklinde iki değer vardır Bool şeklinde kullanılır.
 var benimBooleanım = true
benimBooleanım = false
// Örneğin bu değer Bool olduğu için bu değere herhangi bir int değer atmaya çalışalım
// benimBooleanım = 30
// Bu tanımlamada hata aldığımızı görürüz



//Matematiksel İşlemler
//--------------------------------------------------------------------------------------------------------------------------------
// Basit matematiksel işlemler yapalım
let benimNumaram = 40
let benimDigerNumaram = 6

benimNumaram / benimDigerNumaram // Bu hesabın sonucu normalde 6,666666 şeklinde olması gerekirken ilk başta tanımlamamız İnt olduğundan sonuçta İnt olacaktır
benimNumaram * benimDigerNumaram
benimNumaram - benimDigerNumaram
benimNumaram + benimDigerNumaram

let benimIkinciNumaram = 40.1
let benimIkinciDigerNumaram = 6.2

benimIkinciNumaram / benimIkinciDigerNumaram
benimIkinciNumaram * benimIkinciDigerNumaram
benimIkinciNumaram - benimIkinciDigerNumaram
benimIkinciNumaram + benimIkinciDigerNumaram





// Değişkenlerin bellekte kapladığı yerlerle alakalı
//-------------------------------------------------------------------------------------------------------------------------------
// int double gibi değerlerin bazen boyutlarını büyütüp küçültmek isteyebiliriz bunun içinde aşağıdaki gibi tanımlamalar yapabiliriz,
let a : Int8 = 1 //8 bitlik yer kaplar
let b : Int16 = 12 // 16 bitlik yer kaplar gibi gibi bu değişimleri kritik yerlerde kullanabilirz

//yada değerini şuanda tanımlamak istemediğimiz bir değer olabilir bu değeri başka yerden alabiliriz bu seferde bu zamanda da aşağıdaki şekildeki örneklerden kontrol edebiliriz
// defining , tanımlama
let c : String
         // daha sonradan tanımlıcamız bunlarada initializationyani değer atama denir  değişken let bile olursa ilk defa tanımlamaya kızmaz yani
c = "topram"



//Bir değişkenin değerini başka bir değere dönüştürme

let d : Int = 20 //şuanda değişkenimiz tamsayı
let benimD : String

benimD = String(d)// burada  d değişkeninin değerini stringe çevirip string değer olan  benimD  ye eşitlemiş olduk




