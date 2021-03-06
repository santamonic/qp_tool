class QualityController < ApplicationController
  def posts
    @posts = Post.all
    selectQp = {:coding => "Coding Guideline", :unit => "Unit Test&Coverage", :static => "Static Analystics", :cyclomatic => "Cyclomatic Complexity"}
    @selectQpCoding     = Post.where(quality_practice: selectQp[:coding])
    @selectQpUnit       = Post.where(quality_practice: selectQp[:unit])
    @selectQpStatic     = Post.where(quality_practice: selectQp[:static])
    @selectQpcyclomatic = Post.where(quality_practice: selectQp[:cyclomatic])
  end

  def posts_category
    selectQp = {:coding => "Coding Guideline", :unit => "Unit Test&Coverage", :static => "Static Analystics", :cyclomatic => "Cyclomatic Complexity"}
    @selectQpCoding     = Post.where(quality_practice: selectQp[:coding])
    @selectQpUnit       = Post.where(quality_practice: selectQp[:unit])
    @selectQpStatic     = Post.where(quality_practice: selectQp[:static])
    @selectQpcyclomatic = Post.where(quality_practice: selectQp[:cyclomatic])

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
    @post = Post.find(params[:id]) 
  end
  def allshow
     @posts = Post.order("quality_practice")
  end

  def write
  end

  def write_complete
    post = Post.new
    post.quality_practice = params[:post_category]
    post.toolname = params[:post_tool] 
    post.title = params[:post_title] 
    post.support_language = params[:post_language]
    post.support_os = params[:post_os]
    post.buy_need = params[:post_buyneed]
    post.support_javaversion = params[:post_version]
    post.urlname = params[:post_url]
    post.image = params[:image] 
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/quality/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end

  end

  def edit
    @post = Post.find(params[:id])
    @posts = Post.all
  end

  def edit_complete
    post = Post.find(params[:id]) 
    post.quality_practice = params[:post_category]
    post.toolname = params[:post_tool] 
    post.title = params[:post_title] 
    post.support_language = params[:post_language]
    post.support_os = params[:post_os]
    post.buy_need = params[:post_buyneed]
    post.support_javaversion = params[:post_version]
    post.urlname = params[:post_url] 
    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/quality/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end

  end

  def delete_complete
    post = Post.find(params[:id])
    post.destroy
    flash[:alert] = "삭제되었습니다."
    redirect_to "/"
  end
end
