//
//  ConfirmacionViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

var fieldTamano: String!
var fieldMasa: String!
var fieldQueso: String!
var fieldIngrediente: String!


class ConfirmacionViewController: UIViewController {
    
//******************************** Labels y Views
    
    @IBOutlet var tamanoField: UILabel!
    
    @IBOutlet var masaField: UILabel!
    
    @IBOutlet var quesoField: UILabel!
    
    @IBOutlet var ingredienteField: UILabel!
    
    @IBOutlet var viewTipoMasa: UIImageView!
    
    @IBOutlet var viewTipoQueso: UIImageView!
    
    @IBOutlet var viewTipoIngredientes: UIImageView!
    
    
    
//******************************** Variables
    
    var imageMasa: UIImage!
    var imageQueso: UIImage!
    var imageIngredientes: UIImage!
    
    
    
//******************************* ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamanoField.text = fieldTamano
        masaField.text = fieldMasa
        quesoField.text = fieldQueso
        ingredienteField.text = fieldIngrediente
        
        viewTipoMasa.image = imageMasa
        viewTipoQueso.image  = imageQueso
        viewTipoIngredientes.image = imageIngredientes
        
        
        

        

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func cocinarButton(sender: UIButton) {
        
        let alerta = UIAlertController(title: "Confirmación", message: "Estas seguro que quieres mandar a cocinar tu pizza", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel){
            (action:UIAlertAction!) in
            
            print("pulsaste cancelar")
        }
        
        let OkAction = UIAlertAction(title: "OK", style: .Default){
            (action:UIAlertAction!) in
            
            print("pulsaste Ok")
        }
        
        alerta.addAction(cancelAction)
        alerta.addAction(OkAction)
        
        self.presentViewController(alerta, animated: true, completion: nil)

    
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
