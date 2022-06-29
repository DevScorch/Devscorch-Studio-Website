//
//  File.swift
//  
//
//  Created by Johan Sas on 13/06/2022.
//

import Foundation
import Vapor
import Fluent

class BlogModel: Model {
    static let schema: String = "blogs"
    
    struct FieldKeys {
        static var title: FieldKey {"title"}
        static var slug: FieldKey {"slug"}
        static var image: FieldKey {"image"}
        static var excerpt: FieldKey {"excerpt"}
        static var date: FieldKey {"date"}
        static var content: FieldKey {"content"}
        static var author: FieldKey {"author"}
    }
    
    @ID()
    var id: UUID?
    
    @Field(key: FieldKeys.title)
    var title: String
    
    @Field(key: FieldKeys.slug)
    var slug: String
    
    @Field(key: FieldKeys.image)
    var image: String
    
    @Field(key: FieldKeys.excerpt)
    var excerpt: String
    
    @Field(key: FieldKeys.date)
    var date: Date
    
    @Field(key: FieldKeys.content)
    var content: String
    
    @Field(key: FieldKeys.author)
    var author: String
    
    required init() {}
    
    init(id: UUID? = nil, title: String, slug: String, image: String, excerpt: String, date: Date, content: String, author: String) {
        self.id = id
        self.title = title
        self.slug = slug
        self.excerpt = excerpt
        self.image = image
        self.date = date
        self.content = content
        self.author = author
        
    }
    
}
