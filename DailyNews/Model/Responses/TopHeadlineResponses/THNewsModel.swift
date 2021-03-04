//
//  THNewsModel.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
struct THNewsModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [THArticleModel]
}
