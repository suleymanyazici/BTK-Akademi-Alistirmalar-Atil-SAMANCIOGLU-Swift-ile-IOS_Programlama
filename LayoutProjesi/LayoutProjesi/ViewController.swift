//
//  ViewController.swift
//  LayoutProjesi
//
//  Created by Suleyman YAZICI on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let widht = view.frame.size.width
        let height = view.frame.size.height
        
        //Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: widht * 0.5 - 50, y: height * 0.5 - 50, width: 100, height: 100)
        view.addSubview(myLabel)
        
        //Button
         let myButton =  UIButton()
        myButton.setTitle("Benim Butonum", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: widht * 0.5 - 100, y: height * 0.65 - 50, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.benimFonksiyonum) , for: UIControl.Event.touchUpInside)
    }

   @IBAction func benimFonksiyonum() {
        print("kullanıcı butona tıkladı")
    }

}

