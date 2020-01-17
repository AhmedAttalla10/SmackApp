//
//  roundedButton.swift
//  Smack
//
//  Created by hima attalla on 1/8/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import UIKit
@IBDesignable
class roundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }

    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }

}
