//
//  File.swift
//  
//
//  Created by Johan Sas on 13/06/2022.
//

import Foundation
import Vapor
import Fluent

class UserModel: Model {
    static var schema: String = "users"
    
    
    struct FieldKeys {
        static var username: FieldKey {"username"}
        static var password: FieldKey {"password"}
        static var name: FieldKey {"name"}
        static var createdAt: FieldKey {"createdAt"}
        static var lastname: FieldKey {"lastname"}
    }
    
    @ID
    var id: UUID?
    
    @Field(key: FieldKeys.username)
    var username: String
    
    @Field(key: FieldKeys.password)
    var password: String
    
    @Field(key: FieldKeys.name)
    var name: String
    
    @Field(key: FieldKeys.lastname)
    var lastname: String
    
    required init() {}
    
    init(id: UUID? = nil, username: String, password: String, name: String, lastname: String) {
        self.id = id
        self.username = username
        self.password = password
        self.name = name
        self.lastname = lastname
    }
    
}
