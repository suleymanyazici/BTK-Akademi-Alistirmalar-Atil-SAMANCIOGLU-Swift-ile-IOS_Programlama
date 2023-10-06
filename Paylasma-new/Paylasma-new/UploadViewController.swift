//
//  UploadViewController.swift
//  Paylasma-new
//
//  Created by Suleyman YAZICI on 9.02.2023.
//

import UIKit
import Firebase

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var yorumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselSec))
        imageView.addGestureRecognizer(gestureRecognizer)
        // Do any additional setup after loading the view.
        
    }
    @objc func gorselSec(){
        let pickerControler = UIImagePickerController()
        pickerControler.delegate = self
        pickerControler.sourceType = .photoLibrary
        present(pickerControler, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)

        }

    @IBAction func uploadButton(_ sender: Any) {
        let storage = Storage.storage()
        let storageReferance = storage.reference()
        let mediaFolder = storageReferance.child("media")
        
        if let data = imageView.image?.jpegData(compressionQuality: 0.5){
            let imageReferance = mediaFolder.child("image.jpeg")
            
            imageReferance.putData(data, metadata: nil) { (storagedata, error) in
                if error != nil{
                    print(error.localizedDescription)
                }
            }
        }
        
    }
    
}
