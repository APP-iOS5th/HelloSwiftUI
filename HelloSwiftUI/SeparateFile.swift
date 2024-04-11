import SwiftUI

struct SeparateFile: View {
    var passedData: String
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Spacer()
                Text("You chose = \(passedData)")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile(passedData: "")
}
