//
//  TabLista.swift
//  Aula04
//
//  Created by Turma02-17 on 11/06/24.
//

import SwiftUI

struct TabLista: View {
    var body: some View {
        NavigationStack() {
            List {
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    TabLista()
}
