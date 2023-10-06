//
//  Kullanici.swift
//  SwiftOOP
//
//  Created by Suleyman YAZICI on 1.01.2023.
//

import Foundation

enum kullaniciYetkisi{
    case adminKullanici
    case normalKulllanici
    case yetkisizKullanici
}
class Kullanici {
    
    var isim : String
    var yas : Int
    var meslek : String
    var tip : kullaniciYetkisi
    
    
    //İnitalizer
    //tanımlaması yapılmamış değişkenler için k 2
    init(isim: String, yas: Int, meslek: String, tip : kullaniciYetkisi) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
        self.tip = tip
        print("init çalıştı")
    }
    func ornekFonksiyon(){
        print("\(isim) için örnek fonksiyon çalıştırıldı")
    }
}


