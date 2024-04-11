//
//  SeparateFile.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    
    var passedData: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You choice = \(passedData)")
                Spacer()
            }
            .background(.yellow)
            Spacer()
        }
        .background(.green)
    }
}
