//
//  FirstViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController {
    
    
    @IBOutlet var tamanoChico: UIImageView!
    
    
    @IBAction func ChicoButton(sender: UIButton) {
        
        
        tamanoChico.image = UIImage(named: "imgChico")!
      
    }
    
    @IBAction func MedianoButton(sender: UIButton) {
        
        tamanoChico.image = UIImage(named: "imgMediano")!
        
    }
    
    @IBAction func grande(sender: UIButton) {
        
        tamanoChico.image = UIImage(named: "imgGrande")!
        
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

