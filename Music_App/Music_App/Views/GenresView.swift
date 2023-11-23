import SwiftUI

struct GenresView: View {
    @State private var searchTest = ""

    var body: some View {
    
                List {
                  ForEach(Genres) { genre in
                        NavigationLink(destination: SongView()) {
                                
                                VStack {
                                    Text(genre.name)
                                        .font(.system(size: 20))
                                        .padding(.leading, 6.0)
                                        .foregroundColor(.red)
                                }

                                
                            
                        }
                        .searchable(text: $searchTest)
                    }
                }
                .navigationBarTitle("Genres")
                .listStyle(.inset)
            }
        }

#Preview {
    GenresView()
    }

