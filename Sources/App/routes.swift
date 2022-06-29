import Fluent
import Vapor

func routes(_ app: Application) throws {
   
    let indexController = IndexController()
    let aboutController = AboutController()
    
    try app.routes.get(use: indexController.renderIndexPage)
    try app.routes.get("about", use: aboutController.renderAboutPage)

}
