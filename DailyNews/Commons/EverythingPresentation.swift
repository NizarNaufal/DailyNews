//
//  EverythingPresentation.swift
//  DailyNews
//
//  Created by nizar on 03/03/21.
//

import Foundation
import RxDataSources

final class EverythingPresentation {
    let source: String
    let author: String?
    let title: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    
    init (source:String,author:String?,title:String?,url:String,urlToImage:String?,publishedAt:String){
        self.source = source
        self.author = author
        self.title = title
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        
    }
}
