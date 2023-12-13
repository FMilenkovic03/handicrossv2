//
//  IndiceTest.swift
//  HandiCross
//
//  Created by apprenant67 on 05/12/2023.
//

import SwiftUI

//
struct Indices: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var color: Color
}

var cadeau = Indices(icon: "gift.circle.fill", name: "Indices gratuits", color: .white)
var partage = Indices(icon: "square.and.arrow.up.circle.fill", name: "Partager un contenu", color: .white)
var inviter = Indices(icon: "person.fill.badge.plus", name: "Inviter un collègue", color: .white)
var video = Indices(icon: "video.circle.fill", name: "Regarder une vidéo", color: .white)
var Quiz = Indices(icon: "questionmark.circle.fill", name: "Faire un Quiz", color: .white)



struct indices: View {
    var arrayTips: [Indices] = [cadeau, partage, inviter, video, Quiz ]
    @State private var selectedIndice = ""
    
    var body: some View {

            ZStack {
                Rectangle()
                LinearGradient(gradient: Gradient(colors: [.lineargreen, .linearpurple, .tbsand]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .cornerRadius(15.0)
                    .frame(width:393, height:630)
                    .offset(x:0, y: 15)
                
                ZStack {
                    VStack() {
                        Text("Débloquez des indices & gagnez des points")
                            .padding(.leading)
                            .padding(.top, 30)
                            .bold()
                            .font(.custom("helvetica-bold", size: 24))
                            .multilineTextAlignment(.center)
                            .offset(x:-8, y: 0)
                        List(arrayTips) { Indices in
                            ZStack {
                                Rectangle ()
                                    .frame(width:310, height:60)
                                    .foregroundStyle(.greenTips)
                                    .cornerRadius(15.0)
                                HStack {
                                    Text(Indices.name)
                                        .font(.custom("helvetica-bold", size: 20))
                                        .foregroundStyle(.white)
                                        .offset(x:-2, y: 0)
                                    Spacer()
                                    Button {
                                        print("clicked")
                                        switch Indices.name {
                                        case "Indices gratuits":
                                            //action ici
                                            selectedIndice = "Indices gratuits"
                                        case "Partager un contenu":
                                            //je te laisse remplir la suite
                                            selectedIndice = "Partager un contenu"
                                        case "Inviter un collègue":
                                            //action
                                            selectedIndice = "Inviter un collègue"
                                        case "Regarder une vidéo":
                                            //action
                                            selectedIndice = "Regarder une vidéo"
                                        case "Faire un Quiz":
                                            selectedIndice = "Faire un Quiz"
                                        default:
                                            //action
                                            selectedIndice = "retour vue principale"
                                        }
                                        print(selectedIndice)

                                    }label: {
                                        Image(systemName: Indices.icon)
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                            .foregroundStyle(Indices.color)
                                            .offset(x:-12, y: 0)
                                    }
                                }
                                .padding(.leading)
                                
                            }
                        }
                        .scrollContentBackground(.hidden)
                     
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20).fill(.white)
                    )
                .frame(width:350, height:550)
                    
                    if selectedIndice == "Indices gratuits" {
                        IndiceGiftLink()
                            //à faire: regarder comment les animations fonctionne
                        //à voir si y'a pas un truc sympa avec
                    }
                    if selectedIndice == "Faire un Quiz"{
                            quiz()
                    }
                }
            }
        }
    }

#Preview {
    indices()
}
