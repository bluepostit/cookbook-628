class View
  def display(recipes)
    puts '=== Your recipes ==='
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} (#{recipe.description})"
    end
  end

  def ask_user_for(item)
    puts "Please enter the #{item}:"
    gets.chomp
  end

  def ask_user_for_index
    ask_user_for('recipe number').to_i - 1
  end
end
