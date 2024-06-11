//
//  Modo3.swift
//  Aula04-2
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct Modo3: View {
    private var name: String = "Tiago"
    var body: some View {
        NavigationView {
            ZStack {
                Color(.darkGray)
                    .ignoresSafeArea()
                Text("\(name)\nBem-vindo, \(name)")
                    .frame(width: 180, height: 150)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
//                NavigationLink(destination: "Acessar Tela") {
//                    
//                }
            }
        }
    }
}

#Preview {
    Modo3()
}
