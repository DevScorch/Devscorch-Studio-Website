//
//  File.swift
//  
//
//  Created by Johan Sas on 14/06/2022.
//

import Foundation
import Fluent
import Vapor

struct CreateBlogModel: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema(BlogModel.schema)
            .id()
            .field(BlogModel.FieldKeys.title, .string, .required)
            .field(BlogModel.FieldKeys.slug, .string, .required)
            .field(BlogModel.FieldKeys.image, .string, .required)
            .field(BlogModel.FieldKeys.author, .string, .required)
            .field(BlogModel.FieldKeys.content, .data, .required)
            .field(BlogModel.FieldKeys.excerpt, .string, .required)
            .field(BlogModel.FieldKeys.date, .datetime)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(BlogModel.schema).delete()
    }
}
