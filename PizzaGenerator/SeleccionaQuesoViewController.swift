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
    
    @IBOutlet weak var mozzarella: UIButton!
    @IBOutlet weak var cheddar: UIButton!
    @IBOutlet weak var parmesano: UIButton!
    @IBOutlet weak var sinQueso: UIButton!
    
    override func viewDidLoad() {
        if let queso = myPizza?.queso {
            switch queso {
            case Pizza.Queso.Mozarella:
                mozzarella.backgroundColor = UIColor.whiteColor()
                cheddar.backgroundColor = UIColor.blackColor()
                parmesano.backgroundColor = UIColor.blackColor()
                sinQueso.backgroundColor = UIColor.blackColor()
            case Pizza.Queso.Cheddar:
                mozzarella.backgroundColor = UIColor.blackColor()
                cheddar.backgroundColor = UIColor.whiteColor()
                parmesano.backgroundColor = UIColor.blackColor()
                sinQueso.backgroundColor = UIColor.blackColor()
            case Pizza.Queso.Parmesano:
                mozzarella.backgroundColor = UIColor.blackColor()
                cheddar.backgroundColor = UIColor.blackColor()
                parmesano.backgroundColor = UIColor.whiteColor()
                sinQueso.backgroundColor = UIColor.blackColor()
            case Pizza.Queso.SinQueso:
                mozzarella.backgroundColor = UIColor.blackColor()
                cheddar.backgroundColor = UIColor.blackColor()
                parmesano.backgroundColor = UIColor.blackColor()
                sinQueso.backgroundColor = UIColor.whiteColor()
            }
        }
    }
    
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
        mozzarella.backgroundColor = UIColor.whiteColor()
        cheddar.backgroundColor = UIColor.blackColor()
        parmesano.backgroundColor = UIColor.blackColor()
        sinQueso.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func selectedCheddar(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.Cheddar
        mozzarella.backgroundColor = UIColor.blackColor()
        cheddar.backgroundColor = UIColor.whiteColor()
        parmesano.backgroundColor = UIColor.blackColor()
        sinQueso.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func selectedParmesano(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.Parmesano
        mozzarella.backgroundColor = UIColor.blackColor()
        cheddar.backgroundColor = UIColor.blackColor()
        parmesano.backgroundColor = UIColor.whiteColor()
        sinQueso.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func selectedSinqueso(sender: UIButton) {
        myPizza?.queso = Pizza.Queso.SinQueso
        mozzarella.backgroundColor = UIColor.blackColor()
        cheddar.backgroundColor = UIColor.blackColor()
        parmesano.backgroundColor = UIColor.blackColor()
        sinQueso.backgroundColor = UIColor.whiteColor()
    }
}
