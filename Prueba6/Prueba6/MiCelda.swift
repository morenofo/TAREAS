//
//  MiCelda.swift
//  Prueba6
//
//  Created by OSCAR on 23/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class MiCelda: UITableViewCell {
    @IBOutlet weak var etiqueta1: UILabel!
    @IBOutlet weak var imagen: UIImageView!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
