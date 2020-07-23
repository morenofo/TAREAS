//
//  ViewController.swift
//  Prueba6
//
//  Created by OSCAR on 23/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let misMeses = ["Enero", "Febrero","Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre","Diciembre"]
    private let imagenes = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misMeses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for : indexPath) as! MiCelda
        cell.etiqueta1.text = misMeses[indexPath.row]
        cell.imagen.image = UIImage(named: imagenes[indexPath.row])
        return cell
    }
    

}

