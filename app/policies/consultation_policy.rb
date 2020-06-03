class ConsultationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    new?
  end

  def show?
    true
  end

  def update?
    @consultation.mentor_id == user
  end
end
