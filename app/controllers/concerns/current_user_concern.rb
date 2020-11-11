module CurrentUserConcern
  extend ActiveSuport::Concern
  
  # if current user exists, do super. if not, do || item
  # ostruct is a mini database structure object
  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest", 
                  last_name: "User", 
                  email: "guest@example.com")
  end
end