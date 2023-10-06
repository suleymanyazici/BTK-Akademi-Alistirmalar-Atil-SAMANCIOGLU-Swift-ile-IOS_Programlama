//
//  main.swift
//  SwitchCase
//
//  Created by Suleyman YAZICI on 17.02.2023.
//

import Foundation

print("Hello, World!")
//eğer switch case olmasa bunu else if ile yapabilirdik fakat uzadıkça uzuyo


let gunSayisi = 9
var gunStringi = ""
/*
if gunSayisi == 1{
    gunStringi = "Pazartesi"
}else if gunSayisi == 2 {
    gunStringi = "Salı"
}else if gunSayisi == 3 {
    gunStringi = "Çarşamba"
}else{
    gunStringi = "Pazar"
}
print(gunStringi)
*/

// Switch-Case

switch gunSayisi{
case 1 :
    gunStringi = "Pazartesi"
case 2 :
    gunStringi = "Salı"
case 3 :
    gunStringi = "Çarşamba"
case 4 :
    gunStringi = "Perşembe"
case 5 :
    gunStringi = "Cuma"
case 6 :
    gunStringi = "Cumartesi"
default:
    gunStringi = "Pazar"
}
print(gunStringi )
