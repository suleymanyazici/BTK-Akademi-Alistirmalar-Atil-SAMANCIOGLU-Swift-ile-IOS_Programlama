//
//  detayVC.swift
//  SehirTanitim
//
//  Created by Suleyman YAZICI on 4.01.2023.
//

import UIKit

class detayVC: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var isimLabel: UILabel!
    
    @IBOutlet weak var bolgeView: UILabel!
    
    var secilenSehir :Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        isimLabel.text = secilenSehir?.isim
        bolgeView.text = secilenSehir?.bolge
        image.image = secilenSehir?.gorsel
        
    }
    
}
