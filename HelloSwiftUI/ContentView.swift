import SwiftUI

struct ContentView: View {
    @State var flag = true
    @State var message = ""
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Text(message)
                Toggle(isOn: $flag, label: {
                    Text("토글 디스플레이 모드")
                })
                .navigationTitle("navigation title")
                .navigationBarTitleDisplayMode(flag ? .large : .inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            message = "iCloud 아이콘 탭됨"
                        } label: {
                            Image(systemName: "icloud")
                        }
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            message = "완료 버튼 탭됨"
                        } label: {
                            Text("완료")
                        }
                    }
                }
            }
            .accentColor(.purple)
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

