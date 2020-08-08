//
//  ContentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/2/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let header = HeaderModel(title: "Hola", avatarImageString: "placeHolder")
    
    var body: some View {
        
        VStack {
            HeaderComponentView(header: header)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

