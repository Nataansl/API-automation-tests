class Assertions 
     def request_successful(status_code, message)
         expect(status_code).to eql (200)
         expect(message).to eql 'OK'
     end

    end