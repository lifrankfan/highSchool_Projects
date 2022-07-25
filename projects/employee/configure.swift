import Vapor

public func configure(_app: Application) {
    app.database.use(.mysql(
                       hostname: "db",
                       port: MySQLConfiguration.ianaPortNumber,
                       username: "employees_user",
                       password: "password",
                       database: "employees"

                     }
