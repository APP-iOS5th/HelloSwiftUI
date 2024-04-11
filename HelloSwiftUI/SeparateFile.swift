import SwiftUI

struct SeparateFile: View {
    @Binding var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $passedData)
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    // preview 를 위해 .constant("") 를 사용해서 가까 부모를 만들어 줌
    SeparateFile(passedData: .constant(""))
}
