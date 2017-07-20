//
// Created by christian on 19.07.17.
//

import PerfectHTTP
import PerfectLogger

func makeRoutes() -> Routes {
    LogFile.debug("makeRoutes()")
    var routes = Routes()

    routes.add(method: .get, uris: ["/", "index.public"], handler: indexHandler)
    /*
    routes.add(method: .get, uri: "/login", handler: loginGetHandler)
    routes.add(method: .post, uri: "/login", handler: loginPostHandler)
    routes.add(method: .get, uri: "/new", handler: newGetHandler)
    routes.add(method: .post, uri: "/new", handler: newPostHandler)
    routes.add(method: .get, uri: "/success", handler: loginHandler)
    */
    return routes
}
func indexHandler(request: HTTPRequest, _ response: HTTPResponse) {
    LogFile.debug("indexhandler()")
    let view = renderViews().renderHome()
    print("view = \(view)")
    //let body: String = view.renderHome()
    //print("body = \(body)")
    response.appendBody(string: view)
    response.completed()
}
