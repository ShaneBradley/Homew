class BlogsController < ApplicationController
		before_action :blog_item, only: [:edit, :show, :update, :destroy]
	def index
		@blogs = Blog.all
	end

	def show
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blogs_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
	end

	def edit
	end

	def update
		respond_to do |format|
      if @blog_item.update(blog_params)
        format.html { redirect_to blogs_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
	end

	def destroy
		@blog_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Record was removed.' }
    end
	end

	private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

  def blog_item
    @blog_item = Blog.find(params[:id])
  end
end

