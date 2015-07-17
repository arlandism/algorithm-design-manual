
class ParenLinter

  attr_reader :expr

  def initialize(expr)
    @expr = expr
  end

  def balanced?
    i = 0
    stack = []
    while i < expr.length
      if expr[i] == "("
        stack << "("
      elsif expr[i] == ")"
        if stack.empty?
          return false
        else
          stack.pop
        end
      end
      i += 1
    end
    stack.empty?
  end
end

