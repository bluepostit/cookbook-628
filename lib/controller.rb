require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # get array of recipes from cookbook
    # send to view for display
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    # get name & description from view
    # create a Recipe instance
    # add to cookbook
    name = @view.ask_user_for('name')
    description = @view.ask_user_for('description')
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # get list of recipes
    # display to user
    # ask user for index of recipe to destroy
    # tell cookbook to remove that recipe (by index)
    list
    index = @view.ask_user_for_index
    @cookbook.remove_recipe(index)
  end
end
