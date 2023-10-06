//
//  main.swift
//  Tuple
//
//  Created by Suleyman YAZICI on 17.02.2023.
//

import Foundation

print("Hello, World!")

var tuple = (1, 2)
print(tuple.0)

let tuple2 = (10, 20)
print(tuple2.1)

let tuple3 = ("Silo", 20)
print(tuple3)

var tuple4 = ("Siloo", 20, [1,2,3,4,5])
print(tuple4.2[2])

//tuple larda illa index kullanmamzı gerekmez istersek anahtar-değer şeklindede yapabiliriz

let yeniTuple = (isim : "Süleyman", soyisim : "Yazıcı")
print(yeniTuple)
