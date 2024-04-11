//
//  SeperateFile.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/11/24.
//

import SwiftUI

struct SeperateFile: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in a seperate file")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeperateFile()
}
