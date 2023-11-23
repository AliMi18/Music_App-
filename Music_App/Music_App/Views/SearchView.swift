//
//  Album.swift
//  Apple Music
//
//  Created by Alice Milo on 20/11/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchTest = ""
    
    var body: some View {
        
        NavigationStack{
            ScrollView {
                
                VStack(alignment: .leading) {
                    Text("Browse Categories")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top, 10)
                    
                    let columns: [GridItem] = [
                        GridItem(.flexible(), spacing: 27),
                        GridItem(.flexible(), spacing: 17)
                    ]
                    
                    LazyVGrid(columns: columns, spacing: 13) {
                        ForEach(generi) { genere in
                            NavigationLink (destination: EmptyView()) {
                                
                                ZStack {
                                    Image(genere.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 180, height: 140)
                                        .cornerRadius(10)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10.0)
                                                .frame(width: 180, height: 140)
                                                .foregroundColor(genere.color)
                                                .opacity(0.3)
                                        )
                                    
                                    VStack(alignment: .leading) {
                                        Spacer()
                                        Text(genere.name)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                            .padding(10)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .alignmentGuide(.leading) { _ in 0 }
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                .searchable(text: $searchTest)
                .navigationBarTitle("Search")
                .padding(.horizontal, 20.0)
            }
        }
    }
}


#Preview {
    SearchView()
}
