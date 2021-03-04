//
//  ERequest.swift
//  DailyNews
//
//  Created by nizar on 04/03/21.
//

import Foundation
struct ERequest {
    let qWord: String?
    let qInTitle: String?
    let domains: String?
    let excludeDomains: String?
    let fromDate: Date?
    let toDate: Date?
    let language: String?
    let sortBy: ESortBy?
    let pageSize: Int?
    let page: Int?
    let sources: String?
}
enum ESortBy {
    case relevancy
    case popularity
    case publishedAt
}
