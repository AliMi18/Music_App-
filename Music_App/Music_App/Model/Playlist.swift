//
//  card.swift
//  Apple Music
//
//  Created by Alice Milo on 16/11/23.
//

import SwiftUI
    
struct Playlist: Identifiable {
    let id = UUID()
    let name: String
}

let Playlists: [Playlist] = [
    Playlist (name: "Lice"),
    Playlist (name: "Road Trip"),
    Playlist (name: "Love"),
    Playlist (name: "Chill"),
    Playlist (name: "Saturday night")
]
