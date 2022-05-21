//
//  File.swift
//  
//
//  Created by Johan Sas on 30/04/2022.
//

import Foundation
import Vapor

struct AboutController {
    
    // MARK: Render Index page
    
    func renderAboutPage(_ req: Request) async throws -> View {
        let context = AboutContext(title: "Devscorch Studio | About", logo: "")
        return try await req.view.render("about", context)
    }
}
