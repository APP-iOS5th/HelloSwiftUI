//
//  SeperateFile.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/11/24.
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
}
//실행될 변수가 꼭 필요하다. 초기화 하기 위해. 근데 넣어줄 값이 없어서 ""로.
