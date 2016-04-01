class QualityController < ApplicationController
  def posts
    @posts = Post.all
  end

  def posts_category
    case params[:quality_practice]
    when "coding"
      @quality_practice = "Coding Guideline"
    when "unit"
      @quality_practice = "Unit Test&Coverage"   
    when "static"
      @quality_practice = "Static Analystics"
    else
      @quality_practice = "Cyclomatic Complexity"
    end
      @posts = Post.where(quality_practice:  @quality_practice)
  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
