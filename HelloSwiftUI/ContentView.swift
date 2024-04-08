import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //            Capsule().fill(Color.yellow)
            //            Circle().fill(Color.blue)
            //            Ellipse().fill(Color.brown)
            //            Rectangle().fill(Color.red)
            //            RoundedRectangle(cornerRadius: 30).fill(Color.green)
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(
//                        colors: [.blue, .yellow]),
//                    center: .top,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(
//                        colors: [.blue, .yellow]),
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                AngularGradient(
//                    gradient: Gradient(
//                        colors: [.blue, .yellow]),
//                    center: .center
//                ))
//            Spacer()
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image(systemName: "clock")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 50)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

