//
//  ContentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/2/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            HeaderComponentView(userName: "ariasfigueroa")
            Spacer()
            PreferencesMenuComponentView(title: "Aldo E. Arias", avatar: "Avatar")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

