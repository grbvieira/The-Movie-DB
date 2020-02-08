//
//  HeaderCell.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 08/02/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit

class HeaderCell: NibView {
    
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    
    required init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
}
