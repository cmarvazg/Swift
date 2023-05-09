//
//  TableViewControllerRefaciones.swift
//  MiPrimeraVez
//
//  Created by UNAM FCA 05 on 21/06/22.
//

import UIKit

//cuando se pone fuera de la clase es porque estará disponible en todos lados
struct Refaccion {
    var nombre : String
    var automovil : String
    var precio : Float
    var modelo : String
    var imagen : UIImage
}


class TableViewControllerRefaciones: UITableViewController {
    
    var refaccionSeleccionda : Refaccion?

    var listaRefacciones : [Refaccion] = [
        Refaccion(nombre: "balatas", automovil: "chevi", precio: 760.32, modelo: "xhyear", imagen: UIImage(named: "refa1")!),
        Refaccion(nombre: "llantas", automovil: "chevi", precio: 20.34, modelo: "xhyear", imagen: UIImage(named: "refa2")!),
        Refaccion(nombre: "bateria", automovil: "chevi", precio: 100.00, modelo: "xhyear", imagen: UIImage(named: "refa3")!),
        Refaccion(nombre: "tuerca", automovil: "chevi", precio: 99.99, modelo: "xhyear", imagen: UIImage(named: "refa4")!),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaRefacciones.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCellRefaccion

        let refaccion = listaRefacciones[indexPath.row]
        cell.lblNombre.text = refaccion.nombre
        cell.lblModelo.text = refaccion.modelo
        cell.lblPrecio.text = String(refaccion.precio)
        cell.lblPrecio.text = "$ \(refaccion.precio)"
        cell.imgRefaccion.image = refaccion.imagen

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        refaccionSeleccionda = listaRefacciones[indexPath.row]
        performSegue(withIdentifier: "MasterToDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVista = segue.destination as? ViewControllerRefaccionDetalle
        siguienteVista?.refaccionRecibida = refaccionSeleccionda
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
