//
//  structures.swift
//  HandiCross
//
//  Created by Apprenant83 on 04/12/2023.
//

import Foundation
import SwiftUI

class NavigationBackToRoot: ObservableObject {
    @Published var backToRoot = false
}

// tab bar
struct tabStart : View {
    
    init() {
        UITabBar.appearance().tintColor = UIColor(Color.bgpurple)
    }
    
//    @State private var test = 0
    var body: some View {
        
        
        TabView{
            InterfaceAtterissage()
                    .tabItem{
                        Label("Jouer", systemImage: "gamecontroller.fill")
                    }
                    
                    .toolbarBackground(Color.tbsand, for: .tabBar)
            historique()
                    .tabItem{
                        Label("Historique", systemImage: "list.bullet.clipboard.fill")
                    }
                
                    .toolbarBackground(Color.tbsand, for: .tabBar)

            tableau_score()
                    .tabItem{
                        Label("Scores", systemImage: "trophy.fill")
                    }
                
                    .toolbarBackground(Color.tbsand, for: .tabBar)

            }
        .tint(.bgpurple)
//            .accentColor(.bgpurple)
//            .environmentObject(navPath)
    }
}

// les rangs de scores pour le tableau des scores
struct ScoreRow: View {
//    ici vous avez les variables pour les lignes
    let position: String
    let initials: String
    let name: String
    let score: String
    let color: Color
//debut de la view
    var body: some View {
//        voici ce que font les rows
        ZStack(alignment: .leading){
//            on les place sur leur fond
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 360, height: 100)
                .foregroundStyle(color)
//            mise en place visu + contenu
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 90, height: 100)
                        .foregroundStyle(.white)
                    Rectangle()
                        .frame(width: 69, height: 69)
                        .clipShape(Circle())
                        .foregroundStyle(color)
                    VStack{
                        Text(position)
                            .font(.custom("helvetica", size: 20))
                        Image(systemName: "trophy.fill")
                    }
                }
//                le contenu avec les initiales, les noms et les scores respectifs
                    Text(initials)
                        .font(.custom("helvetica", size: 20))
                        .padding()
                        .background(.white)
                        .clipShape(Circle())
                    Text(name)
                    Spacer()
                    Text(score)
                        .padding()
            }
            .frame(width:360)
        }
    }
}

// on a les boutons d'historique
struct HistoriqueButton: View {
    let iconHisto: String
    let textHisto: String
// la view
    var body: some View {
//        navigationLink vers la fiche informative
        NavigationLink{
            ficheInformative()
        }label:{
//            design des boutons de navigation
            ZStack(alignment: .leading)
            {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width : 360, height: 100)
                    .foregroundStyle(.white)
                HStack
                {
                        Image(iconHisto)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(.black)
                   
                    
                    Text(textHisto)
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("helvetica", size: 20))
                }
                .padding()
            }
        }
    }
}

struct OffStackView : View {
    
    var letters : [String]
    var offset: CGFloat
    var offsety: CGFloat
    var isVertical: Bool
    var letterColor: [String: Color]
    
    var body: some View {
        VStack{
            if !isVertical {
                VStack{
                    ForEach(letters, id:\.self){ letter in
                            Text(letter)
                                .padding()
                                .frame(width: 43, height: 43)
                                .background(
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundStyle(.white))
                                    .foregroundColor(self.letterColor[letter] ?? .black)
                                    .fontWeight( letterColor[letter] != .black ? .bold : .regular )
                    }
                }
                .offset(x: offset, y: offsety)
            }else{
                HStack{
                    ForEach(letters, id:\.self){letter in
                            Text(letter)
                                .padding()
                                .frame(width: 43, height: 43)
                                .background(
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundStyle(.white))
                                     .foregroundColor(self.letterColor[letter] ?? .black)
                                     .fontWeight( letterColor[letter] != .black ? .bold : .regular )
                    }
                }
                .offset(x: offset, y: offsety)
            }
                
        }
    }
}

struct TextData {
    static let textRQTH: String = """
    • La Reconnaissance de la Qualité de Travailleur Handicapé (RQTH), est un statut administratif.

    • Demander la reconnaissance de la qualité de travailleur handicapé (RQTH), c’est faire reconnaître officiellement par la Commission des droits et de l’autonomie des personnes handicapées (CDAPH) son aptitude au travail, suivant ses capacités liées au handicap.

    • La demande de RQTH est déposée auprès de la MDPH (Maison Départementale des Personnes Handicapées) du lieu de résidence du demandeur, à l’aide du formulaire Cerfa n°15692*01, du certificat médical Cerfa n°15695*01, et s’accompagne de toutes les pièces justificatives utiles en remplissant le formulaire de demande unique.

    • Le médecin du travail dispose de formulaires spécifiques permettant de bénéficier d’une procédure accélérée. Il est donc conseillé d’initier la demande par son intermédiaire.

    • L’évaluation de la demande de RQTH et de l’orientation professionnelle est effectuée par l’équipe pluridisciplinaire de la MDPH. Sur la base de cette évaluation, des préconisations sont formalisées dans un plan personnalisé de compensation (PPC).

    • La RQTH est accordée par la commission des droits et de l’autonomie des personnes handicapées (CDAPH), au regard du PPC. La décision précise la durée de la RQTH (comprise entre 1 et 5 ans).

    • Ce statut est confidentiel, seule la personne peut décider de le communiquer ou non à son employeur.

    • La RQTH donne également une priorité d’accès à diverses mesures d’aides à l’emploi et à la formation, ainsi qu’à des aménagements des dispositifs existants (contrat d’apprentissage, contrat unique d’insertion, etc.).

    • La RQTH est accordée pour une durée déterminée, et c’est au salarié de renouveler sa demande si nécessaire. Pour éviter les situations de rupture de droits au moment du renouvellement et plus généralement pour ne pas imputer les délais de traitement, le décret n° 2018-850 du 5 octobre 2018 permet de proroger la RQTH jusqu’à la décision suivante.

    • En cas de licenciement, la durée du préavis légal est doublée pour les travailleurs reconnus handicapés et, plus généralement, pour les bénéficiaires de l’obligation d’emploi des travailleurs handicapés, sans toutefois que cette mesure puisse avoir pour effet de porter au-delà de trois mois la durée du préavis.
    """
}


#Preview {
    tabStart()
}
