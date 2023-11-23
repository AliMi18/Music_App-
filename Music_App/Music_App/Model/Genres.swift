//
//  card.swift
//  Apple Music
//
//  Created by Alice Milo on 16/11/23.
//

import SwiftUI
    
struct Genre: Identifiable {
    let id = UUID()
    let name: String
}

let Genres: [Genre] = [
    Genre (name: "Rock"),
    Genre (name: "Pop"),
    Genre (name: "Classic"),
    Genre (name: "Rap"),
    Genre (name: "Electronic")
]
