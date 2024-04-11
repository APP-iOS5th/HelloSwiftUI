//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack{
                Spacer()
                Text("You chose = \(passedData)")
//                Text("This is another structure")
//                Text("but stored in a separate file")
                Spacer()
                
            }
            Spacer()
            
        }
    }
}

#Preview {
    SeparateFile(passedData: "")
}
