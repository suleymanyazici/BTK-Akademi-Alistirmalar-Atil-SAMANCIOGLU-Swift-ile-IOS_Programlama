//
//  SettingsViewController.swift
//  Paylasma
//
//  Created by Suleyman YAZICI on 5.02.2023.
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
            performSegue(withIdentifier: "toViewController", sender: nil)
            }catch{
                print("Çıkışta Bir Sorun Yaşandı")
        }
    }
    
}
