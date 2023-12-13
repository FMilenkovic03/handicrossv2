//
//  popupFinNiveau.swift
//  HandiCross
//
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct popupFinNiveau: View {
    @EnvironmentObject var navPath: NavigationBackToRoot
    var body: some View {

//        NavigationStack {
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
                               
                                .foregroundStyle(Color.white)
                                .cornerRadius(15.0)
                                .offset(x:0, y: -15)
                            
                            VStack{
                                Text("Vous avez débloqué l'indice. Bravo!")
                                    .font(.custom("helvetica-bold", size: 28))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 280)
                                    .foregroundStyle(.black)
                                    .padding()
                                ZStack{
                                    Rectangle ()
                                        .frame(width:150, height:50)
                                        .foregroundStyle(.artbleu)
                                        .cornerRadius(10.0)
                                    Text("R Q T H")
                                        .font(.custom("helvetica-bold", size: 32))
                                        .foregroundStyle(.white)
                                }
                                ScrollView {
                                    Text(TextData.textRQTH)
                                        .font(.custom("helvetica", size: 20))
                                        .foregroundStyle(.black)

                                        .background(.white)
                                }
                                .padding(.bottom)
                                .padding(.horizontal)
                                
                            }
                            HStack {

                                    Image(systemName:
                                            "arrow.down.circle.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.white)
                                    .offset(x:-60, y: 280)

                                    Image(systemName:"square.and.arrow.up.circle.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundStyle(.white)
                                        .offset(x:-55, y: 280)
                                
                          
                                
                                ZStack {
                                    NavigationLink {
                                        selectionTheme()
                                    } label: {
                                        Text("Niveau 2")
                                            .frame(width:100, height:40)
                                            .background(.artbleu)
                                            .font(.custom("helvetica-bold", size: 20))
                                            .foregroundStyle(.white)
                                    }
                                    .cornerRadius(10.0)
                                    .offset(x:60, y: 280)
                                }
                                
                                
                            }
                        }
                        .frame(width:350, height:510)
                    }
                }
            }
    }
}

#Preview {
    popupFinNiveau()
}
