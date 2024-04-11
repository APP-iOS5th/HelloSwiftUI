//
//  SeprateFile.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    
    @EnvironmentObject var passedData: ShareString
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type Here : ", text: $passedData.message)
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

#Preview {
    SeparateFile()
        .environmentObject(ShareString())
}
