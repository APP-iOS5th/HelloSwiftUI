import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show") {
                showAlert.toggle()
            }
            .alert("alert", isPresented: $showAlert) {
                Button("OK") {}
            } message: {
                Text("message")
            }
            
        }
    }
}


#Preview {
    ContentView()
}

