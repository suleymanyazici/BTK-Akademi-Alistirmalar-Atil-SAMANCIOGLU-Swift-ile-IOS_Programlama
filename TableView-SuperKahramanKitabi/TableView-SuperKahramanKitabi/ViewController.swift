//
//  ViewController.swift
//  TableView-SuperKahramanKitabi
//
//  Created by Suleyman YAZICI on 1.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  

    @IBOutlet weak var tableView: UITableView!
    var superKahramanIsimleri = [String]()
    var superKahramanResimleri = [String]()
    var secilenIsim = ""
    var secilenResim = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Ironman")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Captain America")
        
        //var superkahramanGorselleri = [UIImage]()
        //superKahramanGorselleri.append(UIImage(named: "batman")!))
        //şeklinde tanımlamada yapılabilirdi fakat görsel işlemesi mi daha kolay yoksa string mi bu yüzden burada değilde diğer vievcontrollerda tanımlama daha sağlıklı olur
        superKahramanResimleri.append("batman")
        superKahramanResimleri.append("superman")
        superKahramanResimleri.append("ironman")
        superKahramanResimleri.append("spiderman")
        superKahramanResimleri.append("captainamerica")
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenResim = superKahramanResimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanResmi = secilenResim
        }
    }
    
}
