import SwiftUI

struct ContentView: View {
    @State var message = ""
    @State var changeMe1 = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(changeMe1 ? .orange : .primary)
                .onTapGesture (count: 2){
                    changeMe1.toggle()
                }
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(changeMe2 ? .orange : .primary)
                .onTapGesture (count: 2){
                    changeMe2.toggle()
                }
            
            Text(message).padding()
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(changeMe3 ? .orange : .primary)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: { stillPressed in
                    message = "Long press in progress \(stillPressed)"
                }){
                    changeMe3.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

