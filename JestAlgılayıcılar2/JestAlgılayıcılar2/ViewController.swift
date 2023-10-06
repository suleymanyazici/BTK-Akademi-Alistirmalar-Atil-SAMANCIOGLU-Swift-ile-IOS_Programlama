//
//  ViewController.swift
//  JestAlgılayıcılar2
//
//  Created by Suleyman YAZICI on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    var ankara = true
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func gorselDegistir() {
        
        if ankara == false{
            imageView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        } else {
            imageView.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            ankara = false
        }
        
    }

}

