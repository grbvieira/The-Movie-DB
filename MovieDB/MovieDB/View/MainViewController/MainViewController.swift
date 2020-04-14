//
//  MainViewController.swift
//  MovieDB
//
//  Created by Gerson Vieira on 13/04/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController<UIView> {
    
    required init() {
        super.init(nibName: "MainViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
