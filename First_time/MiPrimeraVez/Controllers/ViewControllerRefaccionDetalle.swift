//
//  ViewControllerRefaccionDetalle.swift
//  MiPrimeraVez
//
//  Created by UNAM FCA 05 on 21/06/22.
//

import UIKit

class ViewControllerRefaccionDetalle: UIViewController {

    var refaccionRecibida : Refaccion?
    
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgRefaccion: UIImageView!
    @IBOutlet weak var lblAutomovil: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNombre.text = refaccionRecibida?.nombre
        lblModelo.text = refaccionRecibida?.modelo
        lblAutomovil.text = refaccionRecibida?.automovil
        imgRefaccion.image = refaccionRecibida?.imagen
        
        
        // Do any additional setup after loading the view.
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
