import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Warining!"), message: Text("Zombies on the loose"), dismissButton: .default(Text("Ok")))
            }) // dismissButton Alert창을 사라지게 하는 버튼
        }
    }
}


#Preview {
    ContentView()
}

