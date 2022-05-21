//
//  File.swift
//  
//
//  Created by Johan Sas on 30/04/2022.
//

import Foundation
import Leaf
import Vapor

struct IndexController {
    
    // MARK: Render Index page
    
    func renderIndexPage(_ req: Request) async throws -> View {
        let context = IndexContext(title: "\(baseTitle) \(Titles.homePage.rawValue)", intro: "We are Software", logo: "")
        return try await req.view.render("index", context)
    }
}
