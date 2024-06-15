//
//  SheetView.swift
//  Aula07
//
//  Created by Turma02-17 on 14/06/24.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var films: [String]?
    var videoGames: [String]?
    var body: some View {
        VStack {
            Button("Sheet View") {
                dismiss()
            }
            .font(.title)
            .foregroundColor(.black)
            
            Spacer()
            
            Text("Films")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if(films != nil) {
                ForEach(films!, id: \.self) { film in
                    Text(film)
                }
            }
            
            Spacer()
            
            Text("Video Games")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if(films != nil) {
                ForEach(videoGames!, id: \.self) { videoGame in
                    Text(videoGame)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    SheetView()
}
