class ApplicationPolicy
  attr_reader :user, :combi

  def initialize(user, combi)
    @user = user
    @combi = combi
  end
end
