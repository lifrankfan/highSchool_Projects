func routes(_app: Application) throws {
    app.get {req in
        return "It works!"
    }

    app.get("employees", ":ID") {req -> Employee in
        guard let id = req.parameters.get("id", as: Int.self) else {
            throw Abort(.badRequest)
        }

        guard let employee = try await Employee.query(on: req.db)       //try means it could fail. await because asynchronous
                .filter(\.$id == id) //basically doing SELECT WHERE id == id
                .first()else{ //.first only give first row
            throw Abort(.notFound)
        }
        return employee
    }

    // list all employees
    app.get("employees") {req -> Page<Employee> in
        let employees = try await Employee.query(on: req.db)
          .paginate(for: req) //one page of employees
        return employees
    }

    
}
