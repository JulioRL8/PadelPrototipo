//
//  RegistrarViewController.swift
//  PadelPrototipo
//
//  Created by Julio on 11/11/2020.
//  Copyright © 2020 Julio. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegistrarViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var contrasena: UITextField!
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var apellido: UITextField!
    @IBOutlet weak var botonRegistrar: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registrar(_ sender: Any) {
        
        if(email.text != nil && contrasena.text != nil){
            Auth.auth().createUser(withEmail: email.text ?? "", password: contrasena.text ?? "") {
                (result, error) in
                
                if let result = result, error == nil {
            
                    
                    let vc = self.storyboard?.instantiateViewController(identifier: "tabsb")
                    self.navigationController?.pushViewController(vc!, animated: true)
                    
                    
                    
                }else{
                    self.showAlert(mensaje: "Datos incorrectos")
                }
            }
        }else{
            self.showAlert(mensaje: "Usuario o contraseña no introducidos")
        }
    }
    
    func showAlert(mensaje: String){
        let alertController = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
