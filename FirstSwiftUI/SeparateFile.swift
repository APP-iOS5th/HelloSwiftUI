//
//  SeparateFile.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/11/24.
//

import SwiftUI

struct SeparateFile: View {
    
    @EnvironmentObject var dataVM: ShareViewModel
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You choice = \(dataVM.message)")
                Spacer()
            }
            .background(.yellow)
            Spacer()
        }
        .background(.green)
    }
}
