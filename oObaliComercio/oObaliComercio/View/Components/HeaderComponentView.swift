//
//  HeaderComponentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/7/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct HeaderComponentView: View {
    
    var title: String
    var avatar: String
    @Binding var showProfile: Bool

      var body: some View {
          HStack() {
            Text("\(self.title)")
                  .font(.system(size: 28, weight: .bold))
              Spacer()
            Button(action: {self.showProfile.toggle()}) {
                Image(self.avatar)
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
        HeaderComponentView(title: "Hola Aldo", avatar: "placeHolder", showProfile: .constant(false))
    }
}

