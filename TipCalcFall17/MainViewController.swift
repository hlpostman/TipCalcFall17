//
//  MainViewController.swift
//  TipCalcFall17
//
//  Created by Aristotle on 2017-11-05.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit
//import Foundation

class MainViewController: UIViewController {

    var tipLevel = 0.20
    

    @IBOutlet weak var billLabelField: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipAmount: Double {
        let bill = Double(billLabelField.text ?? "") ?? 0
        let tip = bill * tipLevel
        return tip
    }
    
    var totalBill: Double {
        let bill = Double(billLabelField.text ?? "") ?? 0
        let totalBill = bill + self.tipAmount
        return totalBill
    }
    
    func showTip() {
        tipLabel!.text! = String(tipAmount)as String!
    }
    
    func showTotal() {
        totalLabel!.text! = String(totalBill) as String!
    }

    @IBAction func inputBill(_ sender: UIButton) {
    
        billLabelField.text = billLabelField!.text! + sender.titleLabel!.text!
        showTip()
        showTotal()
        print(billLabelField.text!)
    }
    
    func deleteBillInput() {
//        if "0.123456789".range(of: billLabelField!.text!.endIndex as! String) != nil {
//            let lastTyped = self.billLabelField!.text!.endIndex
//            self.billLabelField!.text! = billLabelField!.text![..<lastTyped] as! String
//        }
        print("This function will allow a user to delete input as they type the bill in case they make an error.  NOT YET IMPLEMENTED.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 let settingsViewController = segue.destination as! SettingsViewController
 settingsViewController.mainScreenView = view
 }

}
