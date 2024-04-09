import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert("Warning!", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("button action")
                } label: {
                    Text("OK!")
                }
            } message: {
                Text("Zombie")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

