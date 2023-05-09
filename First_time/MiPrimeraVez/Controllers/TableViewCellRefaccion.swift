//
//  TableViewCellRefaccion.swift
//  MiPrimeraVez
//
//  Created by UNAM FCA 05 on 21/06/22.
//

import UIKit

class TableViewCellRefaccion: UITableViewCell {

    
    @IBOutlet weak var imgRefaccion: UIImageView!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblAutomovil: UILabel!
    
    @IBOutlet weak var lblModelo: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
