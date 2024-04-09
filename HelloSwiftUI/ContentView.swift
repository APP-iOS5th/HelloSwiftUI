import SwiftUI

struct ContentView: View {
    @State var changeMe1 = true
    @State var changeMe2 = true
    @State var changeMe3 = true
    @State var message = ""

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe1 ? .red : .yellow)
                .onTapGesture {
                    changeMe1.toggle()
                }
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                .onTapGesture {
                    changeMe2.toggle()
                }
            
            Text(message).padding()
            
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in message = "Long press in progress"}) {
                    changeMe3.toggle()
                }
        }
    }
}


#Preview {
    ContentView()
}

