import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject var passedData: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here", text: $passedData.message)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile().environmentObject(ShareString()) //.constant()하면 가짜부모를 만들어줌
}
