//
//  detailsVC.swift
//  TableView-SuperKahramanKitabi
//
//  Created by Suleyman YAZICI on 1.01.2023.
//

import UIKit

class detailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanResmi = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named:  secilenKahramanResmi)
        label.text = secilenKahramanIsmi
     
    }
    

  
}
