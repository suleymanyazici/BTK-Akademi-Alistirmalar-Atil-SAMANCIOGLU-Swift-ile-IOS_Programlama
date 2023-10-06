//
//  main.swift
//  GuardLet
//
//  Created by Suleyman YAZICI on 17.02.2023.
//

import Foundation

print("Hello, World!.")

//İf lete benzer fakat burada olmazise bunu yap şeklinde işler

// Aşağıdaki iki örnekte if let ve guard let ile aynı şeyleri yazalım

//İF LET

let numaraStringi = "5"

func inteCevirenIfLetFonksiyonu (string : String) -> Int {
    if let benimIntegerim = Int(string){
        return benimIntegerim
    }else{
        return 0
    }
    
}
print(inteCevirenIfLetFonksiyonu(string: numaraStringi))

func inteCevireGuardLetFonksiyonu (string : String) -> Int{
    guard let benimInteger = Int(string) else {
     return 0
    }
    return benimInteger
    
}
print(inteCevireGuardLetFonksiyonu(string: numaraStringi))
