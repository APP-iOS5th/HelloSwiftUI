import SwiftUI

struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    
    var body: some View {
        VStack {
            Text("tempValue = \(tempValue)")
            Spacer()
            Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .scaleEffect(finalValue + tempValue)
                            .gesture(
                                MagnificationGesture()
                                    .onChanged { amount in
                                        tempValue = amount - 1
                                    }
                                    .onEnded { amount in
                                        finalValue += tempValue
                                        tempValue = 0
                                    }
                            )
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}

