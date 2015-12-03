//
//  SeleccionaQuesoViewController.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import UIKit

class SeleccionaQuesoViewController: UIViewController {

    var myPizza: Pizza?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? SeleccionaIngredientesViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.queso == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        } else {
            return true
        }
    }
    
    @IBAction func selectedMozzarella(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.Mozarella
    }
    
    @IBAction func selectedCheddar(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.Cheddar
    }
    
    @IBAction func selectedParmesano(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.Parmesano
    }
    
    @IBAction func selectedSinqueso(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.SinQueso
    }
    
}
