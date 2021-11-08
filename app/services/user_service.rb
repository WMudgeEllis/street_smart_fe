class UserService

  def self.create_user(email)
    conn = Faraday.new do |f|
      f.params['email'] = email
    end

    conn.post('https://street-smart-be.herokuapp.com/api/v1/users')
  end

end
