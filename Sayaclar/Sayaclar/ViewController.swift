//
//  ViewController.swift
//  Sayaclar
//
//  Created by Suleyman YAZICI on 31.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var timer = Timer()
    var kalanZaman = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Kalan zaman:  \(kalanZaman)"
        
    }

    
    @IBAction func baslatButton(_ sender: Any) {

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonksiyonu() {
        kalanZaman = kalanZaman - 1
        label.text = "Kalan Zaman \(kalanZaman)"
        if kalanZaman == 0 {
            label.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 15
        }
            
        }
    }
    


