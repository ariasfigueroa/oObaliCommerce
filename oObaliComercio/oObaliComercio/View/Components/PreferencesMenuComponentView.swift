//
//  PreferencesMenuComponentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/8/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct PreferencesMenuComponentView: View {
    
    var title: String
    var avatar: String
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text(title)
                    .font(.caption)
                    .padding(.bottom, 40)
             
                MenuOption(title: "Cuenta", icon: "gear")
                MenuOption(title: "Pagos", icon: "creditcard")
                MenuOption(title: "Salir", icon: "person.crop.circle")
                
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image(avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset( y: -150)
                    
            )
        }
        
    }
}

struct PreferencesMenuComponentView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesMenuComponentView(title: "Aldo Ernesto Arias Figueroa", avatar: "Avatar")
    }
}

struct MenuOption: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack (spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .light, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
