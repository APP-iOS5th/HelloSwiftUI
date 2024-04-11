//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    var passedData: String
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
    SeparateFile(passedData: "")
}
