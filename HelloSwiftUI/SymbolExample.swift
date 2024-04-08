//
//  SymbolExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct SymbolExample: View {
    var body: some View {
        Label("Text", systemImage: "flag.fill")
            .font(.title)
    }
}

#Preview {
    SymbolExample()
}
