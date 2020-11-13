module CurrentUserConcern
  extend ActiveSupport::Concern
  
  # if current user exists, do super. if not, do || item
  # ostruct is a mini database structure object
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end