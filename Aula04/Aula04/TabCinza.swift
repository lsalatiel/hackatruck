//
//  TabCinza.swift
//  Aula04
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct TabCinza: View {
    var body: some View {
        ZStack() {
            Color(.gray)
            Circle()
                .frame(width: 320, height: 320)
            Image(systemName: "paintpalette")
                .font(.system(size: 200))
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    TabCinza()
}
