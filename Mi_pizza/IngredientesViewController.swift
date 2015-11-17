//
//  IngredientesViewController.swift
//  Mi_pizza
//
//  Created by Gandhi Mena Salas on 03/11/15.
//  Copyright © 2015 Trenx. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    
//***************************************** Outlets
    
    @IBOutlet var viewTipoMasa: UIImageView!
    
    @IBOutlet var viewTipoQueso: UIImageView!
    
    @IBOutlet var viewTipoIngredientes: UIImageView!
    
    @IBOutlet var nextButton: UIBarButtonItem!
    
    @IBOutlet var defaultSwitch: UISwitch!
    
//***************************************** VARIABLES
    var botones = " "
    
    var imageMasa: UIImage!
    var imageQueso: UIImage!
    var imageIngredientes:UIImage!
    
    var sel:[Bool] = [false,false,false,false,false,false]
    
    var sel2:[Int] = []
    
    let imagenes : [UIImage] = [UIImage(named:"img_jamon")!,UIImage(named:"img_peperoni")!,UIImage(named:"img_pavo")!,UIImage(named:"img_salchicha")!,UIImage(named:"img_aceitunas")!,UIImage(named:"img_cebolla")!]
    
    var cuenta: Int = 0
    //let jamon : UIImage = UIImage(named:"img_jamon")!
    //let pavo : UIImage = UIImage(named:"img_pavo")!
    
//    let ingredientes:[String:String] = [
//    
//        "ingrediente1": "jamon", "ingrediente2": "peperoni", "ingrediente3": "pavo", "ingrediente4": "salchicha", "ingrediente5":"aceitunas", "ingrediente6":"cebolla"
//    ]
    

    
//**************************************** ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTipoMasa.image = imageMasa
        viewTipoQueso.image = imageQueso
        viewTipoIngredientes.image = imageIngredientes
        
        viewTipoIngredientes.layer.zPosition = 3
        viewTipoQueso.layer.zPosition = 2
        viewTipoMasa.layer.zPosition = 1
        
        nextButton.enabled = false
        
        // Do any additional setup after loading the view.
        //myScrollView.contentSize.height = 0
        //myScrollView.contentSize.width = 20000
        
        
        

    }


//******************************************* Botones
    
    
    @IBAction func ingredientesBotones(sender: UIButton) {
        
        
        
        botones = (sender.titleLabel?.text!)!
        
        switch botones {
        
            case "jamon":
            
                anadirImage(0)
            
            case "peperoni":
                
                anadirImage(1)
            
            case "pavo":
                
                anadirImage(2)
            
            case "salchicha":
                
                anadirImage(3)
            
            case "aceitunas":

                anadirImage(4)

            case "cebolla":
                
                anadirImage(5)

            
        default:
            
            print("no se seleccionó ningun boton")
        
        }
        
    
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! ConfirmacionViewController
        
        sigVista.imageMasa = imageMasa
        sigVista.imageQueso = imageQueso
        sigVista.imageIngredientes = viewTipoIngredientes.image
    
    }
    
    //*********************************** Function Añadir
    
    func anadirImage(pos:Int){
        print(sel2.count)
        
        sel[pos] = !sel[pos]
        //sel2.append(pos)
        
        if(sel[pos]) {
            if(sel2.count>4){
                return
            };
            sel2.append(pos)
        } else {
        
        if let index = sel2.indexOf(pos) {
            sel2.removeAtIndex(index)
        }
        }
        
        // if cuenta > 4 {   return; }
        
        nextButton.enabled = true
        
        viewTipoIngredientes.image = imageIngredientes
    
        UIGraphicsBeginImageContext(imageMasa.size)
        
        let areaSize = CGRect(x: 0, y: 0, width: imageMasa.size.width, height: imageMasa.size.height)
        
        viewTipoIngredientes.image?.drawInRect(areaSize)
        
        for ii in sel2 {
        imagenes[ii].drawInRect(areaSize)
        }
        
        
        /*var i = 0
        cuenta = 0
        for index in sel{
            
            if index == true{
                
                imagenes[i].drawInRect(areaSize)
                cuenta++
                
            }
            i++
            
        }
        
        print(cuenta)*/
        //imageIngredientes.drawInRect(areaSize)
        
        
        
        viewTipoIngredientes.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
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
