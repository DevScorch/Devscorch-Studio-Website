//
//  File.swift
//  
//
//  Created by Johan Sas on 13/06/2022.
//

import Foundation
import Vapor
import Fluent

class TokenModel: Model {
    static let schema: String = "tokens"
    
    struct FieldKeys {
        static var value: FieldKey {"value"}
        static var userID: FieldKey {"userID"}
    }
    
    @ID()
    var id: UUID?
    
    @Field(key: FieldKeys.value)
    var value: String
    
    @Parent(key: FieldKeys.userID)
    var user: UserModel
    required 
    init() {}
    
    init(id: UUID? = nil, value: String, userID: UserModel.IDValue) {
        self.id = id
        self.value = value
        $user.id = userID
    }
}
