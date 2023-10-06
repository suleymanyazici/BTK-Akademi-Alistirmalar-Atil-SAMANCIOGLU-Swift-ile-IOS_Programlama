//
//  main.swift
//  ProtocolOrnek
//
//  Created by Suleyman YAZICI on 19.02.2023.
//

import Foundation

protocol Language{
    func reading()
    func writing()
    func listening()
    func homework()
    func repetiton()
}


class English : Language{
    func reading() {
        print("İngilizce okumalısın")
    }
    
    func writing() {
        print("ingilizce yazmalısın")
    }
    
    func listening() {
        print("ingilizce dinlemelisin")
    }
    
    func homework() {
        print("ingilizce ev ödevi yapmalısın")
    }
    
    func repetiton() {
        print("ingilzice tekrar etmelisin")
    }
    

}

class French : Language{
    func reading() {
        print("fransızca okumalısın")
    }
    
    func writing() {
        print("fransızca yazmalısn")
    }
    
    func listening() {
        print("fransızca dinlemelisin")
    }
    
    func homework() {
        print("fransızca ev ödevi yaplaısın")
    }
    
    func repetiton() {
        print("fransızca tekrar etmelisin")
    }
    
    
    
}

class Germany : Language{
    func reading() {
        print("almanca okumalısın")
    }
    
    func writing() {
        print("almanca yazmalısn")
    }
    
    func listening() {
        print("almanca dinlemelisin")
    }
    
    func homework() {
        print("almanca ev ödevi yaplaısın")
    }
    
    func repetiton() {
        print("almanca tekrar etmelisin")
    }

}


class Turkish : Language{
    func reading() {
        print("fransızca okumalısın")
    }
    
    func writing() {
        print("fransızca yazmalısn")
    }
    
    func listening() {
        print("fransızca dinlemelisin")
    }
    
    func homework() {
        print("fransızca ev ödevi yaplaısın")
    }
    
    func repetiton() {
        print("fransızca tekrar etmelisin")
    }
}

let ayse = Germany()
ayse.listening()
let fatma = French()
fatma.homework()
let ismail = English()
ismail.writing()
let hans = Turkish()
hans.reading()
let husika = English()
husika.repetiton()



