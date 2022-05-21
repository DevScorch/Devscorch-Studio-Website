import Fluent
import Vapor

func routes(_ app: Application) throws {
   
    let indexController = IndexController()
    
    try app.routes.get(use: indexController.renderIndexPage)

}
