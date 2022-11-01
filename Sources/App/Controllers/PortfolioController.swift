//
//  File.swift
//  
//
//  Created by Johan Sas on 30/04/2022.
//

import Foundation
import Vapor
import Fluent

struct PortfolioController {
    
    // MARK: Render Index page
    
    func renderAboutPage(_ req: Request) async throws -> View {
        let context = AboutContext(title: "Devscorch Studio | Portfolio", logo: "")
        return try await req.view.render("portfolio", context)
    }
}
