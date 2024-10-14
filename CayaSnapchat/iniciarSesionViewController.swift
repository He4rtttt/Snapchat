//
//  ViewController.swift
//  CayaSnapchat
//
//  Created by Kevin Caya Poma on 14/10/24.
//

import UIKit
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            }else{
                print("Inico de sesion exitos")
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

