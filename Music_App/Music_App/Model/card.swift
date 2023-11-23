//
//  card.swift
//  Apple Music
//
//  Created by Alice Milo on 16/11/23.
//

import SwiftUI
    
struct Card: Identifiable {
    let id = UUID()
    let name: String
    let author: String
    let image: String
}

let cards: [Card] = [
    Card(name: "Ephemeral Twilight Serenade", author:"Ember Grove", image: "forest"),
    Card(name: "Spectral Reverie",author: "Luna ", image: "spider net"),
    Card(name: "Cascade",author:"Echo", image: "moon"),
    Card(name: "Whispers",author: "Nova Melodies", image: "OldTree"),
    Card(name: "Mirage Waltz",author:"Velvet", image: "Flying"),
    Card(name: "Astral",author: "J2a", image: "PinkBuilding"),
]
