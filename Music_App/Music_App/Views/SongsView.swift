import SwiftUI

struct SongsView: View {
    @State private var searchTest = ""
    
    var body: some View {
        
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
                .padding(.top, 16.0)
                
                
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
                .padding(.top, 16.0)
            }
        
        
        
        List {
        
            ForEach(cards) { card in
                NavigationLink(destination: SongView()) {
                    HStack {
                        ZStack {
                            
                            Image(card.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        }
                        
                        VStack {
                            Text(card.name)
                                .font(.system(size: 20))
                                .padding(.leading, 6.0)
                            
                        }
                        
                        //Spacer()
                    }
                }
                .searchable(text: $searchTest)
            }
        
        }
        .navigationBarTitle("Songs")
        .listStyle(.plain)
    
    }

    
}

#Preview {
    SongsView()
}


