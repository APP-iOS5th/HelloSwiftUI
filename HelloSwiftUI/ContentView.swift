import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show AcitonSheet") {
                showAlert.toggle()
            }
            .confirmationDialog("Warring", isPresented: $showAlert, titleVisibility: .visible) {
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
                Text("Zombies on the loose")
            }
        }
    }
}


#Preview {
    ContentView()
}

