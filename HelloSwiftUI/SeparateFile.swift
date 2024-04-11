//
//  SeparateFile.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
   @EnvironmentObject var passedData: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here", text: $passedData.message)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile()
}
