class RegPolicy < ApplicationPolicy
  def index?
    user.present? && (user.admin? || user.editor? || user.viewer?)
  end

  def update?
    user.present? && (user.admin? || user.editor?)
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def create?
    user.present? && (user.admin? || user.editor?)
  end

  def new?
    create?
  end
end
