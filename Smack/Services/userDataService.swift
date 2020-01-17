//
//  userDataService.swift
//  Smack
//
//  Created by hima attalla on 1/12/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import Foundation

class userDataService {
    static let instance = userDataService()
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
