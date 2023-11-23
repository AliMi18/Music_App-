//
//  Category.swift
//  Apple Music
//
//  Created by Alice Milo on 14/11/23.
//

import SwiftUI

let categories: [Category] = [
Category (name: "Playlist", image: "music.note.list"),
Category (name: "Artists", image: "music.mic"),
Category (name: "Album", image: "rectangle.on.rectangle"),
Category (name: "Songs", image: "music.note"),
Category (name: "Genres", image: "guitars"),
]

struct Category: Identifiable {
    var id = UUID ()
    
    var name: String
    var image: String
}

