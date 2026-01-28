Class Employees_Request
 
  def find_employee(id)
    Employees.get("/employees/#{id}")
  end

   def create_employee(name,salary,age)
      Employees.post('/create', body: {
        name: name,
        salary: salary,
        age: age,
        "profile_image": ""
      }.to_json)
    end

    def update_employee(id, name, salary, age)
      Employees.put '/update/' + id.to_s, body: {
        name: name,
        salary: salary,
        age: age
      }.to_json)
    end 

     def delete_employee(id)
        Employees.delete('/delete/' + id.to_s)
     end

end