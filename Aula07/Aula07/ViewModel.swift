//
//  ViewModel.swift
//  Aula07
//
//  Created by Turma02-17 on 14/06/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var disneyCharacters: [DisneyCharacter] = []
    // Method
    
    func fetchDisneyCharacters() {
        guard let url = URL(string: "https://api.disneyapi.dev/character") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let jsonDecodified = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.disneyCharacters = jsonDecodified.data
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
