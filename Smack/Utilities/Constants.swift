//
//  Constants.swift
//  Smack
//
//  Created by hima attalla on 1/1/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL CONSTANTS
let BASE_URL = "https://chattyappapi.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel/"

//COLORS
let smackPurplePlaceholder = #colorLiteral(red: 0.3254901961, green: 0.4215201139, blue: 0.7752227187, alpha: 0.5)

//NOTIFICATION CONSTANTS
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

// SEGUES
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// USER DEFAULTS
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//HEADERS
let HEADER = ["Content-Type": "application/json; charset=utf-8"]
let BEARER_HEADER = ["Authorization":"Bearer \(AuthService.instance.authToken)", "Content-Type": "application/json; charset=utf-8"]

