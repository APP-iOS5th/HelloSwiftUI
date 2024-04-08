//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김혜림 on 4/8/24.
//

import SwiftUI

/*
 실습1: 기본 정렬 및 모디파이어
 struct ContentView: View {
 //상태 저장 변수
 @State private var isOn = true
 @State private var value = 0
 @State private var sliderValue = 0.5
 
 var body: some View {
 VStack /*버티컬 스택*/ {
 Stepper("값 \(value)", value: $value, in: 0...10)
 Slider(value: $sliderValue, in: 0...1 )
 .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
 /*
  Toggle(isOn: $isOn, label: {
  Text("Toggle Example")
  })
  */
 Toggle("Toggle Message On/Off", isOn: $isOn)
 
 Text("위")
 //수정자 추가 : .수정속성(수정내용)
 .padding(.leading, 9.0)
 .font(.largeTitle)
 .fontWeight(.semibold)
 
 HStack /*호리젠탈 스택*/ {
 Text("왼쪽")
 Text("오른쪽")
 }
 
 .background(Color.purple)
 ZStack {
 Text("배경")
 Text("전경")
 }
 
 .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
 Button(action: {
 print("button2 click")
 }, label: {
 /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
 })
 
 Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
 print("button1 click")
 }
 }
 }
 }
 */

//실습2: 패딩 및 정렬 모디파이어
/*
 struct ContentView: View {
 var body: some View {
 VStack (alignment/*정렬*/: .leading, spacing/*줄간격*/: 20) {
 //기본 패딩
 Text("Default padding of 16 points")
 .padding() //패딩 기본 값은 16
 .background(Color.yellow)
 
 Text("Default padding of 45 points")
 .padding(45)
 .background(Color.yellow)
 
 Text("Default padding of 3 points")
 .padding(3)
 .background(Color.yellow)
 
 //스페이서: 여백 추가, 남은 공간을 스페이서 개수만큼 나눠서 같은 값으로 여백 부여
 Spacer()
 
 //패딩 상하좌우 나눠서 입력
 HStack (alignment: .top, spacing: 24) {
 Text("Top padding only")
 .padding(.top) //상단 패딩
 .background(Color.yellow)
 
 Text("Trailing padding only")
 .padding(.trailing) //우측 패딩
 .background(Color.yellow)
 
 Text("Bottom padding only")
 .padding(.bottom) //하단 패딩
 .background(Color.yellow)
 
 Text("Leading padding only")
 .padding(.leading, 45) //좌측 패딩
 .background(Color.yellow)
 }
 
 //최소 여백 지정
 Spacer(minLength: 100)
 
 //패딩 복합 사용
 Text("Top, Leading padding")
 .padding([.top, .leading], 45) //상단, 우측 패딩 45
 .background(Color.yellow)
 
 Text("Top, Leading and Bottom")
 .padding([.top, .leading, .bottom], 45) //상단, 우측, 하단 패딩 45
 .background(Color.yellow)
 }
 }
 }
 */

//실습3: offset 및 position
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 ZStack {
 Text("Default")
 .font(.system(size: 40))
 .background(Color.yellow)
 Text("Offset")
 .font(.system(size: 40))
 .background(Color.yellow)
 .offset(x: 100, y: 150) //좌표로 위치 지정. 좌표기준점: 오브젝트 좌측 상단. 나의 위치를 기준으로 좌표 계산(내 위치에서 x축으로 100, y축으로 150 이동)
 Text("Position")
 .font(.system(size: 40))
 .background(Color.yellow)
 .position(x: 100, y: 150) //절대좌표로 위치 지정(화면 좌측 상단의 좌표 0,0을 기준으로 위치 지정)
 }
 }
 VStack {
 Text("First")
 .font(.system(size: 40))
 .background(Color.yellow)
 Text("Second")
 .font(.system(size: 40))
 .background(Color.yellow)
 } .offset(x: -25, y: -125) //VStack offset 설정
 }
 }
 */

//실습4: 텍스트 뷰 커스텀마이징
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 let myString = "Displays a string variable"
 //텍스트 생략
 Text("This is my age \(myString). \nSince I am retired, I am now eligible for a pension and Social Security so I can spend the reset of my life relaxing and enjoying life without having to work for an income anymore.") // \n 입력하면 줄바꿈
 .multilineTextAlignment(.center) //문단구성
 .truncationMode(.middle) //(.tail)은 마지막 줄에서 생략, (.middle)은 중간에서 생략, (.head)는 앞줄에서 생략
 .lineLimit(3) //글 생략
 
 Spacer()
 
 //텍스트 꾸미기
 Text("Bold Text")
 .font(.title)
 .bold()
 
 Text("Italic")
 .font(.title2)
 .italic()
 
 Text("Underlined")
 .font(.headline)
 .underline()
 
 Text("Striethrough")
 .font(.subheadline)
 .strikethrough()
 
 Text("Custom Font Text")
 .font(.custom("AmericanTypewriter", size: 24)) // 폰트이름, 사이즈 입력
 
 Text("Line \nSpacing")
 .font(.body)
 .lineSpacing(10) //줄간격
 }
 }
 }
 */

//실습5: 라벨 뷰
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 Label("Text", systemImage: "clock")
 .font(.title)
 Label {
 Text("No modifiers")
 } icon: {
 Image("clock-solid")
 .resizable()
 .frame(width: 20.0, height: 20.0)
 }
 }
 }
 }
 */

//실습6: 도형 및 그라데이션
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 Capsule().fill(Color.yellow) //캡슐
 Circle().fill(Color.blue) //원
 Ellipse().fill(Color.brown) //타원
 Rectangle().fill(Color.red) //사각형
 RoundedRectangle(cornerRadius: 30).fill(Color.green) //모서리가 둥근 사각형
 
 Spacer()
 
 //그라데이션
 HStack{
 Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue,.yellow]), //색상 지정
 center: .top, //중심점 지정
 startRadius: 10, //색1 범위
 endRadius: 100)) //색2 범위
 Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue,.yellow]), //색상 지정
 center: .center, //중심점 지정
 startRadius: 10, //색1 범위
 endRadius: 100)) //색2 범위
 Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue,.yellow]), //색상 지정
 center: .bottom, //중심점 지정
 startRadius: 10, //색1 범위
 endRadius: 100)) //색2 범위
 }
 
 Ellipse().fill(AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
 center: .center))
 }
 }
 }
 */

//실습7: 이미지 출력 모드
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 Spacer()
 
 HStack {
 Image(systemName: "tortoise.fill")
 Image(systemName: "tortoise.fill").font(.largeTitle)
 Image(systemName: "tortoise.fill").font(.custom("", size: 50))
 }
 
 Spacer()
 
 HStack {
 Image("clock-solid")
 .resizable()
 .aspectRatio(contentMode: .fill) //가로 세로 둘 중 넓은 쪽에 맞춰서 오브젝트 채우기
 .frame(width: 150, height: 50) //넓이 150에 맞춰서 아이콘 사이즈 조절
 
 Image("clock-solid")
 .resizable()
 .aspectRatio(contentMode: .fit) //가로 세로 중 더 짧은 쪽에 맞춰서 오브젝트 채우기
 .frame(width: 150, height: 50) //높이 50에 맞춰서 아이콘 사이즈 조절
 }
 
 Spacer()
 }
 }
 }
 */

//실습8: 이미지 효과
/*
 struct ContentView: View {
 var body: some View {
 VStack {
 //이미지 크기 조정, 크롭(자르기, 원형)
 /*
  Image("sample_cat_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  
  Image("sample_dog_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  //이미지 모양 변형
  .clipShape(Circle())
  */
 
 //이미지 그림자 효과
 /*
  Image("sample_cat_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  //쉐도우
  .shadow(color: .gray, radius: 4, x: 0, y: 0)
  
  Image("sample_dog_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  .clipShape(Circle())
  .shadow(color: .gray, radius: 10, x: 4, y: 4)
  */
 
 //오버레이
 /*
  Image("sample_cat_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  //css의 border 효과
  .overlay(Rectangle().stroke(Color.blue, lineWidth: 10))
  
  Image("sample_dog_square")
  .resizable()
  .frame(width: 250, height: 250)
  .aspectRatio(contentMode: .fill)
  .clipShape(Circle())
  .overlay(Circle().stroke(Color.purple, lineWidth: 10))
  */
 
 //투명도
 Image("sample_cat_square")
 .resizable()
 .frame(width: 250, height: 250)
 .aspectRatio(contentMode: .fill)
 //투명도 1(선명한) - 0(투명한)
 .opacity(0.8)
 
 Image("sample_dog_square")
 .resizable()
 .frame(width: 250, height: 250)
 .aspectRatio(contentMode: .fill)
 .clipShape(Circle())
 .opacity(0.2)
 }
 }
 }
 */

//실습9: 컬러 커스텀
/*
 extension Color {
 static let myCustomColor = Color(red: 0, green: 1, blue: 0)
 }
 
 struct ContentView: View {
 var body: some View {
 VStack {
 //Asset Color scheme 사용
 Image(systemName: "heart.fill")
 .resizable()
 .aspectRatio(contentMode: .fit)
 .foregroundStyle(Color("customBlue"))
 
 //지역상수 사용
 //struct ContentView 안에서만 유효한 상수
 let customColor = Color(red: 1, green: 0, blue: 0)
 Image(systemName: "heart.fill")
 .resizable()
 .aspectRatio(contentMode: .fit)
 .foregroundStyle(customColor)
 
 //전역상수 사용
 //해당 프로젝트 전체에서 유효한 상수
 Image(systemName: "heart.fill")
 .resizable()
 .aspectRatio(contentMode: .fit)
 .foregroundStyle(Color.myCustomColor)
 }
 }
 }
 */

//실습10: 버튼
/*
 struct ContentView: View {
 @State var colorMe = false
 
 var body: some View {
 VStack {
 Rectangle()
 .fill(colorMe ? Color.green : Color.gray)
 .frame(width: 250, height: 100)
 
 //후행 클로저
 Button("여기를 클릭하세요") {
 //print("클릭시 실행코드 1") //클릭시 실행될 내용
 //toggle: ture와 false 값을 번갈아 실행하는 메소드
 colorMe.toggle()
 }
 
 Button {
 //print("클릭시 실행코드 2") //클릭시 실행될 내용
 colorMe.toggle()
 } label: {
 Text("Click Here")
 .font(.largeTitle)
 .foregroundStyle(.green)
 .padding()
 .border(Color.red, width: 6)
 }
 
 Button {
 //print("클릭시 실행코드 3") //클릭시 실행될 내용
 colorMe.toggle()
 } label: {
 Image("sample_cat_square")
 .resizable()
 .frame(width: 150, height: 150)
 .clipShape(Circle())
 .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
 }
 }
 }
 }
 */

//실습11: 피커
/*
struct ContentView: View {
    @State private var selectedColor = Color.gray
    
    var body: some View {
        VStack {
            Rectangle().fill(selectedColor)
            Picker("Favorite Color", selection: $selectedColor, content: {
                Text("Red").tag(Color.red) //.tag 모디파이어 덕분에 세그먼트 선택시에 태그 정보가 selectedColor로 넘어가면서 컬러 변경이 가능
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
            }
        )}
        .pickerStyle(SegmentedPickerStyle())
    }
}
 */

//실습12: 태그 모디파이어 활용
struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text(message)
            //뷰에 바인딩되는 부분은 $사인으로 표시
            Picker("Favorite Color", selection: $message, content: {
                //앞의 문자는 화면에 보이는 내용, 뒤의 태그는 보이지 않는 곳에서 정보를 전달
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }
        )}
        .pickerStyle(SegmentedPickerStyle())
        .onChange(of: message) {oldValue, newValue in
            switch newValue {
            case "happy": message = "Be happy and joyous"
            case "sad": message = "Life can be a struggle at time"
            case "bored": message = "Look for your purpose"
            default:
                break
            }
        }
    }
}

/*
 struct ContentView: View {
 var body: some View {
 VStack {
 
 }
 }
 }
 */

//현재 프리뷰
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
