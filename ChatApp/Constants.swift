//
//  Constants.swift
//  ChatApp
//
//  Created by Pratik Sasmal on 07/09/21.
//

struct K {
    static let appName="ChatApp"
    static let registerSegue="RegisterToChat"
    static let logInSegue="LoginToChat"
    static let cellIdentifier="ReusableCell"
    static let cellNibName="MessageCell"
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
    struct brandColor {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
    }
}
