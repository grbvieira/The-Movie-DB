//
//  TargetType.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 06/02/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import Moya
enum keys: String {
    case apiKey = "api_key"
    case language
    case sortBy = "sort_by"
    case adult = "include_adult"
    case vide = "include_video"
    case page = "page"
    case genres = "with_genres"
}
extension TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org")!
    }
    public var imageUrl: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500")!
    }
    public var ApiKey: String {
        return "aef428086264efa070c8ef7e50675697"
    }
    
    public var language: String {
        return "pt-Br"
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var headers: [String: String] {
        return ["content-type": "application/json"]
    }
    
    public var sort: String {
        return "opularity.desc"
    }
    
    
}
