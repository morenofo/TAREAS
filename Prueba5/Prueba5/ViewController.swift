//
//  ViewController.swift
//  Prueba5
//
//  Created by OSCAR on 19/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var miTableView: UITableView!
    var contenedor = ""
    
    private let misMeses = ["Enero", "Febrero","Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre","Diciembre"]
    private let imagenes = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        miTableView.dataSource = self
      
        miTableView.delegate = self
        //indicamos que MiTableView puede pintar mi celda
            miTableView.register(UINib(nibName: "MiCelda", bundle: nil), forCellReuseIdentifier: "MiCelda")
        
        
        
    }
}
extension ViewController: UITableViewDataSource{
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misMeses.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//       var cell = MiCelda()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MiCelda") as! MiCelda
      
        
           
        
        cell.miLabel.text = misMeses[indexPath.row]
        cell.miImagen.image = UIImage(named: imagenes[indexPath.row])
        
        cell.backgroundColor = .gray
        cell.accessoryType = .disclosureIndicator
        
        
        return cell
    }
     
}

extension ViewController: UITableViewDelegate{
    
    
    override func prepare (for segue: UIStoryboardSegue, sender:Any?){
//        if let destino = segue.destination as? SegundaPantalla{
        if segue.identifier == "segue"{
            let destino = segue.destination as! SegundaPantalla
            destino.contenedor1 = contenedor
    }
        
    }
    
    
    //funcion seleccion de eventos
    func  tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        contenedor = misMeses[indexPath.row]
        performSegue (withIdentifier:"segue", sender: self)
        print(contenedor)
    }
    
    
}
 


       
  
        
    
            
        
        
    
    



