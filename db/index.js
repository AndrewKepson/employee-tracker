const connection = require("./connection");
class DB {
    constructor(connection){
        this.connection = connection
    }
    findAllEmployees(){
        return this.connection.query(`SELECT employee.id, 
                                    employee.first_name, 
                                    employee.last_name, 
                                    role.title, 
                                    department.name AS department
                                    FROM employee
                                    LEFT JOIN role
                                    ON (employee.role_id = role.id)
                                    LEFT JOIN department
                                    ON (employee.department_id = department.id)
                                    ;`)
    }
    findAllDepartments(){
        return this.connection.query(`SELECT department.id, 
                                    department.name 
                                    FROM department;`)
    }
    findAllRoles(){
        return this.connection.query(`SELECT role.id, 
                                    role.title, 
                                    department.name AS department, 
                                    role.salary 
                                    FROM role 
                                    LEFT JOIN department 
                                    ON (role.department_id = department.id)
                                    ;`)
    }
    updateEmployeeRole(){
        return this.connection.query("UPDATE employee SET role_id = ? WHERE id = ?",[roleId, employeeId])
    }


}
module.exports = new DB(connection);