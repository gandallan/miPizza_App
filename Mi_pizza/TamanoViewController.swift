//
//  FirstViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController,UITabBarDelegate {
    

    @IBOutlet var tamanoChico: UIImageView?
    
    var myImage: UIImage = UIImage(named: "imgChico")!
    
    var tamano = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tamanoChico = UIImageView(image: myImage)
    
    }
    

    @IBAction func ChicoButton(sender: UIButton) {
        
        tamano = 1
        
        self.myImage = UIImage(named: "imgChico")!
    
    
        tamanoChico!.frame = CGRectMake(100, 200,50, 50)
        self.view.addSubview(tamanoChico!)
        
        print(tamanoChico)

    }
    
    @IBAction func MedianoButton(sender: UIButton) {
        
        tamano = 2
        
        //tamanoChico!.image = UIImage(named: "imgMediano")!
        
        tamanoChico!.frame = CGRectMake(100, 200, 100, 100)
        self.view.addSubview(tamanoChico!)
        
        
    }
    
    @IBAction func grande(sender: UIButton) {
        
        tamano = 3
        
        //tamanoChico!.image = UIImage(named: "imgGrande")!
        

        tamanoChico!.frame = CGRectMake(100, 200, 150, 150)
        self.view.addSubview(tamanoChico!)


    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        tamanoChico?.frame
        self.view.addSubview(tamanoChico!)
        
        
        let sigVista = segue.destinationViewController as! MasaViewController
        
        
        sigVista.tamañoMasa = tamanoChico!.image
        sigVista.tamano = tamano
        
        
    }
    



}
