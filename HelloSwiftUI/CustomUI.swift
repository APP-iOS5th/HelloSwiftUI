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
    var textColor: Color
    
    var body: some View {
        Text(text)
            .foregroundStyle(textColor)
    }
}

struct MultipleSpacer: View {
    var multiple: Int
    
    var body: some View {
        if multiple > 0 {        
            let multipleArray: Range<Int> = Range(1...multiple)
            
            ForEach(multipleArray, id: \.self) { _ in Spacer() }
        }
    }
}
