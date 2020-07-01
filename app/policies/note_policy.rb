class NotePolicy < ItemPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
