//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Poudel, Trilochan on 9/15/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billTextFiled: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var finalTotalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Make the keyboard appear when app is lunch
        self.billTextFiled.becomeFirstResponder()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)

    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billTextFiled.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
       // totalLabel.text = "\(total)"
        finalTotalLabel.text = String(format: "Total $%.2f", total)
        
    }

}

