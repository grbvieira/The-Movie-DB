//
//  MoviesRequest.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 08/02/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit
import Moya

class MoviesProvider {
    
    let provider = MoyaProvider<Networking>(plugins: [NetworkLoggerPlugin(verbose: false)])
 
    
}
