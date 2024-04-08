//
//  CustomUI.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import Foundation
import SwiftUI

struct CustomText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .tint(.red)
    }
}
