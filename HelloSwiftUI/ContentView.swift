import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button {
                        
                    } label: {
                        Label("Add to Favorite", systemImage: "heart")
                    }
                    Button {
                        
                    } label: {
                        Label("Show in Maps", systemImage: "star")
                    }
                }
        }
    }
}


#Preview {
    ContentView()
}

