//
//  SettingsViewController.swift
//  TipCalcFall17
//
//  Created by Aristotle on 2017-11-05.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    lazy var mainScreenView = view
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Debug
        // mainScreenView?.backgroundColor = .blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func roundUp() {
        print("This function will let the user always round up or not. NOT YET IMPLEMENTED")
    }
    
    func accessibilitySound() {
        print("This function will let the user turn on and off sound for input and results in the main view for accessibility.  NOT YET IMPLEMENTED.")
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
