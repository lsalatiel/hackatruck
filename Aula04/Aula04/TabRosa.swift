//
//  TabRosa.swift
//  Aula04
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct TabRosa: View {
    var body: some View {
        ZStack() {
            Color(.pink)
            Circle()
                .frame(width: 320, height: 320)
            Image(systemName: "paintbrush")
                .font(.system(size: 200))
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    TabRosa()
}
