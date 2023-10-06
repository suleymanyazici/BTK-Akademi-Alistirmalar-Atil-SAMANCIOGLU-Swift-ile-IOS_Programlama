//
//  ViewController.swift
//  DortIslemHesapMakinesi
//
//  Created by Suleyman YAZICI on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ilkSayi: UITextField!
    
    @IBOutlet weak var ikinciSayi: UITextField!
    
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Toplama(_ sender: Any) {
        if let ilkDeger = Int(ilkSayi.text!){
            if let ikinciDeger = Int(ikinciSayi.text!){
                let sonuc = ilkDeger + ikinciDeger
                sonucLabel.text = String(sonuc)
            }
            else{
                sonucLabel.text = ("----")
            }
        }
        else{
            sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            
        }
    }
    
    @IBAction func Cikarma(_ sender: Any) {
        if let ilkDeger = Int(ilkSayi.text!){
            if let ikinciDeger = Int(ikinciSayi.text!){
                let sonuc = ilkDeger - ikinciDeger
                sonucLabel.text = String(sonuc)
            }
            else{
                sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            }
        }
        else{
            sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            
        }
    }
    
    @IBAction func Carpma(_ sender: Any) {
        if let ilkDeger = Int(ilkSayi.text!){
            if let ikinciDeger = Int(ikinciSayi.text!){
                let sonuc = ilkDeger * ikinciDeger
                sonucLabel.text = String(sonuc)
            }
            else{
                sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            }
        }
        else{
            sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            
        }
    }
    
    @IBAction func Bolme(_ sender: Any) {
        if let ilkDeger = Int(ilkSayi.text!){
            if let ikinciDeger = Int(ikinciSayi.text!){
                let sonuc  = (ilkDeger / ikinciDeger)
                sonucLabel.text = String(Float(sonuc))
            }
            else{
                sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            }
        }
        else{
            sonucLabel.text = ("Lütfen Sayısal Değerler giriniz")
            
        }
    }
    
    
}

