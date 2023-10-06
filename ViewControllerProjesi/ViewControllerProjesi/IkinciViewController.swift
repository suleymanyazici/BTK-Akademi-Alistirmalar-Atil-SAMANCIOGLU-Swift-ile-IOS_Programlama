//
//  IkinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Suleyman YAZICI on 25.12.2022.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var bulunanSifreLabel: UILabel!
   
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bulunanSifreLabel.text = verilenSifre
    }
    

    
}
