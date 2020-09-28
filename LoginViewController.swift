//
//  LoginViewController.swift
//  TrabalhoAndreHuberViniciusMartins
//
//  Created by COTEMIG on 23/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
        
        @IBAction func login (_ sender: Any) {
            let user = userText.text
            let password = passwordText.text
            
            if user == "admin" && password == "1234"{
                
                
                performSegue(withIdentifier: "segueLogin", sender: nil)
            } else{
                let alert = UIAlertController(title: "Erro", message: "Usuário ou senha inválidos.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK!", style: .default))
                present(alert, animated: true)
            }
            
        }
    }
    
    struct Login: Codable {
        let user: String
        let password: String
    }

    


