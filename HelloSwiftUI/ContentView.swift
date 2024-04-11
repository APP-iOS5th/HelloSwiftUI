import SwiftUI

struct ContentView: View {
    @State var flag = false
    @State var message = ""
    @State var sliderValue = 0.0
    
    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력할 내용 =  \(message)")
            TextField("Type here", text: $message)
                .padding()
            Text(flag ? "Toggle = true" : "Toggle = false")
            Toggle(isOn: $flag) {
                Text("The slider value = \(sliderValue)")
                Slider(value: $sliderValue, in:0...15)
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

