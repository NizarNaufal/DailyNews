//
//  Sources.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation

struct Sources: Codable {
    let sourceId, name, sourceDescription: String
    let url: String
    let category: SourceCategories
    let language, country: String

    enum CodingKeys: String, CodingKey {
        case sourceId = "id"
        case name
        case sourceDescription = "description"
        case url, category, language, country
    }
}
enum SourceCategories: String, Codable {
    case business
    case entertainment
    case general
    case health
    case science
    case sports
    case technology
}
