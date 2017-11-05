//
//  RoundButton.swift
//  TipCalcFall17
//
//  Created by Aristotle on 2017-11-05.
//  Copyright © 2017 HLPostman. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
