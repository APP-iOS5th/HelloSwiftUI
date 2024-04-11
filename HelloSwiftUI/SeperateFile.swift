//
//  SeperateFile.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/11/24.
//

import SwiftUI

struct SeperateFile: View {
    var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You chose = \(passedData)")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeperateFile(passedData: "")
}
