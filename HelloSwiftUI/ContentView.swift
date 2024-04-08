//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jude Song on 4/8/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack (alignment: .trailing, spacing: 24) {
//            Text("Default padding of 16 points")
//                .padding()
//                .background(Color.yellow)
//            Text("Default padding of 45 points")
//                .padding(45)
//                .background(Color.yellow)
//            Text("Default padding of 3 points")
//                .padding(3)
//                .background(Color.yellow)
//            Spacer()
//            HStack (alignment: .bottom, spacing: 24) {
//            Text("Top padding only")
//                .padding(.top)
//                .background(Color.yellow)
//            Text("Trailing padding only")
//                .padding(.trailing)
//                .background(Color.yellow)
//            Text("Bottom padding only")
//                .padding(.bottom)
//                .background(Color.yellow)
//            }
//            Spacer()
//            Text("Leading padding only")
//                .padding(.leading)
//                .background(Color.yellow)
//            Text("Top, Leading padding")
//                .padding([.top, .leading], 45)
//                .background(Color.yellow)
//            Text("Top, Leading and Bottom")
//                .padding([.top,.leading,.bottom], 45)
//                .background(Color.yellow)
//
//        }
//    }
//
//}
//
//
//#Preview {
//    ContentView()
//}
//
//
///*
// Swift 3.0 이전 프리뷰
// struct ContentView_Previews: PreviewProvider {
// static var previews: some View {
// ContentView()
// }
// }
// */
//


//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
////            ZStack {
////                Text("Top")
////                    .font(.system(size: 40))
////                    .background(Color.yellow)
////                Text("Top")
////                    .font(.system(size: 40))
////                    .background(Color.yellow)
////                    .position(x: 255, y: 127)
////                Text("Top")
////                    .font(.system(size: 40))
////                    .background(Color.yellow)
////                    .offset(x: 74, y: 125)
////            }
//            Text ("First")
//                .font(.system(size: 40))
//                .background(Color.yellow)
//            Text ("Second View")
//                .font(.system(size: 40))
//                .background(Color.yellow)
//        }
//        // VStack offset 설정
//        .offset(x: 25, y: 125)
//    }
//}

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            let myString = "Displays a string variable"
//            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
//                .multilineTextAlignment(.trailing)
//                .truncationMode(.tail)
//                .lineLimit(3)
//
//            Spacer()
//
//            Text("Bold Text")
//                .font(.title)
//                .bold()
//
//            Text("Italic")
//                .font(.title2)
//                .italic()
//
//            Text("Underlined")
//                .font(.headline)
//                .underline()
//
//            Text("Strikethrough")
//                .font(.subheadline)
//                .strikethrough()
//
//            Text("Custom Font Text")
//                .font(.custom("AmericanTypewriter", size:24))
//
//            Text("Line Spacing\n Second Line")
//                .font(.body)
//                .lineSpacing(10)
//
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

//import SwiftUI
//
//struct ContentView: View{
//    var body: some View {
//        VStack {
//            Label("Text", systemImage: "clock.fill").font(.title)
//            Label {
//                Text("No modifiers")
//            } icon: {
//                Image("clock-solid")
//                    .resizable()
//                    .frame(width: 20.0, height: 20.0)
//            }
//
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Capsule().fill(Color.yellow)
//            Circle().fill(Color.blue)
//            Ellipse().fill(Color.brown)
//            Rectangle().fill(Color.red)
//            RoundedRectangle(cornerRadius: 25).fill(Color.green)
//            Image(systemName: "tortoise.fill")
//            Image(systemName: "tortoise.fill").font(.largeTitle)
//            
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]),
//                    center: .top,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]),
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                AngularGradient(
//                    gradient: Gradient(colors: [.blue,.yellow]),
//                    center: .center
//                ))
//            Spacer()
//            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
//            Spacer()
//            Image("clock-solid")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 50, height: 50)
//            
//        }
//    }
//}

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//        이미지 크기 조정, 크롭 (자르기)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//            
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .clipShape(Circle())
            
//           이미지 그림자 효과
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .red, radius: 46, x: 0, y: 0)
//            
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .clipShape(Circle())
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
            
            
//           이미지 테두리 오버레이
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .red, radius: 46, x: 0, y: 0)
//                .overlay(Rectangle().stroke(Color.blue, lineWidth: 10))
//
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .clipShape(Circle())
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
//                .overlay(Circle().stroke(Color.purple, lineWidth: 20))
            
            
//           이미지 투명도 조절
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .opacity(0.6)
//            
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .clipShape(Circle())
//                .opacity(0.3)
//            
//        }
//    }
//}

//import SwiftUI
//
//extension Color {
//    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
//}
//
//struct ContentView: View {
//    @State var colorMe = false
//    var body: some View {
//        VStack {
//            Rectangle()
//                .fill(colorMe ? Color.green : Color.gray)
//                .frame(width: 250, height: 100)
//
//            Button("여기를 클릭하세요") {
//                colorMe.toggle()
//            }
//            Button {
//                colorMe.toggle()
//            } label: {
//                Text("Click here")
//                    .font(.largeTitle)
//                    .foregroundColor(.green)
//                    .padding()
//                    .border(Color.red, width: 6)
//            }
//            Button {
//                colorMe.toggle()
//            } label: {
//                Image("sample_dog_square")
//                    .resizable()
//                    .frame(width: 150, height: 150)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
//            }
//        }
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            
//            // asset color scheme 사용
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(Color("custom_brown"))
//            
//            // 지역 상수 사용
//            let customColor = Color(red: 1, green: 0, blue: 0)
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(customColor)
//            
//            // 전역 상수 사용
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(Color.myCustomColor)
//            
//        }
//    }
//}


//import SwiftUI
//
//struct ContentView: View {
//    @State private var selectedColor = Color.gray
//    
//    var body: some View {
//        VStack (spacing: 28) {
//            Rectangle().fill(selectedColor)
//            Picker("Favorite Color", selection: $selectedColor, content: {
//                Text("Red").tag(Color.red)
//                Text("Green").tag(Color.green)
//                Text("Blue").tag(Color.blue)
//            })
//            .pickerStyle(SegmentedPickerStyle())
//        }
//    }
//}

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack (spacing: 28) {
            Text(message)
            Picker("Favorite Color", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy": message = "Be happy and joyous"
                case "sad": message = "Life can be a struggle at times"
                case "bored": message = "Look for your purpose"
                default:
                    break
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
