module IousHelper

  # def check_recipe_author
  # recipe = current_user.recipes.where(:id => params[:id]).first if current_user
  #   if recipe.nil?
  # flash[:e] = "unJuicerous! Don't add secret ingredients without author permission!"
  # redirect_to(recipe_path)
  #   end
  # end

  ## below code for changing devise sign-up routes
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
end
