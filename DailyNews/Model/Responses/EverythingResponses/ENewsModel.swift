//
//  ENewsModel.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
struct ENewsModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [EArticleModel]
}
