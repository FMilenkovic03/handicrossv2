//
//  regles.swift
//  HandiCross
// Fait par MC
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI

struct regles: View {
    
    let textRègles: String = """
    1. En commençant le jeu vous aurez une interface avec des cases vides.
    
    2. En plaçant votre curseur sur les cases colorées verticales et horizontales, vous aurez des indices qui s’afficheront en haut de l’écran.
    
    3. A l’aide de ces indices, vous devez trouver un mot dont les caractères se dénombrent au nombre exact de cases présentes sur la ligne ou la colonne de l’indice.
    
    4. En rentrant un mot, si vous avez le bon, vous aurez une des lettres qui sera écrite en gras dans une case orange.
    
    5. Vous devez finir de remplir toutes les cases afin d’avoir toutes les lettres notées en gras et celles-ci vous seront utiles pour compléter le mot mystère en haut de l’écran (chaque tiret représente une lettre).
    
    6. Si vous vous trompez d’ordre alors l’écran buzzera pour vous indiquer que ce n’est pas l’emplacement de la lettre.
    
    7. Si vous trouvez le mot, vous serez dirigé vers une fiche informative en rapport avec le mot.
    
    8. Vous avez ensuite plusieurs options: aller au niveau suivant, consulter le tableau des score.
    """
    
    var body: some View {
       
        ZStack {
            Rectangle()
            LinearGradient(gradient: Gradient(colors: [.lineargreen, .linearpurple, .tbsand]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width:340, height:60)
                        .foregroundStyle(Color.white)
                        .cornerRadius(15.0)
                    Text("Règles du jeu")
                        .font(.custom("helvetica-bold", size: 32))
                        .foregroundStyle(.black)
                }.padding(10)

                    Rectangle()
                        .frame(width: 340)
                        .foregroundStyle(.white)
                        .cornerRadius(15.0)
                        .overlay {
                            ScrollView {
                                Text(textRègles)
                                    .foregroundStyle(.black)
                                    .font(.custom("helvetica", size: 20))
                                    .padding()
                                    
                            }
                        }
                
                    VStack(spacing: 20) {
                    }
            

                .padding()
                Spacer()
            }.padding(.top, 50)
            
        }
    }
}
    
#Preview {
        regles()
    }

