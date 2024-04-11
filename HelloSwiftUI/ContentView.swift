import SwiftUI


    struct ContentView: View {
        @State var flag = true
        @State var message = ""
        
        var body: some View {
            NavigationStack {
                Text(message)
                Toggle(isOn: $flag, label: {
                    Text("토글 디스플레이 모드")
                })
                .navigationTitle("Navigation Title")
                    .navigationBarHidden(flag) //네비게이션 바를 가렸다 노출시켰다.
                    .navigationBarTitleDisplayMode(flag ? .large : .inline)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                                message = "iCloud 아이콘 탭 됨"
                            } label: {
                                Image(systemName: "iCloud")
                            }
                        }
                            ToolbarItem(placement: .topBarTrailing) {
                                Button {
                                    message = "완료버튼탭 됨"
                                } label: {
                                    Text("완료")
                                }
                            }
                            
                        }
                    }
            
            .accentColor(.purple)
        }
    }


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
