class UserFacade

  def self.create_user(email)
    UserService.create_user(email)
  end

end
