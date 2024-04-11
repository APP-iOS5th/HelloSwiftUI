import SwiftUI

struct SeparateFile: View {
    var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You passed \(passedData)")
                Spacer()
            }
            Spacer()
        }
    }
}

//#Preview {
//    SeparateFile(passedData: "test")
//}
