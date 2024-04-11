//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI
struct ContentView: View {
    @State var message = ""
    @State var flag = true
    var body: some View {
        NavigationStack {
            Text(message)
            Toggle(isOn: $flag, label: {
                Text("toggle display mode")
            })
            .navigationTitle("Navigation Title")
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud Icond Tapped"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "Complete Button Tapped"
                    } label: {
                        Text("Complete")
                    }
                }
            }
        }.accentColor(.purple)
    }}

#Preview {
    ContentView()
}
