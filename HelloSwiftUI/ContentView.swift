import SwiftUI

struct ContentView: View {
    
    struct FileView: View {
        var choice: String
        
        var body: some View {
            VStack {
                Text("선택 = \(choice)")
            }
        }
    }
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                NavigationLink(destination: FileView(choice: "헤드")) {
                    Text("헤드 선택")
                }
            }
        } else {
            // Fallback on earlier versions
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

