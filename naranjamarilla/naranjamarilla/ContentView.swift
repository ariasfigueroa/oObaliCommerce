//
//  ContentView.swift
//  naranjamarilla
//
//  Created by aldoarias.figueroa on 7/18/20.
//  Copyright © 2020 aldoarias.figueroa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAnimation = false
    @State var viewState = CGSize.zero
    @State var showCard = false
    @State var bottomState = CGSize.zero
    @State var showFull = false
    
    var body: some View {
        ZStack {
            
            HeaderView()
                .blur(radius: showAnimation ? 20 : 0)
                .opacity(showCard ? 0.4 : 1)
                .offset(y: showCard ? -200 : 0)
                .animation(
                    Animation
                        .timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8)
                        .delay(0.1)
                )
            
            BackCardView()
                .frame(width: showCard ? 300 : 340.0, height: 220.0)
                .background(Color(showAnimation ? "card3" : "card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x:0, y: showAnimation ? -360 : -40)
                .offset(x: self.viewState.width, y: self.viewState.height)
                .offset(y: showCard ? -180 : 0)
                .scaleEffect(showCard ? 1 : 0.90)
                .rotationEffect(.degrees(showCard ? 0 : 10))
                .rotation3DEffect(.degrees(showCard ? 5 : 0), axis: (x:10.0, y: 0, z:0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5))
            
            BackCardView()
                .frame(width:  showCard ? 300 : 340.0, height: 220.0)
                .background(Color(showAnimation ? "card4" :"card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x:0, y: showAnimation ? -180 : -20)
                .offset(x: self.viewState.width, y: self.viewState.height)
                .offset(y: showCard ? -140 : 0)
                .scaleEffect(showCard ? 1 : 0.95)
                .rotationEffect(.degrees(showCard ? 0 : 5))
                .rotation3DEffect(.degrees(showCard ? 0 : 5), axis: (x:10.0, y: 0, z:0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3))
            
            CardView()
                .frame(width: showCard ? 375 : 340.0, height: 220.0)
                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                .shadow(radius: 20)
                .offset(x: self.viewState.width, y: self.viewState.height)
                .offset(y: showCard ? -100 : 0)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showCard.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged{value in
                            self.viewState = value.translation
                            self.showAnimation = true
                        }
                        .onEnded { value in
                            self.viewState = CGSize.zero
                            self.showAnimation = false
                        }
                )
            
            
            BottomView()
                .offset(y: showCard ? 360: screen.height)
                .offset(y: bottomState.height)
                .blur(radius: showAnimation ? 20 : 0)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                .gesture(
                DragGesture()
                    .onChanged{value in
                        self.bottomState = value.translation
                        if self.showFull {
                            self.bottomState.height += -300
                        }
                        
                        if self.bottomState.height < -300{
                            self.bottomState.height = -300
                        }
                    }
                .onEnded{value in
                    if self.bottomState.height > 50 {
                        self.showCard = false
                    }
                    
                    if (self.bottomState.height < -100 && !self.showFull) || (self.showFull && self.bottomState.height < -200) {
                        self.bottomState.height = -300
                        self.showFull = true
                    }
                    else {
                        self.bottomState = .zero
                        self.showFull = false
                    }
                    
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Deleihuate")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Sistema Nervioso")
                        .font(.subheadline)
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding()
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
        
        .background(Color.black)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Bienvenidos")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image("Background1")
            Spacer()
            
        }
    }
}

struct BottomView: View {
    var body: some View {
        VStack (spacing: 20) {
            Rectangle()
                .frame(width: 40.0, height: 5.0)
                .cornerRadius(3)
                .opacity(0.1)
            Text("This certificate is proof that Aldo Arias has achieved the UI Desingcourse with approval from Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
         
    }
}
