//
//  SeleccionaMasaViewController.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import UIKit

class SeleccionaMasaViewController: UIViewController {

    var myPizza: Pizza?
    
    @IBOutlet weak var delgada: UIButton!
    @IBOutlet weak var crujiente: UIButton!
    @IBOutlet weak var gruesa: UIButton!
    
    override func viewDidLoad() {
        if let masa = myPizza?.masa {
            switch masa {
            case Pizza.Masa.Delgada:
                delgada.backgroundColor = UIColor.whiteColor()
                crujiente.backgroundColor = UIColor.blackColor()
                gruesa.backgroundColor = UIColor.blackColor()
            case Pizza.Masa.Crujiente:
                delgada.backgroundColor = UIColor.blackColor()
                crujiente.backgroundColor = UIColor.whiteColor()
                gruesa.backgroundColor = UIColor.blackColor()
            case Pizza.Masa.Gruesa:
                delgada.backgroundColor = UIColor.blackColor()
                crujiente.backgroundColor = UIColor.blackColor()
                gruesa.backgroundColor = UIColor.whiteColor()
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destino = segue.destinationViewController as? SeleccionaQuesoViewController
        destino?.myPizza = self.myPizza
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if myPizza?.masa == nil {
            let alert = UIAlertController(title: "Atención!", message: "Selecciona una opcion", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        } else {
            return true
        }
    }
    
    @IBAction func selectedDelgada(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Delgada
        delgada.backgroundColor = UIColor.whiteColor()
        crujiente.backgroundColor = UIColor.blackColor()
        gruesa.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func selectedCrujiente(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Crujiente
        delgada.backgroundColor = UIColor.blackColor()
        crujiente.backgroundColor = UIColor.whiteColor()
        gruesa.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func selectedGruesa(sender: UIButton) {
        myPizza?.masa = Pizza.Masa.Gruesa
        delgada.backgroundColor = UIColor.blackColor()
        crujiente.backgroundColor = UIColor.blackColor()
        gruesa.backgroundColor = UIColor.whiteColor()
    }
    
}
