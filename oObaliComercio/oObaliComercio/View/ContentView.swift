//
//  ContentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/2/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userHeader : HeaderViewModel
    @State var showPrefecencesMenu: Bool = false
       
       init(){
           self.userHeader = HeaderViewModel(userName: "ariasfigueroa")
           self.userHeader.fetchUser(userName: "ariasfigueroa")
       }

    var body: some View {
        ZStack {
            HomeView(showPrefecencesMenu: self.$showPrefecencesMenu, title: self.userHeader.user.firstName, avatar: self.userHeader.user.avatar)
            PreferencesMenuComponentView(title: self.userHeader.user.firstName, avatar: self.userHeader.user.avatar)
                .background(Color.black.opacity(0.001))
                .offset(y: self.showPrefecencesMenu ? 0 : screen.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.60, blendDuration: 0))
                .onTapGesture {
                    self.showPrefecencesMenu.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let screen = UIScreen.main.bounds
