//
//  UserModel.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/5/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct User: Identifiable, Decodable{
    
    var id = UUID()
    var userName: String
    var firstName: String
    var middleName: String
    var lastName: String
    var motherLastName: String
    var avatar: String
    var enabled: Bool
    
 }
