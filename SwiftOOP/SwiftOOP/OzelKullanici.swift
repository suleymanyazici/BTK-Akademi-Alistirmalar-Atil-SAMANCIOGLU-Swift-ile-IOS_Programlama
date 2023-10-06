
//
//  OzelKullanici.swift
//  SwiftOOP
//
//  Created by Suleyman YAZICI on 1.01.2023.
//

import Foundation

class OzelKullanici : Kullanici {
    
    func ozelKullanici(){
        print("ozel kullanici fonksiyonu çalişti")
    }
    // override burada aynı fonksiyona ek olarak bu classta tanımlanan şeyleride yapabilmek için kullanıır yani aynı fonksiyona ek olarak bu classın özellikleride içine eklenir ve sadece bu classtan tanımlanan değişkenler için bir anlam ifade eder
    override func ornekFonksiyon() {
        //içeride    super   i kullanarak kalıtım aldığımız sınıftaki özellikleri çekip kendisine ekler     self class için ne anlama geliyorsan   super    da buradda bu anlama gelir
        super.ornekFonksiyon()
        print("özelden ornek fonksiyon çalıştırıldı")
    }
}
