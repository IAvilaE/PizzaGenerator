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
    
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    
    override func viewDidLoad() {
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.aceituna) == true) {
            aceituna.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.anchoa) == true) {
            anchoa.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.cebolla) == true) {
            jamon.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.jamon) == true) {
            pavo.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.pavo) == true) {
            peperoni.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.peperoni) == true) {
            peperoni.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.pimiento) == true) {
            pimiento.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.piña) == true) {
            piña.setOn(true, animated: false)
        }
        if (myPizza?.ingredientes?.contains(Pizza.Ingredientes.salchicha) == true) {
            salchicha.setOn(true, animated: false)
        }
        
    }
    
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
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.jamon)
        }
    }
    
    @IBAction func selectedPeperoni(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.peperoni)
        }
    }
    
    @IBAction func selectedPavo(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.pavo)
        }
    }
    
    @IBAction func selectedSalchicha(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.salchicha)
        }
    }
    
    @IBAction func selectedAceitunas(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.aceituna)
        }
    }
    
    @IBAction func selectedCebolla(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.cebolla)
        }
    }
    
    @IBAction func selectedPimiento(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.pimiento)
        }
    }
    
    @IBAction func selectedPiña(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.piña)
        }
    }
    
    @IBAction func selectedAnchoa(sender: UISwitch) {
        if myPizza?.ingredientes == nil {
            myPizza?.ingredientes = [String]()
        }
        if sender.on {
            myPizza?.ingredientes?.append(Pizza.Ingredientes.anchoa)
        }
    }
    
}
