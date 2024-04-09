import SwiftUI

struct ContentView: View {
    @State var settingValue = true
    @State var newValue = 0
    @State var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $settingValue) {
                Text(settingValue ? "green" : "orange")
            }
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(settingValue ? .green : .orange)
            
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1...50, step: 1)
                .padding()
            Text("Slider value = \(sliderValue)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

