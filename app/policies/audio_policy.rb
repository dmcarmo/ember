class AudioPolicy < ItemPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
