//
//  SecondViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {

//**************************************** OUTLETS
    
    @IBOutlet var tamañoPizza: UIImageView!
    
    @IBOutlet var tipoDeMasa: UIImageView!

//**************************************** VARIABLE
    
    var tamañoMasa: UIImage!
    
    var tamano:Int!
    
    var tam:CGSize!

//*************************************** ViewdidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamañoPizza = UIImageView(image: tamañoMasa)
    
    
        //***************************************** SWITCH Tamano
        
        
        switch(tamano){
            
        case 1:
            self.tamañoPizza.frame = CGRectMake(100, 200,50, 50)
            self.view.addSubview(self.tamañoPizza!)
            
            
            tam=CGSizeMake(50,50)
            
        case 2:
            
            self.tamañoPizza.frame = CGRectMake(100, 200,100, 100)
            self.view.addSubview(self.tamañoPizza!)
           
            tam=CGSizeMake(100,100)
            
            
        case 3:
            
            self.tamañoPizza.frame = CGRectMake(100, 200,150, 150)
            self.view.addSubview(self.tamañoPizza!)
            
            tam=CGSizeMake(150, 150)
            
            
        default:
            
            print("no hay un tamaño")
            
        }
        
         tipoDeMasa.image  = imageResize(UIImage(named: "masaDelgada")!, sizeChange: tam)
         tipoDeMasa.layer.zPosition = 1
         
    }

    
//*************************************** Funcion ******
    
    func imageResize(imageObj:UIImage, sizeChange:CGSize)-> UIImage {
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        imageObj.drawInRect(CGRect(origin: CGPointZero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext() // !!!
        return scaledImage
        
    }
    
    
    
//**************************************** BOTONES *******
    
    //*** Boton masaDelada
    func masaDelgadaButton(sender: UIButton) {
        
        tipoDeMasa.image = imageResize(UIImage(named: "masaDelgada")!, sizeChange: tam)
        
        
    }
    //*** Boton masaCrujiente
    func masaCrujuenteButton(sender: UIButton) {
        
        tipoDeMasa.image = imageResize(UIImage(named: "masaCrujiente")!, sizeChange: tam)
        
    }
    //*** Boton masaGRuesa
    func masaGruesaButton(sender: UIButton) {
        
        tipoDeMasa.image = imageResize(UIImage(named: "masaGruesa")!, sizeChange: tam)
        
    }
    
    
    
    
//********************************** ViewWillAppear
    
    //*** Esta función recibe los datos que van a aparecer de la vista TamanoViewController
    override func viewWillAppear(animated: Bool) {
        
    }
    
//***************************************prepareForSegue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVistaQueso = segue.destinationViewController as! QuesoViewController
        
        sigVistaQueso.imageMasa = tipoDeMasa.image
        
        
        
        
    }
    
}
