//
//  File.swift
//  
//
//  Created by Johan Sas on 08/09/2022.
//

import Foundation
import Fluent
import Vapor

struct ServicesController {
    func renderServicesController(_ req: Request) async throws -> View {
        let context = ServicesContext(title: "\(baseTitle) \(Titles.services.rawValue)", logo: "")
        return try await req.view.render("services", context)
    }
}
