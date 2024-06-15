//
//  ContentView.swift
//  Aula07
//
//  Created by Turma02-17 on 14/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    @State private var presentSheet = false
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(vm.disneyCharacters, id: \.self) { character in
                        if(character.imageUrl != nil) {
                            AsyncImage(url: URL(string: character.imageUrl!)) {
                                image in image.image?.resizable()
                            }
                            .frame(width: 200, height: 200)
                        }
                        if(character.name != nil) {
//                            Text(character.name! + "\n")
                            Button(character.name!) {
                                presentSheet.toggle()
                            }
                            .sheet(isPresented: $presentSheet) {
                                print("Sheet View")
                            } content: {
                                SheetView(films: character.films, videoGames: character.videoGames)
                            }
                        }
                    }
                }
                .navigationTitle("Disney Characters")
            }
        }
        .onAppear() {
            vm.fetchDisneyCharacters()
        }
    }
}

#Preview {
    ContentView()
}
