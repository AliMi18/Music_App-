import SwiftUI

struct PlaylistView: View {
    @State private var searchTest = ""
    
    var body: some View {
        
        List {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 90, height: 90)
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    
                    Image(systemName: "plus")
                        .font(.system(size: 40))
                        .foregroundColor(.red)
                }
                
                Text("New Playlist...")
                    .font(.system(size: 20))
                    .padding(.leading, 6.0)
                    .foregroundColor(.red)
                
                Spacer()
            }
            .accessibilityLabel("Add New Playlist")
            .accessibilityRemoveTraits(.isImage)
        
            // Existing Playlists
            ForEach(Playlists) { playlist in
                NavigationLink(destination: SongView()) {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 90)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                            
                            Image(systemName: "music.note.list")
                                .font(.system(size: 40))
                                .foregroundColor(.red)
                        }
                        
                        VStack {
                            Text(playlist.name)
                                .font(.system(size: 20))
                                .padding(.leading, 6.0)
                        }
                        
                        //Spacer()
                    }
                }
                .searchable(text: $searchTest)
            }
            
        
        }
        .navigationBarTitle("Playlist")
        .listStyle(.plain)
    }
    
}

#Preview {
    PlaylistView()
}


