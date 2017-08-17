//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Vikas Madan on 8/16/17.
//  Copyright © 2017 VM. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipPercentControl: UISegmentedControl!
    let defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let selectedIndex = defaults.integer(forKey: "tipControlSelectedIndex")
        if selectedIndex > 0 {
            defaultTipPercentControl.selectedSegmentIndex = selectedIndex
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultTipPercentage(_ sender: Any) {
        defaults.set(defaultTipPercentControl.selectedSegmentIndex, forKey: "tipControlSelectedIndex")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
