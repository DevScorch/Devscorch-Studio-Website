//
//  File.swift
//  
//
//  Created by Johan Sas on 03/05/2022.
//

import Foundation
import Vapor

struct IndexContext: Content {
    let title: String
    let intro: String
    let logo: String
}

struct AboutContext: Content {
    let title: String
    let logo: String
}

struct ContactContext: Content {
    let title: String
    let logo: String
}

struct PortfolioContext: Content {
    let title: String
    let logo: String
}
