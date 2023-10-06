import UIKit


// Fonksiyonlar kod bloklarıdır istenirse içerisinde 5 bin satır kod bulunabilir ve güzel yanıda bu 5 bin satır kodu 1 satır yardımıyla istediğimiz yerde istediğimiz zaman çağırabiliriz buda bize temiz ve performanslı bir uygulama yapmamıza olanak sağlar

func firstFunction()
{
    print("Süleyman YAZICI")
    //Bu süslü parantezler içeriisine ne yazarsak fonksiyonu aşağıdaki gibi çağırdığımızda çalışacaktır
}

firstFunction()//Bu satırda fonksiyonu çağırarak içerisinde yazan kod satırlarının hepsini kullanırız

//Parametre || İnput

func secondFunction(a : String)
{
    print(a)
}

secondFunction(a: "Süleyman")

//Output || Return  -----> burada ise fonksiyonumuzu bir değişken olduğunu hatırlatıcaz

func toplama(a : Int , b : Int)
{
    print(a + b)
}

toplama(a : 10, b : 20)

//var numara = toplama(a : 20, b : 30)
print(toplama) //bir üst satırdaki değişken tanımlandı fakat numarayı tek başına print ettirmek isterken sıkıntı aldık bu çünkü bu fonksiyon birşey döndürmediği için bu şekilde bir hata verdi ve çıktıda boş parantez gösterdi çözümü ise -> kullanmak

func carpma(c : Int , d : Int) -> Int
{
    return c * d
}
var sonuc = carpma(c: 3, d: 5)
print(sonuc)// Burada ise gayet başarılı bir şekilde sonuç ekrana yazdırıldı

// NOT : İLLA İNT KULLANMAK ZORUNDA DEĞİLİZ BOOL FELAN HERHANGİ BİRŞEY TERCİH EDEBİLİRİZ

// ÖRNEK

func buyukKucuk(x : Int , y : Int) -> Bool
{
    if x < y
    {
        return true
    }
    else
    {
        return false
    }
}

var dogruYanlis = buyukKucuk(x: 5, y: 6)
print(dogruYanlis)

var yanlisDogru = buyukKucuk(x: 6, y: 5)
print(yanlisDogru)
