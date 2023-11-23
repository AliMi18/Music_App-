//
//  Album.swift
//  Apple Music
//
//  Created by Alice Milo on 20/11/23.
//

import SwiftUI

struct AlbumView: View {
    @State private var searchTest = ""
    
    var body: some View {
        
        
        //ZStack {
        
        ScrollView {
            
            HStack{
                
                Button {} label: {
                    ZStack {
                        
                        RoundedRectangle (cornerRadius: /*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 11.0)
                            .frame(width: 190.0, height: 50.0)
                            .foregroundColor(.gray.opacity(0.2))
                        
                        
                        HStack {
                            
                            Image(systemName: "play.fill")
                                .foregroundColor(.red)
                            
                            Text("Play")
                                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                                .fontWeight(.semibold)
                                .foregroundColor(.red)
                            
                            
                        }
                    }
                }
                
                Button {} label: {
                    ZStack {
                        
                        RoundedRectangle (cornerRadius: /*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 11.0)
                            .frame(width: 190.0, height: 50.0)
                            .foregroundColor(.gray.opacity(0.2))
                        
                        HStack {
                            
                            Image(systemName: "shuffle")
                                .foregroundColor(.red)
                            
                            Text("Shuffle")
                                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                                .fontWeight(.semibold)
                                .foregroundColor(.red)
                            
                            
                        }
                    }
                }
            }
            .padding(.all, 17.0)
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
                                //.foregroundColor(.red)
                            
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
            .searchable(text: $searchTest)
            .navigationBarTitle("Albums")
            .padding(.horizontal, 20.0)
            
        }
    }
    
    
}

#Preview {
    AlbumView()
}


