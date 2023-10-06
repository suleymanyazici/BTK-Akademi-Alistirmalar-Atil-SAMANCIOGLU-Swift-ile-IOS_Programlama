//
//  main.swift
//  SwiftOOP
//
//  Created by Suleyman YAZICI on 1.01.2023.
//

import Foundation

let suleyman = Kullanici(isim: "Süleyman", yas: 23, meslek: "Yazılım", tip: .adminKullanici)
/*
kullanici.isim = "Süleyman"
kullanici.yas = 22
kullanici.meslek = "Yazılım"
*/
print("İsim : \(suleyman.isim) \nYaş : \(suleyman.yas) \nMeslek : \(suleyman.meslek) \nKullanıcı Yetkisi : \(kullaniciYetkisi.adminKullanici)")

let ismet = OzelKullanici(isim: "İsmet", yas: 25, meslek: "Bilişim", tip: .adminKullanici)
print(ismet.isim)

suleyman.ornekFonksiyon()

ismet.ornekFonksiyon()

ismet.ozelKullanici()
