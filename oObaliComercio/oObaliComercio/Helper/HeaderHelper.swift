//
//  HeaderHelper.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/7/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

class HeaderHelper: ObservableObject{
    
    @Published var header: HeaderModel
    
    var placeholder: Bool
    
    init(placeholder: Bool){
        // get header values
        self.placeholder = placeholder
        self.header = HeaderModel(title: "HOLA ALDO", avatarImageString: "Avatar")
    }
    
    func updateHeader (){
        if self.placeholder {
            self.header = HeaderModel(title: "HOLA", avatarImageString: "placeHolder")
         } else {
             self.header = HeaderModel(title: "HOLA ALDO", avatarImageString: "Avatar")
        }
        self.placeholder.toggle()
    }
    
}
