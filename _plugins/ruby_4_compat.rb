# Ruby 4.0 Compatibility Patch
# The 'untaint' method was removed in Ruby 3.2+, but old Liquid gems still call it.
class Object
  def untaint
    self
  end
end
