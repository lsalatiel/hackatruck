//
//  Desafio2.swift
//  Aula01
//
//  Created by Turma02-17 on 06/06/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        HStack() {
            Image(.pato)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Spacer()
            VStack() {
                Text("HackaTruck")
                    .foregroundStyle(.red)
                    .padding(.bottom)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                    .padding(.bottom)
                Text("6 regioes do Brasil")
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    Desafio2()
}
