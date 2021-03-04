//
//  THArticleModel.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
struct THArticleModel: Codable {
    let source: THSourceModel
    let author: String?
    let title: String
    let articleDescription: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}
