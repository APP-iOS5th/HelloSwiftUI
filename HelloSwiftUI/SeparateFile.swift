//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in a separate file")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
