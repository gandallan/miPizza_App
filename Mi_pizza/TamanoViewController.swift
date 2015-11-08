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
    

//***************************************** VARIABLES
    
    //*** Inicializador de mi variable tipo imagen.
    var myImage: UIImage = UIImage(named: "imgChico")!
    
    //*** Inicializador de tamano
    var tamano = 0
    
//*****************************************CiewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tamanoChico = UIImageView(image: myImage)
    
    }
    
//************************************************* BOTONES
    
    @IBAction func ChicoButton(sender: UIButton) {
        
        tamano = 1
    
    
        tamanoChico!.frame = CGRectMake(100, 200,50, 50)
        self.view.addSubview(tamanoChico!)
        tamanoChico!.contentMode = .ScaleAspectFit
        
    

    }
    
    @IBAction func MedianoButton(sender: UIButton) {
        
        tamano = 2
        
        tamanoChico!.frame = CGRectMake(100, 200, 100, 100)
        self.view.addSubview(tamanoChico!)
        tamanoChico!.contentMode = .ScaleAspectFit
        
        
    }
    
    @IBAction func grande(sender: UIButton) {
        
        tamano = 3
        
        //tamanoChico!.image = UIImage(named: "imgGrande")!
        

        tamanoChico!.frame = CGRectMake(100, 200, 150, 150)
        self.view.addSubview(tamanoChico!)
        tamanoChico!.contentMode = .ScaleAspectFit


    }
    

//*************************************** PrepareForSegue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        tamanoChico?.frame
        
        self.view.addSubview(tamanoChico!)
        
        
        let sigVista = segue.destinationViewController as! MasaViewController
        
        
        sigVista.tamañoMasa = tamanoChico!.image
        sigVista.tamano = tamano
        
        
    }
    



}
