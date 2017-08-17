//
//  ViewController.swift
//  Tipper
//
//  Created by Vikas Madan on 8/15/17.
//  Copyright © 2017 VM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var locale:Locale!
    var currencySymbol:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let selectedIndex = defaults.integer(forKey: "tipControlSelectedIndex")
        tipControl.selectedSegmentIndex = selectedIndex
        
        locale = Locale.current
        currencySymbol = locale.currencySymbol!
        
        let storedBillDate = defaults.object(forKey: "storedBillDate") as? NSDate
        if (storedBillDate != nil && integer_t((storedBillDate?.timeIntervalSinceNow)!) > -600) {
            billField.text = defaults.string(forKey: "storedBillField")
            handleTipCalc()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        handleTipCalc()
        
    }
    
    func handleTipCalc() {
        let tipPercentages = [0.18, 0.2, 0.22]
        
        let billAmount = Double(billField.text!) ?? 0
        let tip = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billAmount + tip
        
        tipLabel.text = String(format: currencySymbol+"%.2f", tip)
        totalLabel.text = String(format: currencySymbol+"%.2f", total)
        
        storeBillValue()
    }
    
    
    func storeBillValue() {
        let defaults = UserDefaults.standard
        defaults.set(billField.text, forKey: "storedBillField")
        defaults.set(NSDate(), forKey: "storedBillDate")
        defaults.synchronize()
    }
    
    
}

