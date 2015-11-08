//
//  IngredientesViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    
//*****************************************Outlets
    
    @IBOutlet var viewTipoQueso: UIImageView!
    
    @IBOutlet var viewTipoIngredientes: UIImageView!
    
    
    
    
//*****************************************VARIABLES
    var botones = " "
    

    
//****************************************ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //myScrollView.contentSize.height = 0
        //myScrollView.contentSize.width = 20000
    }


//******************************************* Botones
    
    
    @IBAction func ingredientesBotones(sender: UIButton) {
        
        botones = (sender.titleLabel?.text!)!
        
        switch botones {
        
            case "jamon":
                
                
                
            print("jamon")
            
            case "peperoni":
            
            print("peperoni")
            
            case "pavo":
            
            print("pavo")
            
            case "salchicha":
                
            print("salchicha")
            
            case "aceitunas":
            
            print("aceitunas")
            
            case "cebolla":
            
            print("cebolla")
            
        default:
            
            print("no se seleccionó ningun boton")
            
            
            
        
        }
        
        
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
