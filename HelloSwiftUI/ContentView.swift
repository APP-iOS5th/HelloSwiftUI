//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var flag = true
    @State var message = ""
    
    var body: some View {
        NavigationStack{
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("Toggle Display Mode")
            })
            .navigationTitle("Navigation Title")
            .navigationBarHidden(flag)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud Tapped"
                    } label : {
                        Image(systemName: "icloud.fill")
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        message = "Done Tapped"
                    } label : {
                        Text("Done")
                    }
                }
            }
        }
        .accentColor(.black)
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
