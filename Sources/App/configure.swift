import Fluent
import FluentPostgresDriver
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.views.use(.leaf)

    // Database setup
    
    app.databases.use(.postgres(hostname: Environment.get("DATABASE_HOST") ?? "localhost", username: Environment.get("DATABASE_USER") ?? "studio", password: Environment.get("DATABASE_PASSWORD") ?? "studio", database: Environment.get("DATABASE_NAME") ?? "studio"), as: .psql)
    
    
    

    // register routes
    try routes(app)
}
