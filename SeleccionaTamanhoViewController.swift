//
//  SeleccionaTamanhoViewController.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import UIKit

class SeleccionaTamanhoViewController: UIViewController {

    var myPizza: Pizza?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPizza = Pizza()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? SeleccionaMasaViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.tamaño == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
            return false
        } else {
            return true
        }
    }
    

    @IBAction func selectedChica(sender: UIButton) {
        myPizza?.tamaño = Pizza.Tam.Chica
    }
    
    @IBAction func selectedMediana(sender: UIButton) {
        myPizza?.tamaño = Pizza.Tam.Mediana
    }
    
    @IBAction func selectedGrande(sender: UIButton) {
        myPizza?.tamaño = Pizza.Tam.Grande
    }
    
}
