class SpacePolicy < ApplicationPolicy
  alias space object

  def show?
    true
  end

  def update?
    return false unless person

    person.member_of?(space)
  end

  def edit?
    update?
  end
end
