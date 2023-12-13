//
//  ficheInformative.swift
//  HandiCross
// Fait par Akram
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct ficheInformative: View {
    var body: some View {
        
        ZStack{
            
            Rectangle()
            LinearGradient(gradient: Gradient(colors: [.bgpurple, .tbsand,]), startPoint:.top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width:363, height: 180)
                        .foregroundStyle(Color.tbsand)
                        .cornerRadius(25)
                    Rectangle()
                        .frame(width:320, height: 137)
                        .foregroundStyle(Color.bgpurple)
                        .cornerRadius(20)
                    Text("R Q T H")
                        .font(.custom("helvetica", size: 50))
                        .padding()
                        .foregroundStyle(.white)
                        .cornerRadius(25)
                    
                }
                .padding(10)
                ZStack{
                    Rectangle()
                        .frame(width:363, height:434)
                        .foregroundStyle(Color.white)
                        .cornerRadius(25)
                        .overlay {
                            ScrollView {
                                Text(TextData.textRQTH)
                                    .padding()
                            }
                            HStack{
                                
                                Spacer()
                                Button{
                                    
                                }label:{
                                    Image(systemName: "arrow.down.circle.fill")
                                        .resizable()
                                        .frame(width:40, height: 40)
                                        .foregroundStyle(.white)
                                        .offset(x:-40, y: 260)
                                }
                                Button{
                                    
                                }label:{
                                    Image(systemName: "square.and.arrow.up.circle.fill")
                                        .resizable()
                                        .frame(width:40, height: 40)
                                        .foregroundStyle(.white)
                                        .offset(x:-55, y: 260)
                                        .padding()
                                }
                                Spacer()
                                Spacer()
                                Spacer()
                                
                            }
                            
                        }

                }
                Spacer()
                Spacer()

            }
        }
    }
}
#Preview {
    ficheInformative()
}
