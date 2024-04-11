import SwiftUI

struct SeparateFile: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in a separate file")
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
