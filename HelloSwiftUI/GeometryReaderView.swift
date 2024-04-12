//
//  GeometryReaderView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/12/24.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Height = \(UIScreen.main.bounds)")
                Text("Width = \(geometry.size.width)")
                Text("Height = \(geometry.size.height)")
            }
        }
        .backgroundStyle(Color.yellow)
    }
    
}

#Preview {
    GeometryReaderView()
}
