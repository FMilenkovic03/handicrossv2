//
//  tableau_score.swift
//  HandiCross
// Fait par Filip
//  Created by Apprenant83 on 29/11/2023.
// 

import SwiftUI

struct tableau_score: View {
    var body: some View {
//        début de la view
        ZStack{
//            fond de couleur
            Rectangle()
                .foregroundStyle(.bgpurple)
//            éléments à la verticale
            VStack{
//                ici l'en-tête tableau des scores
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(width: 360, height: 180)
                        .foregroundStyle(.tbsand)
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(width: 300, height: 140)
                        .foregroundStyle(.bgpurple)
                    Text("Classement")
                        .font(.custom("helvetica-bold", size: 32))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                }
                Spacer()
//                ici les row de personnes
                ScoreRow(position: "1", initials: "LD", name: "Liliane D.", score: "2000", color: .goldFirst)
                ScoreRow(position: "2", initials: "RB", name: "Roseline B.", score: "1472", color: .bronzeSecond)
                ScoreRow(position: "3", initials: "JJ", name: "Jean J.", score: "970", color: .greenThird)
                ScoreRow(position: "4", initials: "Vs", name: "Vous", score: "472", color: .blueFourth)
                Spacer()
            }
        }.toolbarBackground(.visible, for: .tabBar)
    }
}



#Preview {
    tableau_score()
}
