//
//  ContentView.swift
//  Aula02
//
//  Created by Turma02-17 on 07/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Fulano"
    @State private var showingAlert = false
    
    var body: some View {
            ZStack() {
                Image(.background)
                    .resizable().scaledToFit()
                    .frame(width: 1200, height: 1200)
                    .opacity(0.3)
                
                VStack() {
                    Spacer()
                    
                    Text("Bem vindo, \(name)")
                        .bold()
                        .font(.title)
                        .padding(.bottom, 20)
                    TextField("Enter your name", text: $name)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    Image(.logo)
                        .resizable().scaledToFill()
                        .frame(width: 100, height: 100)
                    Image(.truck)
                        .resizable().scaledToFill()
                        .frame(width: 100, height: 100)
                    Spacer()
                    
                    Button("Entrar") {
                        showingAlert = true
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("ALERTA"), message: Text("Voce ira iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos la")))
                    }
                    
                    Spacer()
                }
            }
        .padding()
    }
}

#Preview {
    ContentView()
}
