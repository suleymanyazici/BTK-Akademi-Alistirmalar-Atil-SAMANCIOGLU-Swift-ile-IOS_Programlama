//
//  ViewController.swift
//  Haritalar
//
//  Created by Suleyman YAZICI on 13.01.2023.
//

import UIKit
import CoreLocation
import MapKit
import CoreData

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var isimText: UITextField!
    @IBOutlet weak var yorumText: UITextField!
    @IBOutlet weak var mapKit: MKMapView!
    
    let locationManager = CLLocationManager()
    var secilenLatitude = Double()
    var secilenLongitude = Double()
   
    var secilenIsim = ""
    var secilenId : UUID?
    
    var annotationIsim = ""
    var annotationNot = ""
    var annotationLatitude = Double()
    var annotationLongitude = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        locationManager.delegate = self
        mapKit.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest//kullanıcının konumunu hangi kalitede olmasını istediğini seçtiğimiz satırdır
        locationManager.requestWhenInUseAuthorization()//kullanıcıdan izin almak için ekranda soru sorar ama info içerisine mesajı yazmak gerekir
        locationManager.startUpdatingLocation()
        mapKit.showsUserLocation = true
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(selectState(gestureRecognizer: )))
        gestureRecognizer.minimumPressDuration = 1
        mapKit.addGestureRecognizer(gestureRecognizer)
        
        if secilenIsim != "" {
            //Eleman Core datadan veri çekmek istiyo
            if let uuidString = secilenId?.uuidString{
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let context = appDelegate.persistentContainer.viewContext
                
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Yer")
                fetchRequest.predicate = NSPredicate(format: "id = %@", uuidString)
                fetchRequest.returnsObjectsAsFaults = false
                
                do{
                    let sonuclar = try context.fetch(fetchRequest)
                    if sonuclar.count > 0 {
                        for sonuc in sonuclar as! [NSManagedObject]{
                            if let isim = sonuc.value(forKey: "isim") as? String{
                                annotationIsim = isim
                                
                                if let not = sonuc.value(forKey: "yorum") as? String{
                                    annotationNot = not
                                    
                                    if let latitude = sonuc.value(forKey: "latitude") as? Double{
                                        annotationLatitude = latitude
                                        
                                        if let longitude = sonuc.value(forKey: "longitude") as? Double{
                                            annotationLongitude = longitude
                                            
                                            let annotation = MKPointAnnotation()
                                            annotation.title = annotationIsim
                                            annotation.subtitle = annotationNot
                                            
                                            let coordinate = CLLocationCoordinate2D(latitude: annotationLatitude, longitude: annotationLongitude)
                                            annotation.coordinate = coordinate
                                            
                                            mapKit.addAnnotation(annotation)
                                            isimText.text = isim
                                            yorumText.text = not
                                        }
                                    }
                                }
                            }
                        }
                    }
                }catch{
                    print("hata var emmi")
                }
            }
        }else{
            //Eleman yeni data kaydetmek istiyo
        }
    }
    @objc func selectState(gestureRecognizer : UILongPressGestureRecognizer){
        if gestureRecognizer.state == .began{
            
            let point = gestureRecognizer.location(in : mapKit)
            let pointConventer  = mapKit.convert(point, toCoordinateFrom: mapKit)
            secilenLatitude = pointConventer.latitude
            secilenLongitude = pointConventer.longitude
            let annotation = MKPointAnnotation()
            annotation.coordinate = pointConventer
            annotation.title = isimText.text
            annotation.subtitle = yorumText.text
            mapKit.addAnnotation(annotation)
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //print(locations[0].coordinate.latitude)
        //print(locations[0].coordinate.longitude)
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapKit.setRegion(region, animated: true)
        
    }
    
    @IBAction func kaydetButton(_ sender: Any) {
        
        let appDelegate  = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newLocation = NSEntityDescription.insertNewObject(forEntityName: "Yer", into: context)
        
        
        
        newLocation.setValue(isimText.text, forKey: "isim")
        newLocation.setValue(yorumText.text, forKey: "yorum")
        newLocation.setValue(secilenLatitude, forKey: "latitude")
        newLocation.setValue(secilenLongitude, forKey: "longitude")
        newLocation.setValue(UUID(), forKey: "id")
        
        do{
            try context.save()
            print("başarılı emmi")
        }catch{
            print("hata var emmi")
        }
        
      
    }
}




