//
//  selectionTheme.swift
//  HandiCross
//
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct selectionTheme: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                Rectangle()
                LinearGradient(gradient: Gradient(colors: [.lineargreen, .linearpurple,.linearorange]), startPoint:.top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            
                        }label: {
                            
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width:40, height: 40)
                                .foregroundStyle(.white)
                        }
                        .padding()
                    }
                    
                    ZStack{
                        Text("SELECTIONNEZ UN THÈME")
                            .font(.custom("helvetica-bold", size: 25))
                            .padding()
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                    }
                    .frame(width: 370, height: 60)
                    
                    Spacer()
                    ScrollView{
                        VStack(spacing: 20) {
                            NavigationLink{
                                jeu()
                            }label: {
                                
                                HStack{
                                    Image(.artPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                        .cornerRadius(6)
                                        .offset(x:-5, y: 0)
                                    
                                    VStack{
                                        Text("Art & Culture")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica-bold", size: 18))
                                        Text("10 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15.0)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("1000")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                        }
                                        
                                    }
                                    .padding(.trailing, 10)
                                    
                                    
                                }
                                .background(Color(.artbleu)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                )
                                .frame(width: 363, height: 80 )
                                
                            }
                            Button{
                                
                            }label: {
                                
                                HStack (spacing: 19){
                                    Image(.geoPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                        .clipShape(RoundedRectangle(cornerRadius: 0.0))
                                        .offset(x:-5, y: 0)
                                    VStack{
                                        Text("Géographie")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica-bold", size: 18))
                                        Text("8 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("800")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                            
                                            
                                        }
                                        
                                    }
                                    .padding(.trailing, 10)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundStyle(.bluegeo)
                                )
                                .frame(width: 363, height: 80 )
                            }
                            
                            
                            Button{
                                
                            }label: {
                                HStack (spacing: 17){
                                    Image(.cookPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                        .cornerRadius(6)
                                    VStack{
                                        Text("Cuisine")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica-bold", size: 18))
                                        Text("6 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("600")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                        }
                                    }
                                    .padding(.trailing, 10)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundStyle(.purplecook)
                                )
                                .frame(width: 363, height: 80 )
                            }
                            
                            
                            Button{
                                
                            }label: {
                                HStack (spacing: 19){
                                    Image(.sportPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                        .cornerRadius(6)
                                    VStack{
                                        Text("Sport")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica-bold", size: 18))
                                        Text("5 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("500")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                        }
                                    }
                                    .padding(.trailing, 10)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundStyle(.greensport)
                                )
                                .frame(width: 363, height: 80 )
                            }
                            
                            
                            Button{
                                
                            }label: {
                                HStack (spacing: 19){
                                    Image(.lizardPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                    VStack{
                                        Text("Animaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica-bold", size: 18))
                                        Text("4 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("400")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                        }
                                    }
                                    .padding(.trailing, 10)
                                    
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .foregroundStyle(.orangelizard)
                                )
                                .frame(width: 363, height: 80 )
                                
                            }
                            
                            
                            
                            Button{
                                
                            }label: {
                                HStack (spacing: 19){
                                    Image(.travelPic)
                                        .resizable()
                                        .padding()
                                        .frame(width: 110, height: 80)
                                    VStack{
                                        Text("Voyage")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                        Text("4 niveaux")
                                            .foregroundStyle(.white)
                                            .font(.custom("helvetica", size: 18))
                                    }
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .frame(width:67, height: 60)
                                            .foregroundStyle(.white)
                                        VStack{
                                            Text("400")
                                                .font(.custom("helvetica", size: 18))
                                            Text("points")
                                                .font(.custom("helvetica", size: 18))
                                        }
                                    }
                                    .padding(.trailing, 10)
                                    
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .foregroundStyle(.orangeTest01)
                                )
                                .frame(width: 363, height: 80 )
                            }
                        }
                        
                    }
                    
                    Spacer()
                }
                
                
            }
        }
    }
}
#Preview {
    selectionTheme()
}
