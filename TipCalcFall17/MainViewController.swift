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

    // Labels
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var billTipTotalLabels: [UILabel]!
    @IBOutlet weak var billLabelTitle: UILabel!
    @IBOutlet weak var tipLabelTitle: UILabel!
    @IBOutlet weak var totalLabelTitle: UILabel!
    lazy var labelTitleDictionary = [billLabelTitle: billLabel, tipLabelTitle: tipLabel, totalLabelTitle: totalLabel]
    
    @IBOutlet var keypadButtons: [RoundButton]!
    @IBOutlet weak var tipLevelSlider: UISlider!
    // General Variables
    lazy var tipLevel: Float = 0.25
    
    @IBAction func setTipLevel(_ sender: UISlider) {
        tipLevel = sender.value
    }
    var tipAmount: Float {
        let bill = Float(billLabel.text ?? "") ?? 0.0
//        let tipLevel = tipLevelSlider.value
        let tip = bill * tipLevel
        return tip
    }
    
    var totalBill: Float {
        let bill = Float(billLabel.text ?? "") ?? 0
        let totalBill = bill + self.tipAmount
        return totalBill
    }
    
    // Animation variables
    var labelAnimation: UISnapBehavior!
    var labelAnimator: UIDynamicAnimator!
    
    // General Functions
    func showTip() {
        tipLabel!.text! = String(tipAmount)as String!
    }
    
    func showTotal() {
        totalLabel!.text! = String(totalBill) as String!
    }

    @IBAction func inputBill(_ sender: UIButton) {
    
        billLabel.text = billLabel!.text! + sender.titleLabel!.text!
        showTip()
        showTotal()
        print(billLabel.text!)
    }
    
    @IBAction func inputDecimal(_ sender: UIButton) {
        if (billLabel.text?.contains("."))! {
            print("Your bill already contains a decimal.")
        } else {
            billLabel.text = billLabel!.text! + sender.titleLabel!.text!
            showTip()
            showTotal()
            print(billLabel.text!)
        }
    }
    
    func deleteBillInput() {
//        if "0.123456789".range(of: billLabel!.text!.endIndex as! String) != nil {
//            let lastTyped = self.billLabel!.text!.endIndex
//            self.billLabel!.text! = billLabel!.text![..<lastTyped] as! String
//        }
        print("This function will allow a user to delete input as they type the bill in case they make an error.  NOT YET IMPLEMENTED.")
    }
    
    // Animation Functions
    func minimizeLabelTitles () {
        // Not working.  Should work in conjuction with an enlargeLabelTitles() function
        // to show a title in large text on the left-hand side of the label that will
        // show the bill/tip/total when no bill is entered, and then move that title
        // to the upper left-hand corner in small text when bill != nil.  An observer
        // may be useful. 11/5/17 HLP
        print("minimizeLabelTitles() not yet implemented.")
        // Debug
//        print("Attempting to minimizeLabelTitles()")
//        labelAnimator.removeAllBehaviors()
//
//        for (titleLabel, parentView) in labelTitleDictionary {
            // Shrink font size
//            The below not happening, though not causing a crash
//            let currentFontSize = titleLabel.font.pointSize
//            titleLabel.font.withSize(currentFontSize/2)
//            print(titleLabel.text!)
            
            // Move up
//            let destinationPoint = CGPoint(x: parentView!.frame.minX, y: parentView!.frame.minY)
//            let goUp = UISnapBehavior(item: titleLabel, snapTo: destinationPoint)
//            labelAnimator.addBehavior(goUp)
//            Alternatives that don't work:
//            let destinationPoint = CGPoint(x: 20, y: 20)
//            titleLabel.frame.offsetBy(dx: 10.0 as! CGFloat, dy: 10.0 as! CGFloat)
//
//        }
        // Debug
//        print("Ran minimizeLabelTitles() 🌸")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Animation
//        labelAnimator = UIDynamicAnimator(referenceView: billLabel)
        // Set corner radius of labels not working
        for bttLabel in billTipTotalLabels {
            bttLabel.layer.cornerRadius = CGFloat(30)//(bttLabel.frame.height)/2
            print(bttLabel.frame.height)
        }
//        billLabel.layer.cornerRadius = billLabel.frame.height/2
        
        // Maintain constraints
        self.view.layoutIfNeeded()
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
    settingsViewController.mainScreenKeypadButtons = keypadButtons

 }

}
