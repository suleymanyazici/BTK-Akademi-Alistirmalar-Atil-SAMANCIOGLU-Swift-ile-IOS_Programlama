//
//  main.swift
//  IleriSeviyeSwift
//
//  Created by Suleyman YAZICI on 16.02.2023.
//

import Foundation

print("Hello, World!")

//Struct---inheritance yok --  f(irst)i(nput)l(ast)o(utput) filo (RAM) -- daha hızlı ve daha basit -- value type -- immutable
//Class----inheritance var --  f(irst)i(nput)f(irst)o(utput) fifo (RAM) -- referance type - mutable
let userClass = UserClass(isim: "Süleyman", yas: 23, meslek: "Amele")
print(userClass.isim)
var userStruct = UserStruct(isim: "Ahmet", yas: 23, meslek: "Kalıpçı")// Struct ta let kullanırsak eğer değeri değiştirmek için daha sonra atadığımız şeyler setlenmeyebilir. Bu yüzden var kullanırızki 19 . satırda yazılan kodda hata almayalım.
print(userStruct.isim)

userClass.yas = 25
print(userClass.yas)
userStruct.yas = 25
print(userStruct.yas)

let userClassCopy = userClass
var userStructCopy = userStruct

print(userClassCopy.yas)
print(userStructCopy.yas)

userClassCopy.yas = 26
userStructCopy.yas = 26

print(userClassCopy.yas)//-->26
print(userStructCopy.yas)//-->26
//Satırlar ilerledikçe Struct ve Class arasındaki farkları daha yakınen görmğş bulunmaktayız burada gördüğümüz üzere ikisinide kopyaladık ve kopyaların değerlerini değiştirdik fakat 36 ve 37 nolu satırlardaki kodlar çalıştığında aslında sadece Struct ta kendine tanımlanan değer veriliyor Class ta ise kopyaya tanımlanan çıkıyor

// Bunun sebebi ise Class ın refferance type olmasıdır Struct ın ise value type olmasıdır

//Refferance type -- Class -- Kopyalama yapılsa bile tek bir obje olur tek objeye bağlı iki referans olur sadece

//value type -- Struct -- kopyalama yapıldığında iki obje oluşur.
print(userClass.yas)//-->26
print(userStruct.yas)//-->25
