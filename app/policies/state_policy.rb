class StatePolicy < ApplicationPolicy
  def index?
    user.present? && (user.admin? || user.editor? || user.viewer?)
  end

  def create?
    user.present? && (user.admin? || user.editor?)
  end

  def new?
    create?
  end
end
