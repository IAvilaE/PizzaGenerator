//
//  ConfirmarViewController.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import UIKit

class ConfirmarViewController: UIViewController {

    @IBOutlet weak var verPedido: UILabel!
    
    var myPizza: Pizza?
    
    override func viewDidAppear(animated: Bool) {
        var lista = ""
        lista = lista + "Tamaño: " + myPizza!.tamaño!.rawValue + "\n"
        lista = lista + "Masa: " + myPizza!.masa!.rawValue + "\n"
        lista = lista + "Queso: " + myPizza!.queso!.rawValue + "\n\n"
        lista = lista + "Ingredientes: \n"
        for item in myPizza!.ingredientes! {
            lista = lista + item + "\n"
        }
        
        verPedido.text = lista
    }
    
    @IBAction func confirmar(sender: UIButton) {
        let alert = UIAlertController(title: "Info", message: "¿Desea confirmar su pedido?", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            self.mostrarConfirmacion()
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .Cancel, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func mostrarConfirmacion() {
        let alert = UIAlertController(title: "Info", message: "Su pedido se ha realizado!. Le llegará a su domicilio en 20 minutos.", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
