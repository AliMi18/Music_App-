import SwiftUI

struct ArtistsView: View {
    @State private var searchTest = ""

    var body: some View {
            VStack {
                List {
                  ForEach(Artists) { artist in
                        NavigationLink(destination: SongView()) {
                            HStack {
                                
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.red)

                                VStack {
                                    Text(artist.name)
                                        .font(.system(size: 20))
                                        .padding(.leading, 6.0)
                                }

                                Spacer()
                            }
                        }
                        .searchable(text: $searchTest)
                    }
                }
                .listStyle(.inset)
            }
            .navigationBarTitle("Artists")
            .tint(.red)
        }
}

#Preview {
    ArtistsView()
    }

