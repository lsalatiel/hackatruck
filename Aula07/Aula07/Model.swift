//
//  Model.swift
//  Aula07
//
//  Created by Turma02-17 on 14/06/24.
//

import Foundation

struct DisneyCharacter : Decodable, Hashable {
    var name: String?
    var imageUrl: String?
    var films: [String]?
    var videoGames: [String]?
}

struct API : Decodable {
    var data: [DisneyCharacter]
}
