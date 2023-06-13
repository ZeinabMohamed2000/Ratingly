//
//  Movies.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 12/06/2023.
//

import Foundation

struct Movies: Decodable {
    var items: [Item]?
    var errorMessage: String?
}

struct Item: Decodable {
    var id: String
    var rank: String
    var title: String
    var image: String
    var weekend: String
    var gross: String
    var weeks: String
    
}
