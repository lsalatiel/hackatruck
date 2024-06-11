//
//  Modo1.swift
//  Aula04-2
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            Text("Nome: Thiago\nSobrenome: Pereira")
                .frame(width: 180, height: 150)
                .background(.pink)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

#Preview {
    Modo1()
}
