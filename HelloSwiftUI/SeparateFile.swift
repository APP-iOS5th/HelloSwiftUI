import SwiftUI

struct SeparateFile: View {
//    @Binding var passedData: String // ContentView 파일과 binding
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
//    SeparateFile(passedData: .constant("")) // 초기화, .constant(가짜로 부모를 만들어줌)
    SeparateFile()
        .environmentObject(ShareString())
}
