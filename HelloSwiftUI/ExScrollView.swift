//
//  ScrollView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct ExScrollView: View {
    var body: some View {
        VStack {
            ScrollView(Axis.Set.vertical, showsIndicators: true) {
                ForEach(0..<50) {
                    Text("Item #\($0)")
                }
            }
        }
    }
}

#Preview {
    ExScrollView()
}
