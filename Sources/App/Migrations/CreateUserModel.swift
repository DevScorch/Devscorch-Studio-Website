//
//  File.swift
//  
//
//  Created by Johan Sas on 14/06/2022.
//

import Foundation
import Fluent
import Vapor

struct CreateUserModel: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema(UserModel.schema)
            .id()
            .field(UserModel.FieldKeys.name, .string, .required)
            .field(UserModel.FieldKeys.lastname, .string, .required)
            .field(UserModel.FieldKeys.password, .string, .required)
            .field(UserModel.FieldKeys.username, .string, .required)
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema(UserModel.schema).delete()
    }
}
