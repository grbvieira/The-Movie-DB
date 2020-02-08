//
//  Network.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 06/02/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import Moya

enum Networking {
    case genres
    case moviesList(page: Int, genre: Int)
    case movie(id: Int)
    case similarMovie(page: Int)
}

extension Networking: TargetType {
    
    
    /* var baseURL: URL {
     return URL(string: Constants.kBaseUrl)!
     }*/
    
    var path: String {
        switch self {
        case .genres:
            return "/3/genre/movie/list"
        case.moviesList:
            return "3/discover/movie"
        case .movie(let id):
            return "/3/movie/\(id)"
        case .similarMovie:
            return "/3/movie/28/similar"
            
        }
    }
    
    var method: Method {
        switch self {
        case .genres:
            return .get
        case .moviesList:
            return .get
        case .movie:
            return .get
        case .similarMovie:
            return .get
        }
    }
    
    /* var sampleData: Data {
     return sampleData
     }*/
    
    var task: Task {
        switch self {
            
        case .genres:
            var parameters: [String: Any] = [:]
            parameters[keys.apiKey.rawValue] = ApiKey
            parameters[keys.language.rawValue] = language
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .moviesList(let page,let genre):
            var parameters: [String: Any] = [:]
            parameters[keys.apiKey.rawValue] = ApiKey
            parameters[keys.language.rawValue] = language
            parameters[keys.sortBy.rawValue] = "popularity.desc"
            parameters[keys.adult.rawValue] = false
            parameters[keys.vide.rawValue] = false
            parameters[keys.page.rawValue] = page
            parameters[keys.genres.rawValue] = genre
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case.movie:
            var parameters: [String: Any] = [:]
            parameters[keys.apiKey.rawValue] = ApiKey
            parameters[keys.language.rawValue] = language
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .similarMovie(let page):
            var parameters: [String: Any] = [:]
            parameters[keys.apiKey.rawValue] = ApiKey
            parameters[keys.language.rawValue] =  language
            parameters[keys.page.rawValue] = page
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
            
        case .genres:
            return ["content-type": "application/json"]
        case .moviesList:
            return ["content-type": "application/json"]
        case .movie:
            return ["content-type": "application/json"]
        case .similarMovie:
            return ["content-type": "application/json"]
            
        }
    }
    
}

