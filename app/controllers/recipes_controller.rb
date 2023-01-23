class RecipesController < ApplicationController

    
    # GET /recipes return a receipe with the user it's related to
    def index
        redner json: Recipe.all
    end

    # def index
    #     user = User.find_by(id: session[:user_id])
    #     if user
    #         render json: Recipe.all, status: :created 
    #     else
    #         render json: { errors: ["User unauthorized"]  }, status: :unauthorized
    #     end
    # end
    
    # POST /recipes
    def create 
        recipe = @current_user.recipes.create!(recipe_params)
        render json: recipe, status: :created
    end
  

    private 

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end
end
