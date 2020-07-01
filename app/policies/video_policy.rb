class VideoPolicy < ItemPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
