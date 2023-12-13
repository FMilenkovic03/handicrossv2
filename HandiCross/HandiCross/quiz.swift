//
//  quiz.swift
//  HandiCross
// Fait par Akram
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

//
//  popupFinNiveau.swift
//  HandiCross
//
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct quiz: View {
    var body: some View {
        ZStack{
//            Rectangle()
            LinearGradient(gradient: Gradient(colors: [.pinktravel, .linearpurple, .lineargreen]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(15.0)
                .ignoresSafeArea()

            VStack{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:363, height: 180)
                        .foregroundStyle(Color.degbeige)
                        .cornerRadius(20)
                    Rectangle()
                        .frame(width:307, height: 153)
                        .foregroundStyle(Color.white)
                        .cornerRadius(10)
                    Image(.quiz)
                        .resizable()
                        .padding()
                        .frame(width: 300, height: 150)
                        .cornerRadius(6)
                        .offset(x:-5, y: 0)
                }
                Spacer()
                                ScrollView{
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("RQTH")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 80 )
                
                
                Button {
                    
                }label: {
                    HStack{
                        
                        VStack{
                            Text("Loi sur le handicap")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Typolgies de handicap")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 75 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Politiques handicap en entreprise")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 30 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Les secteurs adaptés et protégés")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height:70 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Recruter une personne handicapée")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 35 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Manager les PH au travail")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 60 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Compensation au handicap")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 40 )
                
                Button{
                    
                }label: {
                    HStack {
                        
                        VStack{
                            Text("Maintien dans l'emploi")
                                .foregroundStyle(.black)
                                .font(.custom("helvetica", size: 20))
                            
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .padding()
                        .frame(width: 380, height:70)
                        .cornerRadius(6)
                        .foregroundStyle(.white)
                    
                )
                .frame(width: 363, height: 60 )
                
               
                Spacer()
            }
            
                
            }
                    }
                }
                
            }

    #Preview {
        quiz()
    }

