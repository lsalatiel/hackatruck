//
//  ContentView.swift
//  Aula04-2
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var presentSheet = false;
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.darkGray)
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: Modo1()) {
                        Text("Modo 1")
                    }
                    .frame(width: 160, height: 60)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    Button("Modo 2") {
                        presentSheet.toggle()
                    }
                    .sheet(isPresented: $presentSheet) {
                        print("Sheet View")
                    } content: {
                        Modo2()
                    }
                    .frame(width: 160, height: 60)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    NavigationLink(destination: Modo3()) {
                        Text("Modo 3")
                    }
                    .frame(width: 160, height: 60)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
