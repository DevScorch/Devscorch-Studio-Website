import Fluent
import Vapor

func routes(_ app: Application) throws {
   
    let indexController = IndexController()
    let aboutController = AboutController()
    let servicesController = ServicesController()
    
    app.routes.get(use: indexController.renderIndexPage)
    app.routes.get("about", use: aboutController.renderAboutPage)
    app.routes.get("services", use: servicesController.renderServicesController)

}
