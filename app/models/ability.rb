class Ability
  include CanCan::Ability

  def initialize(current_user)
    @current_user = current_user
  end
end
