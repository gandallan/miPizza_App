//
//  InicioViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {
    
    //funcionpara cambiar de pantalla por medio de codigo
    @IBAction func ViewToTamaño(sender: UIButton) {
        //este hace referencia al Storyboard
        let miStoryBoard: UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
        //este 
        let VistaTamaño = miStoryBoard.instantiateViewControllerWithIdentifier("ViewTamaño") as! TamanoViewController
        
        self.navigationController!.pushViewController(VistaTamaño, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
