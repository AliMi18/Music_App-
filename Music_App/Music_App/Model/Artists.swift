//
//  card.swift
//  Apple Music
//
//  Created by Alice Milo on 16/11/23.
//

import SwiftUI
    
struct Artist: Identifiable {
    let id = UUID()
    let name: String
}

let Artists: [Artist] = [
    Artist (name: "Ember Grove"),
    Artist (name: "Luna "),
    Artist (name: "Echo"),
    Artist (name: "Nova Melodies"),
    Artist (name: "Velvet")
]
