//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김혜림 on 4/8/24.
//

import SwiftUI


//실습1: 기본 정렬 및 모디파이어
/*
struct ContentView: View {
    //상태 저장 변수
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack /*버티컬 스택*/ {
            Stepper("값 \(value)", value: $value, in: 0...10)
            Slider(value: $sliderValue, in: 0...1 )
                .accentColor(.black)
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
            
            .padding(.horizontal, 10.0)
            Button(action: {
                print("button2 click")
            }, label: {
                Text("Button")
            })
            
            Button("Button") {
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
/*
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
*/

//실습13: 텍스트 입력창
/*
extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

//ios 15.0 이하에서는 작동 못함
@available(iOS 15.0, *)

struct ContentView: View {
    @State private var message = ""
    @State private var password = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
            
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
        }
    }
}
 */

//실습14: 피커 종류
/*
struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
       VStack {
           Picker(selection: $choice, label: Text("Picker")) {
               Text("Bird").tag(1.7)
               Text("Cat").tag(2.86)
               Text("Lizard").tag(3.41)
               Text("Dog").tag(4.13)
               Text("Hamster").tag(5.28)
               //소수점을 사용하면 추후에 순서를 추가 할 때 좋음
               //1,2,3,4,5에서 중간에 뭔가를 추가하려면 뒷부분도 추가해야 하지만
               //소수점을 활용하면 중간에 2.5 같은 식으로 추가 가능
           } .pickerStyle(SegmentedPickerStyle())
           Text("You chose \(choice)")
           
           ColorPicker("Pick a color", selection: $myColor)
           Rectangle()
               .frame(width: 200, height: 150)
               .foregroundColor(myColor)
           
           DatePicker(selection: $myDate, label: {Text("Date") })
               .datePickerStyle(.graphical)
           
       }
   }
}
 */

//실습15: 데이트 피커
/*
struct ContentView: View {
    @State var myDate = Date.now
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current //달력의 종류
        let startComponents = DateComponents(year: 2024, month: 3, day: 25) //특정 날에 대한 정보, 자료형
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    let formatter = DateFormatter()
    
    var body: some View {
        VStack {
            //DatePicker(selection: $myDate, label: { Text("Date") })
            
            Text("Chosen date = \(formatter.string(from: myDate))")
                .padding()
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
                .datePickerStyle(.graphical)
                .padding()
        } .onAppear() {
            formatter.locale = Locale(identifier: "ko_KR")
            //formatter.dateStyle = .long
            //formatter.dateStyle = .medium
            formatter.dateStyle = .full
            formatter.timeStyle = .medium
        }
    }
}
 */

//실습16: 토글
/*
struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0
    @State var sliderValue = 0.0

    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green") /true면 Orange, false면 Green
            }
            .padding()

            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)

            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1...50, step: 4)
                .padding()
            Text("Slider value = \(sliderValue)")

        }
    }
}
*/

//실습17: 링크
/*
struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
            .menuStyle(DefaultMenuStyle())
            .menuOrder(.fixed)
            
            Text(message).padding()
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
        }
    }
    
    func openFile() {
        message = "Open chosen"
    }
    
    func findFile() {
        message = "Find chosen"
    }
    
    func deleteFile() {
        message = "Delete chosen"
    }
}*/

//실습18: 터치 제스처
/*
struct ContentView: View {
    @State var changeMe1 = false
    @State var changeMe2 = false
    @State var changeMe3 = false
    @State var message = ""
    
    
    var body: some View {
        VStack {
            //탭
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe1 ? .red : .yellow)
                .onTapGesture {
                    changeMe1.toggle()
                }
            
            //더블탭
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe2 ? .red : .yellow)
                .onTapGesture(count: 2/*2번 탭하면 동작*/) {
                    changeMe2.toggle()
                }
            
            Text(message).padding()
            
            //롱프레스
            Rectangle()
                .frame(width: 175, height: 125)
                .foregroundStyle(changeMe3 ? .red : .yellow)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: {stillPressed in //제스처 실행 시간 설정: 최소2 누르고 있어야 동작
                    message = "Long press in progress: \(stillPressed)"
                }) {
                    changeMe3.toggle()
                }
        }
    }
 }
 */

//실습19: 확대 축소 제스처
/*
struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit() //무조건 부모코드 사이즈에 맞춰서 사이즈 조절
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                        //변하고 있는 중
                        .onChanged{amount in
                            tempValue = amount - 1
                        }
                        //제스처 종료
                        .onEnded{amount in
                            finalValue += tempValue
                            tempValue = 0
                        }
                )
        }
    }
 }
 */

//실습20: 회전 제스처
/*
struct ContentView: View {
    @State private var angle: Angle = .zero
    
    var body: some View {
        VStack {
            Text("degree = \(angle)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(angle)
                .gesture(
                    RotateGesture()
                        .onChanged { a in
                            angle = a.rotation
                        }
                )
            Spacer()
        }
    }
}
 */

//실습21: 경고창
/*
struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            //옛날 방식
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Warning!"),
                      message: Text("Zombies on the loose"),
                      dismissButton: .default(Text("OK"))
                )
            })
            
            
            //요즘 방식
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert("Warning!", isPresented: $showAlert) {
                Button(role: .cancel) {
                    print("button action")
                } label: {
                    Text("OK!")
                }
            } message: {
                Text("Zombies on the loose")
            }
        }
    }
}
 */

//실습22: 액션시트
/*
struct ContentView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show ActionSheet") {
                showAlert.toggle()
            }
            .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible) {
                Button(role: .none) {
                    print("option1 action")
                } label: {
                    Text("option1")
                }
                Button(role: .destructive) /*빨간색으로 경고*/ {
                    print("option2 action")
                } label: {
                    Text("option2")
                }
            } message: {
                Text("Zombies on the loose")
            }
        }
    }
 }
 */

//실습23: 컨택스트 메뉴
/*
struct ContentView: View {
    @State private var myColor = Color.gray
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(myColor)
            
            Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button("Red", action: {
                        myColor = Color.red
                    })
                    Button("Purple", action: purple)
                    Button("Green", action: green)
                    Button("Orange", action: orange)
                }
        }
    }
    
    func purple() {
        myColor = Color.purple
    }
    
    func green() {
        myColor = Color.green
    }
    
    func orange() {
        myColor = Color.orange
    }
}
 */

//실습24: 반복 리스트
/*
struct ContentView: View {
    var myArray = ["Cat", "Dog", "Turtle", "Ferret", "Parrot", "Goldfish", "Lizard", "Canary", "Taranyrlua", "Hamster"]
    
    var body: some View {
        VStack {
            List {
                Text("Cat")
                Text("Dog")
                Text("Bird")
                Text("Reptile")
                Text("Fish")
            }
            List {
                //ForEach: 반복시켜주는 구조체
                //.self: 키 경로(key path)를 나타내는 특수한 문법으로, 컬렉션의 각 요소 자체를 의미.
                //.self를 사용하면 컬렉션의 요소가 고유한 식별자 역할을 하게 됨
                ForEach(1...25, id: \.self) {index in
                    Text("Animal #\(index)")
                }
            }
            List {
                ForEach(0...myArray.count - 1, id: \.self) { index in
                    Text(myArray[index])
                }
            }
        }
    }
 }
 */

//실습25: 카테고리
/*
struct ContentView: View {
    struct Animal: Identifiable {
        var id = UUID()
        var name: String
    }
    struct AnimalCategoory: Identifiable {
        var id = UUID()
        var category: String
        var animals: [Animal]
    }
    
    let categories = [
        AnimalCategoory(category: "포유류", animals: [Animal(name: "고양이"), Animal(name: "강아지")]),
        AnimalCategoory(category: "파충류", animals: [Animal(name: "거북이"), Animal(name: "도마뱀")])
    ]
    var body: some View {
        VStack {
            List {
                ForEach(categories, id: \.id) {c in
                    Section(header: Text(c.category)) {
                        ForEach(c.animals, id: \.id) {animal in
                            Text(animal.name)
                        }
                    }
                }
            }
        }
    }
 }
 */

//실습26: 폼
/*
struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    
    var body: some View {
        VStack {
            Form {
                Text("This id the first Form")
                TextField("Type here", text: $messageOne)
            }
            
            Form {
                Text("This id the second Form")
                TextField("Type here", text: $messageTwo)
            }
            
            Text("Form #1 = \(messageOne)")
            Text("Form #2 = \(messageTwo)")
        }
    }
 }
 */

//실습27: 그룹박스
/*
struct ContentView: View {
    @State var flag = false
    @State var message = ""
    
    var body: some View {
        VStack (spacing: 20) {
            Form {
                Section {
                    Text("This is Section has no header")
                }
                
                Section("Just a Header") {
                    Text("This Section uses a simple header")
                }
                
                Section {
                    Text("This is Section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                
                Section {
                    Text("This is Section has both a header and footer")
                } header: {
                    Text("The header")
                } footer: {
                    Text("The footer")
                }
            }
            
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
            }
            
            GroupBox(label: Text("Group Box")) {
                Text("This is a Group Box")
                Toggle(isOn: $flag,  label: {
                    Text("Click me")
                })
            }
        }
    }
 }
 */

//실습28: 아코디언 뷰
/*
struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력한 내용 = \(message)")
            TextField("Type Here", text: $message)
                .padding()
            
            Text(flag ? "Toggle = true" : "Toggle = false")
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
 */

//실습29: 스크롤
/*
struct ContentView: View {
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50) {
                Text("Item #\($0)")
            }
        }
    }
 }
 */

//실습30: 아웃라인그룹(파일탐색기 구조)
/*
class Species: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Species]?
    init(name: String, classification: [Species]? = nil) {
        self.name = name
        self.classification = classification
    }
}

struct ContentView: View {
    var Animals: [Species] = [
        Species(name: "포유류", classification: [
            Species(name: "개", classification: [
                Species(name: "Poodle"),
                Species(name: "Collie"),
                Species(name: "St. Bernard"),
            ]),
            Species(name: "고양이"),
            Species(name: "코끼리"),
            Species(name: "고래"),
        ]),
        Species(name: "조류", classification: [
            Species(name: "Canary"),
            Species(name: "Parakeet"),
            Species(name: "Eagle"),
        ]),
    ]
    
    var body: some View {
        List {
            OutlineGroup(Animals, id: \.id, children: \.classification) {creature in
                Text(creature.name)
            }
        }
    }
 }
 */

//실습31: 네비게이션 뷰
/*
struct ContentView: View {
    @State var flag = true
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("토글 디스플레이 모드")
            })
            .navigationTitle("네이게이션 타이틀")
            //.navigationBarHidden(true)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud 아이콘 탭됨"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "완료 버튼 탭됨"
                    } label: {
                        Text("완료")
                    }
                }
            }
        }
        .accentColor(.purple)
    }
}
 */

//실습32: 화면 전환
/*
struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("선택 = \(choice)")
        }
    }
}

struct ContentView: View {
var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView(choice: "헤드")) {
                Text("헤드 선택")
            }
        }
    }
}
 */

//실습33: 화면 전환 심화
/*
struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "영화 1", description: "영화 1 설명"),
        Movie(title: "영화 2", description: "영화 2 설명"),
        Movie(title: "영화 3", description: "영화 3 설명")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.title)
            Text(movie.description)
                .padding()
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.movies) {movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("영화 목록")
            .navigationDestination(for: Movie.self) { movie in
                //                MovieDetail
                MovieDetailView(movie: movie)
            }
        }
    }
}
 */

//실습34: 화면 전환 2
struct FileView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is a separate structure")
                Text("that's stored in the same file")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView()) {
                Text("Send a message")
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
