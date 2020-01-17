//
//  CircleImage.swift
//  Smack
//
//  Created by hima attalla on 1/14/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
 
    // ال awakefromnib حاجه كده شبيهه بال viewdidload بس لل cells والصور وكده يعنى بنحط فيها ال properties بتاعتهم وبتتنفذ اول لما ال app يحمل  #
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

}
