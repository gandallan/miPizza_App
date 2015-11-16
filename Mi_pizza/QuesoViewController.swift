//
//  ThirtViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit


class QuesoViewController: UIViewController {
    
    
//****************************** IMAGE_VIEW
    
    @IBOutlet var viewTipoMasa: UIImageView!
    
    @IBOutlet var viewTipoQueso: UIImageView?
    
    @IBOutlet var nextButton: UIBarButtonItem!
    
//****************************** VARIABLES
    
    var botones = " "
    var imageMasa: UIImage!
    var tam:CGSize!


    //*************************************** Funcion
    
    
    func imageResize(imageObj:UIImage, sizeChange:CGSize)-> UIImage {
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        imageObj.drawInRect(CGRect(origin: CGPointZero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext() // !!!
        return scaledImage
        
    }
    
    // MARK: - Navigation
    
//****************************** viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.enabled = false
        
        viewTipoMasa?.image = imageMasa
        
        viewTipoQueso?.image = UIImage(named: "")
        
        
    }
    
//***************************************** BOTONES 
    
    
    @IBAction func tipoQuesButtons(sender: UIButton) {
        
        self.botones = (sender.titleLabel?.text!)!
        
        switch botones {
            
        case "Mozarela" :
            
           viewTipoQueso?.image = UIImage(named: "img_mozzarela")
           
           fieldQueso = " Mozarella"
            
            print("Mozarela")
            
            nextButton.enabled = true
        
        case "Cheddar" :
            
            viewTipoQueso?.image = UIImage(named: "img_cheddar")
            
             fieldQueso = "Cheddar"
            
             nextButton.enabled = true
            
        case "Parmesano" :
            
            viewTipoQueso?.image = UIImage(named: "img_parmesano")
            
             fieldQueso = "Parmesano"
            
             nextButton.enabled = true
        
        case "SinQueso" :
            
            nextButton.enabled = true
            
            viewTipoQueso?.image = UIImage(named: "sinqueso")

            
        default:
            print("no se presionoó ningun botón")
        
        }
        
    }
    
//***************************************prepareForSegue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let sigVista = segue.destinationViewController as! IngredientesViewController
        sigVista.imageMasa = imageMasa
        sigVista.imageQueso = viewTipoQueso?.image
        
        //************* hay que averiguar como mandar fieldQueso al fieldQueso de ConfirmacionViewController porque el segue que tiene no apunta a esta vista.
        
        //let vistaConfirmacion = segue.destinationViewController as! ConfirmacionViewController
        //vistaConfirmacion.fieldQueso = fieldQueso
        
    }
    
    
    
    
   

    
}
