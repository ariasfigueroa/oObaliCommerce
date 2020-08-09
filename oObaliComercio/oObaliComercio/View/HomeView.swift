//
//  HomeView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/9/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var showPrefecencesMenu: Bool
    var title: String
    var avatar: String

    
    var body: some View {
        VStack {
            HeaderComponentView(title: title, avatar: avatar, showProfile: $showPrefecencesMenu)
            Spacer()
        }
        .padding(.top, 20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        .offset(y: self.showPrefecencesMenu ? -450 : 0)
        .scaleEffect(self.showPrefecencesMenu ? 0.9 : 1)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showPrefecencesMenu: .constant(false), title: "Hola Aldo", avatar: "placeHolder")
    }
}
