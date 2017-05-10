//
//  ViewController.swift
//  TipCalc
//
//  Created by Charnpreet Singh on 5/6/17.
//  Copyright © 2017 Charnpreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmount: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipIdx: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapGestureRecognizer(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func updateTip(_ sender: Any) {
        let tipVals = [0.10, 0.15, 0.20]
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * tipVals[tipIdx.selectedSegmentIndex]
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", bill + tip)
    }
    
    @IBAction func updateAgain(_ sender: Any) {
        let tipVals = [0.10, 0.15, 0.20]
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * tipVals[tipIdx.selectedSegmentIndex]
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", bill + tip)
    }
}

