//
//  historique.swift
//  HandiCross
// fait par Filip
//  Created by Apprenant83 on 29/11/2023.
//

import SwiftUI





struct historique: View {
    let data = [
        ("iconRQTH", "Reconnaissance de la Qualité de Travailleur Handicapé"),
        ("iconLoi", "La significaiton des lois et leurs applications dans les entreprises"),
        ("iconTypeHandicap", "Comprendre les typologies de handicap pour adapter sa posture"),
        ("iconManagement", "Comment accueillir et manager une personne en situation de handicap")
    ]
    
    
    var body: some View {
        //        début de la vue
        NavigationStack{
            ZStack{
                Rectangle()
                    .foregroundStyle(.bgpurple)
                VStack{
                    //            ici je met le haut de l'écran
                    ZStack{
                        RoundedRectangle(cornerRadius: 20.0)
                            .frame(width: 360, height: 180)
                            .foregroundStyle(.tbsand)
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(width: 300, height: 140)
                            .foregroundStyle(.bgpurple)
                        Text("Historique des découvertes")
                            .font(.custom("helvetica-bold", size: 32))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    //            ici commennce la liste
                    VStack
                    {
                        ForEach(data, id: \.1)
                        {
                           (iconHisto, textHisto) in
                            HistoriqueButton(iconHisto: iconHisto, textHisto: textHisto)
                            //                        fin button
                        }
                    }
                    .padding(.horizontal, 40)
                    
                }
            }
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}



#Preview {
    historique()
    
}
