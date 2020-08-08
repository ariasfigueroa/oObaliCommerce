//
//  UserModel.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/5/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

class User: ObservableObject{
    
    @Published var trigger: Bool
    var userName: String
    var firstName: String
    var middleName: String
    var lastName: String
    var motherLastName: String
    var avatar: String
    var enabled: Bool
    
    init (userName: String, firstName: String, middleName: String, lastName: String, motherLastName: String, enabled: Bool, avatar: String){
        self.firstName = firstName
        self.userName = userName
        self.middleName = middleName
        self.lastName = lastName
        self.motherLastName = motherLastName
        self.enabled = enabled
        self.avatar = avatar
        self.trigger = true
    }
    
}
