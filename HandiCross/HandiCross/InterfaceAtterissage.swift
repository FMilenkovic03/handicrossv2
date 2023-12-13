//
//  InterfaceAtterissage.swift
//  HandiCross
// Fait par Filip
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct InterfaceAtterissage: View {
    @State private var isPressed = false
    @State private var isHovered = false
    var body: some View {
        //        ZTACK général pour pouvoir avoir toutes les shapes superposés
        NavigationStack{
            ZStack{
                //            ce rectangle c'est le background
                Rectangle()
                    .foregroundStyle(.bgpurple)
                //            commencent ici les éléments de la devanture de l'écran avec les boutons et logos et tabbar
                VStack{
                    //                bouton paramètres
                    HStack(){
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(width: 44, height: 44)
                                .foregroundStyle(.tbsand)
                                .clipShape(Circle())
                            
                            Button{
                                
                            }label: {
                                Image(systemName: "gearshape.fill")
                                    .foregroundStyle(.black)
                            }
                            
                            
                        }
                        .padding()
                    }
                    //                logo ici
                    Image("logoAccueil")
                        .frame(width: 215, height: 212)
                        .foregroundStyle(.white)
                    Text("Handi' Cross")
                        .foregroundStyle(.white)
                        .font(.custom("helvetica-bold", size: 32))
                    Spacer()
                    
                    //                boutons jouer
                    NavigationLink(destination: selectionTheme()){
                        ZStack{
                            RoundedRectangle(cornerRadius: 50.0)
                                .frame(width: 210, height: 50)
                                .foregroundStyle(.tbsand)
                                .scaleEffect(isPressed ? 0.95 : 1.0)
                            Text("Jouer")
                                .padding()
                                .foregroundColor(.black)
                                .font(.custom("helvetica", size: 24))
                            
                        }
                        .padding()
                        .animation(.easeOut(duration: 0.2), value: isPressed)
                    }
                    //                bouton quitter
                    Button{
                        exit(-1)
                    }label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 50.0)
                                .frame(width: 210, height: 50)
                                .foregroundStyle(.buttongreen)
                            Text("Quitter")
                                .padding()
                                .font(.custom("helvetica", size: 24))
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    Spacer()
                }
                
                //                boutons règles du jeu
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink{
                            regles()
                        }label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 44, height: 44)
                                    .foregroundStyle(.tbsand)
                                    .clipShape(Circle())
                                Image(systemName: "book.fill")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                    }
                }
            }
            
        }
        .toolbarBackground(.visible, for: .tabBar)
    }
}


#Preview {
    InterfaceAtterissage()
}
