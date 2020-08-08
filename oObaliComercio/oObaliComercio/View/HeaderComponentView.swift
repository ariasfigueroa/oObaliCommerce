//
//  HeaderComponentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/7/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct HeaderComponentView: View {
      @ObservedObject var headerHelper: HeaderHelper
      
      init (header: HeaderModel){
        self.headerHelper = HeaderHelper(placeholder: true)
      }
      
      var body: some View {
          HStack() {
            Text("\(self.headerHelper.header.title)")
                  .font(.system(size: 28, weight: .bold))
              Spacer()
            Button(action: {
                self.headerHelper.updateHeader()
            }){
                Image(self.headerHelper.header.avatarImageString)
                      .renderingMode(.original)
                      .resizable()
                      .frame(width: 36, height: 36)
                      .clipShape(Circle())
              }
          }
          .padding(.horizontal)
          .padding(.leading)
          .padding(.top, 30)
      }
}

struct HeaderComponentView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponentView(header: HeaderModel(title: "Hola", avatarImageString: "placeHolder"))
    }
}

