//
//  ViewController.swift
//  Paylasma
//
//  Created by Suleyman YAZICI on 31.01.2023.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sifreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func girisYap(_ sender: Any) {
        if emailTextField.text != "" && sifreTextField.text != ""{
            Auth.auth().signIn(withEmail: emailTextField.text!, password: sifreTextField.text!) {
                (authdataresult, error) in
                if error != nil {
                    self.hataMesaji(titleInput: "Hata", messageInput: error?.localizedDescription ?? "Gİriş sırasında sorun oluştu")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }else{
            hataMesaji(titleInput: "Mail Ve Şifre Eksik", messageInput: "Email yada şifre eksik")
        }
        
    }
    
    
    @IBAction func kayitOl(_ sender: Any) {
        if emailTextField.text != "" && sifreTextField.text != "" {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: sifreTextField.text!) {
                (AuthDataResult, error) in
                if error != nil {
                    self.hataMesaji(titleInput: "Sunucu Hatası", messageInput: error?.localizedDescription ?? "Kayıt oluşurken hata aldınız lütfen tekrar deneyiniz")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else{
            hataMesaji(titleInput: "Email Yada Şifre Hatalı", messageInput: "Kullanıcı Email'i yada şifre de hata bulunmakta...")
        }
    }
    func hataMesaji(titleInput : String, messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
 }


