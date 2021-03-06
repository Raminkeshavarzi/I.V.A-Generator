//
//  ViewController.swift
//  I.V.A Generator
//
//  Created by Ramin on 6/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemPrice: UITextField!
    @IBOutlet weak var salesTax: UITextField!
    @IBOutlet weak var labelIVA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelIVA.text = ""
    }

    @IBAction func totalTaxCalculator(_ sender: Any) {
        let price = Double(itemPrice.text!)!
        let salesTxt = Double(salesTax.text!)!
        let totalSalesTax = price * salesTxt
        let totalPrice = price + totalSalesTax
        
        labelIVA.text = "$\(totalPrice)"
        
    }
    
}

