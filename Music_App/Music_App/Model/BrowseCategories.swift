//
//  card.swift
//  Apple Music
//
//  Created by Alice Milo on 16/11/23.
//

import SwiftUI
    
struct Genere: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let color: Color
}

let generi: [Genere] = [
    Genere (name: "Spatial Audio", image: "Spatial Audio", color: .pink),
    Genere (name: "Apple Music Artist of the Year 2023", image: "Artist of the Year", color: .clear),
    Genere (name: "Pop Italiano", image: "Pop Italiano", color: .blue),
    Genere (name: "Rap Italiano", image: "Rap Italiano", color: .orange),
    Genere (name: "Charts", image: "Charts", color: .yellow),
    Genere (name: "Hits", image: "Hits", color: .red),
    Genere (name: "Apple Music Classical", image: "Classical", color: .pink),
    Genere (name: "Dj Mixes", image: "Dj Mixes", color: .purple),
    Genere (name: "Hip-Hop", image: "Hip-Hop", color: .green),
    Genere (name: "Pop", image: "Pop", color: .cyan),
]
