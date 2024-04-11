//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

//ObservalObject 는 추적,관찰 가능한 Rx디자인
class ShareString: ObservableObject {
    @Published var message = ""
}

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
    
    @StateObject var showMe = ShareString()
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: FileView()) {
                Text("Send Message")
            }
        }
        .environmentObject(showMe)
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
