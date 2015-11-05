//
//  SecondViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {
    
    
    @IBOutlet var tamañoPizza: UIImageView!
    
    
    var tamañoMasa: UIImage!
    
    override func viewWillAppear(animated: Bool) {
        
       tamañoPizza.image = tamañoMasa
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
    }

}

