//
//  Source.swift
//  twoTableView
//
//  Created by mark berkov on 12.12.22.
//

import Foundation
import UIKit


struct Contact {
    let name: String
    let image: UIImage
    
    
   
}

struct ImageName {
    static let iii = "iii"
    static let sun = "airpods.gen3"
    
}
    struct Source {
        static func makeContacts() -> [Contact] {
            [
                .init(name: "ita", image: .init(systemName: ImageName.iii) ?? UIImage()),
                .init(name: "uta", image: .init(systemName: ImageName.iii) ?? UIImage()),
                .init(name: "ita", image: .init(systemName: ImageName.sun) ?? UIImage()),
                .init(name: "uta", image: .init(systemName: ImageName.sun) ?? UIImage()),
                .init(name: "ita", image: .init(systemName: ImageName.iii) ?? UIImage()),
                .init(name: "uta", image: .init(named: ImageName.iii) ?? UIImage())
            ]
        }
    
}
