//
//  ContentView.swift
//  Music_App
//
//  Created by Alice Milo on 21/11/23.
//

import SwiftUI
import UIKit
import Foundation

struct ContentView: View {
    @State private var selectedTab = 3
    @State private var searchTest = ""
    
    var body: some View {
        TabView (selection: $selectedTab) {
            
            
            
            //tab 1 e 2
            ListenView()
                .tabItem {
                    Label("Listen Now", systemImage: "play.circle.fill")
                }
                .tag(0)
            
            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Radio")
                }
                .tag(1)
            
            
            
            //Library
            
            NavigationStack {
                VStack {
                    List {
                        ForEach(categories) { category in
                            NavigationLink(destination: destinationForCategory(category) ) {
                                HStack {
                                    Image(systemName: category.image)
                                        .foregroundColor(.red)
                                        .font(.system(size: 20))
                                        .frame(width: 30)
                                    Text(category.name)
                                        .font(.system(size: 20))
                                    Spacer()
                                }
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            
                            Text("Recently Added")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.top, 12)
                            
                            let columns: [GridItem] = [
                                GridItem(.flexible(), spacing: 16),
                                GridItem(.flexible(), spacing: 16)
                            ]
                            
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(cards) { card in
                                    
                                    Button(action: {
                                        print()
                                    }) {
                                        VStack(alignment: .leading, spacing: 6) {
                                            Image(card.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 170, height: 170)
                                                .cornerRadius(10)
                                                .foregroundColor(.red)
                                            
                                            Text(card.name)
                                                .font(.headline)
                                            Text(card.author)
                                                .font(.subheadline)
                                                .foregroundColor(.gray)
                                            
                                            Spacer()
                                        }
                                        .cornerRadius(10)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                        }
                    }
                    .navigationBarTitle("Library")
                    .toolbar {
                        Button {} label: {
                            Text("Edit")
                                .foregroundColor(.red)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .tabItem {
                Image(systemName: "square.stack.fill")
                Text("Library")
                
            }.tag(3)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            .tag(2)}
        
        .tint(.red)
    }
    
    func destinationForCategory(_ category: Category) -> some View {
        switch category.name {
        case "Playlist":
            return AnyView(PlaylistView())
        case "Artists":
            return AnyView(ArtistsView())
        case "Songs":
            return AnyView(SongsView())
        case "Genres":
            return AnyView(GenresView())
        case "Album":
            return AnyView(AlbumView())
        default:
            return AnyView(AlbumView())
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
