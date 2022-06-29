//
//  File.swift
//  
//
//  Created by Johan Sas on 14/06/2022.
//

import Foundation
import Fluent
import Vapor

struct CreateTokenModel: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema(TokenModel.schema)
            .id()
            .field(TokenModel.FieldKeys.value, .string, .required)
            .field(TokenModel.FieldKeys.userID, .uuid, .required)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(TokenModel.schema).delete()
    }
}
