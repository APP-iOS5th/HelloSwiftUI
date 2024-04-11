import SwiftUI
struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true

    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력한 내용 = \(message)")
            TextField("Type here", text: $message)
            // text : $message 에서 :는 text를 입력하면 $에 text가 업데이트 되는 설정.
            // 설명은 $에서 text로 방향이 향할 것 같은데, text의 내용이 $에 반영된다.
            //textㅇ $를 담아서 상자 안에 상자($)에 받는 개념일까.
                .padding()
            Text(flag ? "Toggle = true" : "Toggle = false")
            //상황연산자는 true면 앞에가, false면 뒤가 실행됨. : 를 말함.
            Toggle(isOn: $flag) {
                Text("Toggle")
            }
            Text("The slider value = \(sliderValue)")
            Slider(value: $sliderValue, in: 0...15)
                .padding()
            
        }
        .padding()
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
