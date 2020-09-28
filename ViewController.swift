//
//  ViewController.swift
//  TrabalhoAndreHuberViniciusMartins
//
//  Created by COTEMIG on 21/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//
import UIKit

import Foundation



class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var imageView: UIImageView!
    
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        api()
        
    }
    
    
    
    private func api(){
        
        let stringURL = "https://5f688defdc0bff0016f439c8.mockapi.io/produtos/1"
        
        
        
        if let url = URL(string: stringURL){
            
            let urlSession = URLSession.shared.dataTask(with: url) { data, response, error in
                
                if let data = data {
                    
                    do {
                        
                        let cdObjeto = try JSONDecoder().decode(CdApi.self, from: data)
                        
                        print(cdObjeto.name)
                        
                        print(cdObjeto.image)
                        
                        print(cdObjeto.description)
                        
                        print(cdObjeto.price)
                        
                    } catch {
                        
                        print("Erro de parse")
                        
                    }
                    
                }
                
            }
            
            urlSession.resume()
            
        }
        
    }
    
    
    
    extension ViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return 10
            
        }
        
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            <#code#>
            
        }
        
    }
    
}



struct CdApi: Codable {
    
    let name: String
    
    let image: String
    
    let description: String
    
    let price: String
    
}
