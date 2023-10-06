import UIKit


var i = 0

repeat
{
    print(i)
    i += 1
}
while i < 10
print("son")

//-----OPTİONAL--------
//Gelelim asıl konumuz olan opsiyonellere
//Opsiyonller programlama sırasında birçok yerde işimize yarar ilk örnek aşağıdaki gibi dir buradaki soru işaretleri programımızın çökmemesine olanak sağlar
//var benimIsmim : String
//benimIsmim.uppercased()
//benimIsmim = "Süleyman"

// Üst satırda yorum satırında olan örnekte soru işartei yoktur bu programın çökmesine neden olacaktır aşağıdaki gibi soru işaretleri koymak mecburiyetindeyiz bu da BURADA DEĞER OLABİLİR FAKAT OLMAYADABİLİR anlamına gelir.
var benimIsmim : String?

benimIsmim?.uppercased()

benimIsmim = "Süleyman"


//Gelelim olayın ikinci kısmına ikinci kısımda ! ünlemi göreceğiz
//Buradaki ünlemin anlamı BAK KARDEŞİM BEN KALIBIMI BASARIMKİ BURADAKİ SONUÇ İNT DİR fakat int olmayadabilir oladabilir burada mesuliyet üstlenerek iş yapmış oluruz

//var kullaniciNumarasi = "20"
//force unwrapping
//var sonuc = Int(kullaniciNumarasi)! * 5

//Üstteki örnektede karşılaştığımız üzere herşey kesin değildir uygulamanın crash olmaması gereklidir
//Bu konudada ne yapabiriliz aşağıdaki örnekte olduğu gibi ?? kullanarak eğerki nil değer gelirse uygulamayı crash etme al şu değeri bas geç
var kullaniciNumarasi = "Süleyman"
var sonuc = (Int(kullaniciNumarasi) ?? 1) * 5
//Bu örneklede sadece nil değer geldiğinde bu işlemi yaptığını görmüş olduk
var kullaniciNumarasi2 = "10"
var sonuc2 = (Int(kullaniciNumarasi2) ?? 1) * 5

//Daha safe birşey yazmak istersek eğer if let kullanmamız bizim için çok daha sağlıklı olacaktır

if let yeniSonuc = Int(kullaniciNumarasi)
{
    print(yeniSonuc * 5)
}
else
{
    print("Lütfen rakkam gir")
}
if let yeniSonuc2 = Int(kullaniciNumarasi2)
{
    print(yeniSonuc2 * 5)
}
else
{
    print("yanlış")
}

