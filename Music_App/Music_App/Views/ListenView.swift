import SwiftUI

struct ListenView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                
                VStack {
                    Rectangle()
                        .frame(width: 370, height: 400)
                        .foregroundStyle(Color.gray)
                        .opacity(0.2)
                    
                        .clipShape(RoundedRectangle (cornerRadius: 20) )
                        .padding()
                    
                        .navigationBarTitle("Listen Now")
                        .padding(.horizontal, 20.0)
                }}
            
        }
    }
}
    
    #Preview {
        ListenView()
    }

