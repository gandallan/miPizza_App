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
    
//******************************** Labels
    
    @IBOutlet var tamanoField: UILabel!
    
    @IBOutlet var masaField: UILabel!
    
    @IBOutlet var quesoField: UILabel!
    
    @IBOutlet var ingredienteField: UILabel!
    
    
    
    
//******************************** Variables
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamanoField.text = fieldTamano
        masaField.text = fieldMasa
        quesoField.text = fieldQueso
        ingredienteField.text = fieldIngrediente
        

        // Do any additional setup after loading the view.
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
