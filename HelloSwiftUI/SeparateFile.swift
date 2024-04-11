import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject var passedData: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $passedData.message)
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    // preview 를 위해 .constant("") 를 사용해서 가까 부모를 만들어 줌
    SeparateFile()
        .environmentObject(ShareString())
}
