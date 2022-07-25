import Vapor
import Fluent


class Employee {
    static let schema = "Employees" // which table do we retrieve "Employee" from

    // Create an empty employee
    init() {     
    }

    @ID(custom: "emp_no", generatedBy: .database) //attribute
    var id: Int?

    @Field(key: "first_name") //attribute
    var firstname: String

    @Field(key: "last_name")
    var lastname: String

    @Field(key: "birth_date")
    var birthDate: Date
}
