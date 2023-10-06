//
//  WebService.swift
//  NewsMobilePaper
//
//  Created by Suleyman YAZICI on 19.02.2023.
//

import Foundation

class WebServices{
    
    func HaberleriIndrir (url : URL , completion : @escaping ([News]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { (data, response, error ) in
           
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                
            }else if let data = data {
                
                let HaberlerDizisi = try? JSONDecoder().decode([News].self, from: data)
               
                if let HaberlerDizisi = HaberlerDizisi{
                    completion(HaberlerDizisi)
                }
            }
            
        }.resume()
    }
}
