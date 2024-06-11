//
//  ContentView.swift
//  Aula04
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TabRosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            TabAzul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            TabCinza()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            TabLista()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
