//
//  SegundaPantalla.swift
//  Prueba5
//
//  Created by OSCAR on 20/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class SegundaPantalla: UIViewController {
   
    @IBOutlet weak var miEtiqueta: UILabel!
    var contenedor1: String?
//    var contenedor2 = "hola"
    
    override func viewDidLoad() {
        
            miEtiqueta?.text = contenedor1
        }

        
    }
    

    


