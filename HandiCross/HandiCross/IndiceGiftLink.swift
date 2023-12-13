//
//  IndiceGiftLink.swift
//  HandiCross
//
//  Created by apprenant67 on 07/12/2023.
//

import SwiftUI

struct IndiceGiftLink: View {
    
    
    @State var hours: Int = 5
    @State var minutes: Int = 5
    @State var seconds: Int = 0
    
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    
    func startTimer(){
        timerIsPaused = false
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true){ tempTimer in
            if hours >= 0 {
                if seconds <= 0 {
                    minutes -= 1
                    
                    if minutes <= 0 {
                        
                        minutes = 59
                        hours -= 1
                    }
                    
                }
            } else {
                timerIsPaused = true
                if timerIsPaused == true {
                    hours = 5
                    minutes = 0
                }
            }
 
        }
    }
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                Spacer()
                LinearGradient(gradient: Gradient(colors: [.lineargreen, .linearpurple, .tbsand]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .cornerRadius(15.0)
                    .frame(width:393, height:630)
                    .offset(x:0, y: 15)
                VStack{
                    ZStack {
                        Rectangle()
                            .frame(width:340, height:500)
                            .foregroundStyle(Color.white)
                            .cornerRadius(15.0)
                            .overlay {
                                VStack{
                                    Spacer()
                                    ZStack {
                                        Rectangle ()
                                            .frame(width:310, height:60)
                                            .foregroundStyle(.greenTips)
                                            .cornerRadius(15.0)
                                        HStack{
                                            Text("Indice gratuit")
                                                .font(.custom("helvetica-bold", size: 20))
                                                .foregroundStyle(.white)
                                                .padding()
                                                .offset(x:-20, y: 0)
                                            VStack {
                                                ZStack {
                                                    Rectangle()
                                                        .frame(width: 110, height: 35)
                                                        .cornerRadius(10.0)
                                                        .foregroundStyle(.white)
                                                    Text("\(hours)h \(minutes)mn")
                                                    
                                                        .onAppear(perform: {
                                                            //ta fonction pour lancer le timer
                                                            //A GARDER
                                                            startTimer()
                                                        })
                                                    
                                                }
                                            }.offset(x:6, y: 0)
                                            
                                        }
                                    }
                                    .padding(.bottom, 20)
                                    //
                                }
                            }
                        Text("BRAVO !")
                            .font(.custom("helvetica-bold", size: 25))
                            .foregroundStyle(.goldGift)
                            .padding(.top, -220)
                        Image(.giftBox)
                            .resizable()
                            .frame(width:150, height:150)
                            .padding(.top, -10)
                            .scaleEffect(animationAmount)
                            .animation(
                            .easeInOut (duration: 2)
                            .repeatCount(3, autoreverses: true), value: animationAmount
                            )
                        
                            .overlay(
                                Circle()
                                    .stroke(.goldGift)
                                    .scaleEffect(animationAmount)
                                    .opacity(2 - animationAmount)
                                    .scaleEffect(animationAmount)
                                    .animation(
                                        .easeOut (duration: 1)
                                        .repeatCount(4, autoreverses:
                                                        true),
                                        value: animationAmount
                                    )
                            )
                            .onAppear {
                                animationAmount = 2
                                
                                
                                
                            }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    IndiceGiftLink()
}
