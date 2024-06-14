//
//  Location.swift
//  Aula06
//
//  Created by Turma02-17 on 13/06/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var locationArray = [
    Location(name: "Brazil",
             coordinate: CLLocationCoordinate2D(latitude: -13.4130536, longitude: -73.1675573),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/800px-Flag_of_Brazil.svg.png",
             description: "Brazil, officially the Federative Republic of Brazil, is the largest and easternmost country in South America and in Latin America. Brazil is the world's fifth-largest country by area and the seventh most populous."),
    Location(name: "Argentina",
             coordinate: CLLocationCoordinate2D(latitude: -36.4973043, longitude: -84.8844755),
             flag: "https://s4.static.brasilescola.uol.com.br/be/2022/01/bandeira-da-argentina.png",
             description: "Argentina, officially the Argentine Republic, is a country in the southern half of South America. Argentina covers an area of 2,780,400 km2 (1,073,500 sq mi), making it the second-largest country in South America after Brazil, the fourth-largest country in the Americas, and the eighth-largest country in the world."),
    Location(name: "United States",
             coordinate: CLLocationCoordinate2D(latitude: 35.952104, longitude: -161.6755363),
             flag: "https://s3.static.brasilescola.uol.com.br/be/conteudo/images/estados-unidos.jpg",
             description: "The United States of America (USA or U.S.A.), commonly known as the United States (US or U.S.) or America, is a country primarily located in North America. It is a federation of 50 states, a federal capital district (Washington, D.C.), and 326 Indian reservations."),
    Location(name: "France",
             coordinate: CLLocationCoordinate2D(latitude: 45.6207575, longitude: -7.9775945),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg/1200px-Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg.png",
             description: "France, officially the French Republic, is a country located primarily in Western Europe. It also includes overseas regions and territories in the Americas and the Atlantic, Pacific, and Indian Oceans, giving it one of the largest discontiguous exclusive economic zones in the world."),
    Location(name: "Japan",
             coordinate: CLLocationCoordinate2D(latitude: 31.6392995, longitude: 115.7285417),
             flag: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png",
             description: "Japan is an island country in East Asia. It is in the northwest Pacific Ocean and is bordered on the west by the Sea of Japan, extending from the Sea of Okhotsk in the north toward the East China Sea, Philippine Sea, and Taiwan in the south.")
]
