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
        
        viewTipoMasa?.image = imageMasa
        
        viewTipoQueso?.image = UIImage(named: "img_mozzarela")
        
    }
    
//***************************************** BOTONES 
    
    
    @IBAction func tipoQuesButtons(sender: UIButton) {
        
        self.botones = (sender.titleLabel?.text!)!
        
        switch botones {
            
        case "Mozarela" :
            
           viewTipoQueso?.image = UIImage(named: "img_mozzarela")
            
            
            print("Mozarela")
        
        case "Cheddar" :
            
            viewTipoQueso?.image = UIImage(named: "img_cheddar.jpg")
            
            
        case "Parmesano" :
            
            viewTipoQueso?.image = UIImage(named: "img_parmesano.jpg")
        
        
        case "SinQueso" :
            
            viewTipoQueso?.image = UIImage(named: "sinqueso")

            
        default:
            print("no se presionoó ningun botón")
        
        }
        
    }
   

    
}
