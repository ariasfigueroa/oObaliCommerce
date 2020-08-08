//
//  HeaderComponentView.swift
//  oObaliComercio
//
//  Created by aldoarias.figueroa on 8/7/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct HeaderComponentView: View {
      @ObservedObject var headerViewModel: HeaderViewModel
      
      init (userName: String){
        self.headerViewModel = HeaderViewModel(userName: userName)
        self.headerViewModel.fetchUser(userName: userName)
      }
      
      var body: some View {
          HStack() {
            Text("Hola \(self.headerViewModel.user.firstName)")
                  .font(.system(size: 28, weight: .bold))
              Spacer()
            Button(action: {
                
            }){
                Image(self.headerViewModel.user.avatar)
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
        HeaderComponentView(userName: "ariasfigueroa")
    }
}

