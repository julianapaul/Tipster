//
//  ViewController.swift
//  Tipster
//
//  Created by Juliana Paul on 1/19/20.
//  Copyright © 2020 Juliana Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get the bill amount
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        
        //calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
}

