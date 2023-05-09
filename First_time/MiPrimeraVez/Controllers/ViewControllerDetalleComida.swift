//
//  ViewControllerDetalleComida.swift
//  MiPrimeraVez
//
//  Created by UNAM FCA 05 on 20/06/22.
//

import UIKit

class ViewControllerDetalleComida: UIViewController {
    
    @IBOutlet weak var lblDetail: UILabel!
   
    var AgrQueso : Bool = false
    //Variables o constantes
    //Referencias
    //Métodos precargados
    //métodos
    //investigar que es un protocolo en orientado a objetos
    //
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetail.text = "Tacos de pastor con verdura y salsa de torilla de maiz."

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AgrQueso(_ sender: UIButton) {
        
        if (AgrQueso == false) {
            lblDetail.text = "\(lblDetail.text!) Con queso"
            AgrQueso = true
        }
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
