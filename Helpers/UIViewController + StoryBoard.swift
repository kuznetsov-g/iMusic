//
//  UIViewController + StoryBoard.swift
//  iMusic
//
//  Created by Георгий Кузнецов on 13.09.2022.
//

import Foundation
import UIKit

extension SearchViewController {
    
    class func loadFromStoryboard<T: SearchViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No initial view controller in \(name) storyboard!")
        }
    }
}

