import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                    print("option1 action")
                } label: {
                    Text("option1")
                }
                Button(role: .destructive) {
                    print("option2 action")
                } label: {
                    Text("option2")
                }
            } message: {
                Text("Zombie on the loose")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

