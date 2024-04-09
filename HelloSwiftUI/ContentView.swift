import SwiftUI


struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State private var myDate = Date.now
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
            Text("Bird").tag(1)
            Text("Cat").tag(2)
            Text("Liazrt").tag(3)
            Text("Dog").tag(4)
            Text("Hamster").tag(5)
            }.pickerStyle(SegmentedPickerStyle())
        Text("You chose \(choice)")
            
            ColorPicker("Pick a color", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundStyle(myColor)
            DatePicker(selection: $myDate, label: {Text("Date")})
                .datePickerStyle(.graphical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

