//
//  HeaderModel.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/7/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct HeaderModel: Identifiable, Decodable{
    let id = UUID()
    let title: String
    let avatarImageString: String
}
