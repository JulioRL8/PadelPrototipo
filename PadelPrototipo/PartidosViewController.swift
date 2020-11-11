//
//  PartidosViewController.swift
//  PadelPrototipo
//
//  Created by Julio on 11/11/2020.
//  Copyright © 2020 Julio. All rights reserved.
//

import UIKit

class PartidosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var listaPartidos: [Partido] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaPartidos.append(Partido(nombre: "Hola", apellidos: "que", fecha: Date()))
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaPartidos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "celda")!
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
