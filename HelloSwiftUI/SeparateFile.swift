//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject  var passedData: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack{
                Spacer()
                TextField("change text Data = \(passedData.tailMessage)", text: $passedData.tailMessage)
                Text("You chose = \(passedData.tailMessage)")
//                Text("This is another structure")
//                Text("but stored in a separate file")
                Spacer()
                
            }
            Spacer()
            
        }
    }
}

#Preview {
    SeparateFile()
}
