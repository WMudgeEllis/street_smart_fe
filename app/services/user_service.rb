class UserService

  def self.create_user(email)
    Client.conn.post('/api/v1/users') do |f|
      f.params['user_email'] = email
    end
  end

end
