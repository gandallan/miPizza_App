//
//  IngredientesViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    
//***************************************** Outlets
    
    @IBOutlet var viewTipoMasa: UIImageView!
    
    @IBOutlet var viewTipoQueso: UIImageView!
    
    @IBOutlet var viewTipoIngredientes: UIImageView!
    
    @IBOutlet var nextButton: UIBarButtonItem!
    
    
//***************************************** VARIABLES
    var botones = " "
    
    var imageMasa: UIImage!
    var imageQueso: UIImage!
    var imageIngredientes:UIImage!
    
//    let ingredientes:[String:String] = [
//    
//        "ingrediente1": "jamon", "ingrediente2": "peperoni", "ingrediente3": "pavo", "ingrediente4": "salchicha", "ingrediente5":"aceitunas", "ingrediente6":"cebolla"
//    ]
    

    
//**************************************** ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTipoMasa.image = imageMasa
        viewTipoQueso.image = imageQueso
        viewTipoIngredientes.image = imageIngredientes
        
        viewTipoIngredientes.layer.zPosition = 3
        viewTipoQueso.layer.zPosition = 2
        viewTipoMasa.layer.zPosition = 1
        
        nextButton.enabled = false
        
        // Do any additional setup after loading the view.
        //myScrollView.contentSize.height = 0
        //myScrollView.contentSize.width = 20000
    }


//******************************************* Botones
    
    
    @IBAction func ingredientesBotones(sender: UIButton) {
        
        
        
        
        botones = (sender.titleLabel?.text!)!
        
        switch botones {
        
            case "jamon":
                
                viewTipoIngredientes.image = UIImage(named: "img_jamon")
                
                fieldIngrediente = "jamon"
                
                nextButton.enabled = true
            
            case "peperoni":
                
                viewTipoIngredientes.image = UIImage(named: "img_peperoni")
                
                fieldIngrediente = "peperoni"
                
                nextButton.enabled = true
            
            print("peperoni")
            
            case "pavo":
                
                viewTipoIngredientes.image = UIImage(named: "img_pavo")
                
                fieldIngrediente = "pavo"
                
                nextButton.enabled = true
            
            print("pavo")
            
            case "salchicha":
                
                viewTipoIngredientes.image = UIImage(named: "img_salchicha")
                
                fieldIngrediente = "salchicha"
                
                nextButton.enabled = true

                
            print("salchicha")
            
            case "aceitunas":
                
                viewTipoIngredientes.image = UIImage(named: "img_aceitunas")
                
                fieldIngrediente = "aceitunas"
                
                nextButton.enabled = true
                
            
            print("aceitunas")
            
            case "cebolla":
                
                viewTipoIngredientes.image = UIImage(named: "img_cebolla")
                
                fieldIngrediente = "cebolla"
                
                nextButton.enabled = true

            
            print("cebolla")
            
        default:
            
            print("no se seleccionó ningun boton")
        
        }
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! ConfirmacionViewController
        
        sigVista.imageMasa = imageMasa
        sigVista.imageQueso = imageQueso
        sigVista.imageIngredientes = viewTipoIngredientes.image
    
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
