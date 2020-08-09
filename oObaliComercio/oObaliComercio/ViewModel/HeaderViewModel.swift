//
//  HeaderViewModel.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/8/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

class HeaderViewModel: ObservableObject {
    
    @Published var user: User
    
    init (userName: String) {
        self.user = User(userName: userName, firstName: "firstName", middleName: "middleName", lastName: "lastName", motherLastName: "motherLastName", avatar: "placeHolder", enabled: false)
    }
    
    func fetchUser (userName: String)  {
        self.user = User(userName: userName, firstName: "Aldo", middleName: "Ernesto", lastName: "Arias", motherLastName: "Figueroa", avatar: "Avatar", enabled: true)
    }
    
    
}
