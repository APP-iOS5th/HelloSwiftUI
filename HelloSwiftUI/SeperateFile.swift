//
//  SeperateFile.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/11/24.
//

import SwiftUI

struct SeperateFile: View {
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
    SeperateFile()
        .environmentObject(ShareString())
}
