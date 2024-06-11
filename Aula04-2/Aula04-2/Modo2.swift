//
//  Modo2.swift
//  Aula04-2
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct Modo2: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            VStack {
                Button("Sheet View") {
                    dismiss()
                }
                .font(.title)
                .foregroundColor(.white)
                
                Spacer()
                
                Text("Nome: Thiago\nSobrenome: Pereira")
                    .frame(width: 180, height: 150)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
                Spacer()
            }
        }
    }
}

#Preview {
    Modo2()
}
