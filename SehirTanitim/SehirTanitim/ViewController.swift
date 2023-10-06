//
//  ViewController.swift
//  SehirTanitim
//
//  Created by Suleyman YAZICI on 4.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage(named: "ankara")!)
        let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel: UIImage(named: "izmir")!)
        let samsun = Sehir(isim: "Samsun", bolge: "Orta Karadeniz", gorsel: UIImage(named: "samsun")!)
        let rize = Sehir(isim: "Rize", bolge: "Karadeniz", gorsel: UIImage(named: "rize")!)
        sehirDizisi = [istanbul, samsun, rize, ankara, izmir]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "todetayVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetayVC" {
            let destinationVC = segue.destination as! detayVC
            destinationVC.secilenSehir = kullaniciSecimi
            
        }
    }
    
    }


