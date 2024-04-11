//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
   @Binding var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in a separate file")
                Text("You chose= \(passedData)")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile(passedData: .constant("")) //.constant 가짜부모
}
