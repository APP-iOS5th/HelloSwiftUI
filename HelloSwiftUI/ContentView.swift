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
    @State var sliderValue = 0.0
    @State var disclosureExpanded = false
    var body: some View {
        DisclosureGroup(("Expand"), isExpanded: $disclosureExpanded) {
            Text("text = \(message)")
            TextField("Type here", text: $message)
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
    }}

#Preview {
    ContentView()
}
