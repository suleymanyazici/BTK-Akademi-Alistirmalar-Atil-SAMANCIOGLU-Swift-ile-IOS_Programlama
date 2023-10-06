//
//  ViewController.swift
//  Paylasma-new
//
//  Created by Suleyman YAZICI on 7.02.2023.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var sifreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if mailTextField.text != "" && sifreTextField.text != ""{
            Auth.auth().signIn(withEmail: mailTextField.text!, password: sifreTextField.text!){
                (authdataresult, error) in
                if error != nil{
                    self.hataMesaji(titleInput: "Hata", messageInput: error?.localizedDescription ?? "Giriş Sırasında Sorun Oluştu")
                }else{
                    self.performSegue(withIdentifier: "toTabBarVC", sender: nil)
                }
            }
        }else{
            
            self.hataMesaji(titleInput: "Email Yada Şifre Hatalı", messageInput: "Kulanıcı Email Yada Şifrede Hata Bulunakta....")
    }
    }
        @IBAction func kayıtButton(_ sender: Any) {
            if mailTextField.text != "" && sifreTextField.text != "" {
                Auth.auth().createUser(withEmail: mailTextField.text!, password: sifreTextField.text!){
                    (authdataresult, error) in
                    if error != nil{
                        self.hataMesaji(titleInput: "Hata!!!", messageInput: error?.localizedDescription ?? "Kayıt oluşturulurken hata aldınız lütfen tekrar deneyiniz")
                    }else{
                        self.performSegue(withIdentifier: "toTabBarVC", sender: nil)
                    }
                }
            }else{
                self.hataMesaji(titleInput: "Mail Yada Şifre Eksik", messageInput: "Mail Yada Şifre Girmemişin Reis...")
            }
        }
        func hataMesaji(titleInput : String, messageInput : String){
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
    }

