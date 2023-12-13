//
//  jeu.swift
//  HandiCross
// Fait par Filip
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI



struct jeu: View {
    @State private var textFieldValues: [String] = ["", "", "", ""]
    let max_length: Int = 1
    @State private var navigateToOtherView: Bool = false
    
    @State private var testString = ""
    @State var seneque  = ["S", "E", "N", "E", "Q", "U", "E"]
    @State var genet = ["G", "E", "N", "E", "T"]
    @State var cezanne = ["C", "E", "Z", "A", "N", "N", "E"]
    @State var hera = ["H", "E", "R", "A"]
    @State var ceres = ["C", "E", "R", "E", "S"]
    let rqthButton = Array("HTQR")
    let letterColors: [String: Color] = ["R": .orangeTest01, "Q": .orangeTest01, "T": .orangeTest01, "H": .orangeTest01]
    @State private var test = true
    var body: some View {
        NavigationStack{
            ZStack{
                //            rectangle faisant la couleur de fond
                Rectangle()
                    .foregroundStyle(.bgpurple)
                
                
                //            après le fond
                VStack{
                    ZStack{
                        //                    rectangle blanc en en-tête où sont écrits les infos et l'énigme
                        Rectangle()
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 15,
                                    bottomTrailingRadius: 15,
                                    topTrailingRadius: 0
                                )
                            )
                            .foregroundStyle(.white)
                            .frame(width: 390, height: 175)
                        VStack{
                            Text("Niveau 1")
                            Text("Art & Culture")
                            Text("100 points")
                            //                        4 textfield vide sans bordure excepté celle du bas
                            HStack(alignment: .center){
                                ForEach(0..<4){ index in
                                    VStack(alignment: .center){
                                        TextField("", text: $textFieldValues[index])
                                        // surveille les changements de textFieldValues[index]
                                            .onChange(of: textFieldValues[index]){ _, newText in
                                                // Vérifie si newText dépasse max_length
                                                
                                                if newText.count > max_length {
                                                    // Si oui, on tronque newText à max_length
                                                    textFieldValues[index] = String(newText.prefix(max_length))
                                                }
                                            }
                                            .font(.custom("helvetica", size: 20))
                                            .padding(.horizontal, 20)
                                        
                                        Rectangle()
                                            .frame(width: 80, height: 2)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                        
                        
                    }
                    Spacer()
                    //                crosswords start here
                    ZStack{
                        OffStackView(letters: seneque, offset: 0, offsety: -125, isVertical: true, letterColor: letterColors)
                        OffStackView(letters: genet, offset: -50, offsety: 128, isVertical: true, letterColor: letterColors)
                        OffStackView(letters: cezanne, offset: -102, offsety: -25, isVertical: false, letterColor: letterColors)
                        OffStackView(letters: hera, offset: 0, offsety: -100, isVertical: false, letterColor: letterColors)
                        OffStackView(letters: ceres, offset: 152, offsety: -75, isVertical: false, letterColor: letterColors)
                    }
                    //   boutons de clavier à placer ici avec les lettres de cuelho
                    NavigationLink(destination: popupFinNiveau(), isActive: $navigateToOtherView) {
                        EmptyView()
                    }
                    .hidden()
                    HStack{
                        Spacer()
                        ForEach(rqthButton, id: \.self){ index in
                            Button(action: {
                                // Trouvez le premier TextField vide
                                if let emptyIndex = textFieldValues.firstIndex(where: { $0.isEmpty })
                                {
                                    // Ajoutez la valeur du bouton à textFieldValues à cet index
                                    textFieldValues[emptyIndex] = String(index)
                                }
                                if textFieldValues.joined() == "RQTH" {
                                    navigateToOtherView = true
                                }
                            }, label: {
                                Text(String(index))
                                    .font(.custom("helvetica", size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 50, height: 50)
                                    .background(Color.black)
                                    .clipShape(Circle())
                            })
                        }
                        Spacer()
                            NavigationLink {
                                indices()
                            }label: {
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .foregroundStyle(.orangeTest01)
                                    Image(systemName: "lightbulb.fill")
                                        .resizable()
                                        .foregroundStyle(.white)
                                        .frame(width: 20, height: 30)
                                }
                            }
                        
                        
                    }.padding()
                }
                
                Text("Philosophe de l’école stoïcienne. Dramaturge et homme d’Etat romain.")
                    .padding()
                    .background(.black)
                    .foregroundStyle(.white)
                    .offset(y:100)
                    .opacity(test ? 1 : 0)
                    .onTapGesture {
                            test = false
                    }
            }
        }
    }
}

#Preview {
    jeu()
}

