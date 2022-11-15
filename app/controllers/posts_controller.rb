class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Post Created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to movies_url, status: :see_other,
                            alert: "Movie successfully deleted!"
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post succesffuly updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :content,
      :likes,
      :blogger_id,
      :destination_id
    )
  end
end
