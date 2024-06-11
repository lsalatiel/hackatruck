//
//  TabAzul.swift
//  Aula04
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct TabAzul: View {
    var body: some View {
        ZStack() {
            Color(.blue)
            Circle()
                .frame(width: 320, height: 320)
            Image(systemName: "paintbrush.pointed")
                .font(.system(size: 200))
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    TabAzul()
}
