//
//  SeleccionaIngredientesViewController.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import UIKit

class SeleccionaIngredientesViewController: UIViewController {

    var myPizza: Pizza?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? ConfirmarViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.ingredientes == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona al menos una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        } else {
            return true
        }
    }
    
    @IBAction func selectedJamon(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.jamon)
    }
    
    @IBAction func selectedPeperoni(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.peperoni)
    }
    
    @IBAction func selectedPavo(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.pavo)
    }
    
    @IBAction func selectedSalchicha(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.salchicha)
    }
    
    @IBAction func selectedAceitunas(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.aceituna)
    }
    
    @IBAction func selectedCebolla(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.cebolla)
    }
    
    @IBAction func selectedPimiento(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
    }
    
    @IBAction func selectedPiña(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.piña)
    }
    
    @IBAction func selectedZanahoria(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        myPizza?.ingredientes?.append(Pizza.Ingredientes.anchoa)
    }
    
}
