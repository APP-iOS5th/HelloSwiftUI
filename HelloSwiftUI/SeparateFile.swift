//
//  SeprateFile.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    
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
        }.background(Color.yellow)
    }
}

#Preview {
    SeparateFile(passedData: "")
}
