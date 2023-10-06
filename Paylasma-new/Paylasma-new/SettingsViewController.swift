//
//  SettingsViewController.swift
//  Paylasma-new
//
//  Created by Suleyman YAZICI on 9.02.2023.
//

import UIKit
import Firebase
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButton(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewContoller", sender: nil)
        }catch{
            print("Çıkışta bi hata yaşadık moruk")
        }
        
    }
    

}
