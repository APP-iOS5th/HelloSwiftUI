import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State private var  selectedColor = Color.gray
    var body: some View {
        VStack (spacing: 30){
            Rectangle().fill(selectedColor)
            Picker("Favortie Color", selection: $selectedColor,content: {
                Text("Red").tag(Color.red)
                Text("Blue").tag(Color.blue)
                Text("Green").tag(Color.green)
            })
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

