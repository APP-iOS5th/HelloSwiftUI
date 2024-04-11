//
//  NavigationLinkEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("선택 = \(choice)")
        }
    }
}

struct NavigationLinkEx: View {
    var body: some View {
        VStack {
            
            NavigationLink(destination: FileView(choice: "헤드")) {
                Text("헤드 선택")
            }
            
        }
    }
}

#Preview {
    NavigationLinkEx()
}
