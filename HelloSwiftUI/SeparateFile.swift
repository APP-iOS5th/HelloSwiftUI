//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject  var passedData: ShareString
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $passedData.message)
                    .background(Color.green)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ///constant : 가짜로 부모를 만들어줌.
//    SeparateFile(passedData: .constant(""))
    SeparateFile()
}

