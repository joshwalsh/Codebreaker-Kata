class CodeBreakerSimulator
  Code = [:red, :green, :blue, :pink]

  def evaluate_guess(*colors)
    matched_color_count = count_correct_colors(colors)
    matched_places = count_matched_places(colors)

    { color: matched_color_count, place: matched_places }
  end

  private

  def count_correct_colors(colors)
    (Code & colors).size
  end

  def count_matched_places(colors)
    matched_places = 0

    colors.each_with_index do |color, index|
      matched_places += 1 if color == Code[index]
    end

    matched_places
  end
end
