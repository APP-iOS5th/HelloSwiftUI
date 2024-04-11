import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject var passedDate: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here", text: $passedDate.message)
                Spacer()
            }
            Spacer()
        }
    }
}

struct Content_View: PreviewProvider {
    static var previews: some View {
        SeparateFile()
    }
}
