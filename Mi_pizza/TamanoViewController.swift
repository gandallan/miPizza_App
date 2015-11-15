//
//  FirstViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController,UITabBarDelegate {
    

//***************************************** OUTLETS
    
    @IBOutlet var tamanoChico: UIImageView?
    
    @IBOutlet var nextButton: UIBarButtonItem!
    

//***************************************** VARIABLES
    
    var myImage: UIImage = UIImage(named: "imgChico")!
    
    var tamano = 0
    
    var botones  = ""
    
//*****************************************CiewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.enabled = false
        
        tamanoChico = UIImageView(image: myImage)
    
    }
    
//************************************************* BOTONES
    
    
    @IBAction func tamanoButtons(sender: UIButton) {
        
       self.botones = (sender.titleLabel!.text!)
        
        switch botones{
            
            case "chico":
                tamano = 1
                
                fieldTamano = " Chico"
                
                tamanoChico!.frame = CGRectMake(100, 200,50, 50)
                self.view.addSubview(tamanoChico!)
                tamanoChico!.contentMode = .ScaleAspectFit
                nextButton.enabled = true
                print("chico")
            
            case "mediano":
                tamano = 2
                
                fieldTamano = "Mediano"
                
                tamanoChico!.frame = CGRectMake(100, 200, 100, 100)
                self.view.addSubview(tamanoChico!)
                tamanoChico!.contentMode = .ScaleAspectFit
                nextButton.enabled = true
                print("mediano")
                
            
            case "grande":
                tamano = 3
                
                fieldTamano = "Grande"
                
                //tamanoChico!.image = UIImage(named: "imgGrande")!
                
                tamanoChico!.frame = CGRectMake(100, 200, 150, 150)
                self.view.addSubview(tamanoChico!)
                tamanoChico!.contentMode = .ScaleAspectFit
                nextButton.enabled = true
                print("grande")
            
        default:
            print("")
            
        }
        
    }


//*************************************** PrepareForSegue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        tamanoChico?.frame
        
        self.view.addSubview(tamanoChico!)
        
        let sigVista = segue.destinationViewController as! MasaViewController
        sigVista.tamañoMasa = tamanoChico!.image
        sigVista.tamano = tamano
        
        //let sigVistaConfirmacion = segue.destinationViewController as! ConfirmacionViewController
        //sigVistaConfirmacion.fieldTamano = fieldTamano
        
        
    }
    



}
