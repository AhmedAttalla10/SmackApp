//
//  ChannelVC.swift
//  Smack
//
//  Created by hima attalla on 12/30/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    //Outlets
    

    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func PrepareForUnwind(segue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
