import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(color: .blue, radius: 46, x:90, y:50)
                .overlay(Circle().stroke(Color.green, lineWidth: 10))
            
            
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .shadow(color: .red, radius: 46, x:0, y:0)
                .overlay(Rectangle().stroke(Color.black, lineWidth: 10))
                .opacity(0.5)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

