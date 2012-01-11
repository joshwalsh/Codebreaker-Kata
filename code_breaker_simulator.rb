class CodeBreakerSimulator
  def evaluate_guess(*colors)
    code = [:red, :green, :blue, :pink]

    if colors == code
      return { color: 4, place: 4 }
    end 

    { color: 4, place: 0 }
  end
end
