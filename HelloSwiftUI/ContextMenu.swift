//
//  ContextMenu.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct ContextMenu: View {
    
    @State private var selectedColor = Color.gray
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(selectedColor)
                .frame(height: 200)
                .contextMenu {
                    Button { selectedColor = .red } label:{ Text("빨강")}
                    Button { selectedColor = .purple } label:{ Text("보라")}
                    Button { selectedColor = .green } label:{ Text("녹색")}
                    Button { selectedColor = .orange } label:{ Text("주황")}
                }
            
            Text("색상 선택")
                .padding()
        }
    }
}

#Preview {
    ContextMenu()
}
