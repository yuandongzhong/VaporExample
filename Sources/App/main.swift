import Vapor

let drop = Droplet()


/*
drop.get("/name",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)!"
    }
    return "Error retrieving parameters."
}
 */


/*
drop.get("/") { request in
    return "Hello World!"
}
 */


drop.get("/view") { request in
    return try drop.view.make("view.html")
}

drop.run()
