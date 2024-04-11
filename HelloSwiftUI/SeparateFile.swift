import SwiftUI

struct SeparateFile: View {
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in separate file")
                Spacer()
            }
            
            Spacer()
        }
    }
}

#Preview {
    SeparateFile()
}
