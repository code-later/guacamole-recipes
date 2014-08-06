class CommentsController < ApplicationController
  before_filter :load_recipe

  def create
    @comment = Comment.new params[:comment]
    @comment.username = current_user.username if current_user
    @recipe.comments << @comment

    RecipesCollection.save @recipe

    render 'recipes/_comments', layout: false
  end

  private

  def load_recipe
    @recipe = RecipesCollection.by_key(params[:recipe_id])
  end
end
