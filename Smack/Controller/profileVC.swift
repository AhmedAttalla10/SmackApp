//
//  profileVC.swift
//  Smack
//
//  Created by hima attalla on 1/26/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import UIKit

class profileVC: UIViewController {
    //outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
        userDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeModelPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        userName.text = userDataService.instance.name
        userEmail.text = userDataService.instance.email
        
        profileImg.image = UIImage(named: userDataService.instance.avatarName)
        profileImg.backgroundColor = userDataService.instance.returnUIColor(components: userDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(profileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
     dismiss(animated: true, completion: nil)
    }
    

}
