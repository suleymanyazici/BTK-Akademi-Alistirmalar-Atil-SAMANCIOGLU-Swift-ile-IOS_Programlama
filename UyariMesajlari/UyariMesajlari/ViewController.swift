//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Suleyman YAZICI on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextFilled: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var againTextFilled: UITextField!
    
    var x = ""
    var y = ""
    var z = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func kayitButonunaTiklandi(_ sender: Any) {
        
        if emailTextFilled.text == "" {
            //Lütfen Emailinizi Giriniz!
            allertOlustur( x: "Hata Mesajı!", y: "Email Yanlış Girildi!", z: "Email hata mesajı kapatıldı")
        } else if passwordTextField.text == ""{
            //Lütfen Bir Şifre Giriniz
            allertOlustur( x: "Hata Mesajı!", y: "Lütfen Şifre Giriniz!", z: "Eksik Şifre hatası basıldı")
        } else if passwordTextField.text != againTextFilled.text {
            //Şifreler Uyuşmuyor
            allertOlustur( x: "Hata Mesajı!", y: "Şifreler Uyuşmuyor!", z: "Eşleşmeyen şifre hatası basıldı")
        } else {
            //Kayıt Başarılı
            allertOlustur( x: "SUCCSES", y: "Kayıt Başarılı", z: "Başarılı kayıt")
        }
        
        
    }
    
    func allertOlustur(x: String , y: String, z: String) {
        let uyariMesaji = UIAlertController(title: x, message: y, preferredStyle: UIAlertController.Style.alert)
       
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlerAction) in
            //Ok butonuna basılınca log düşmesi için yazıldı
            print(z)
        }
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
    }
    
}

 
