class BooksController < ApplicationController
  
  def new
    @books=Books.new
  end 

  def create 
     @books = Books.new(books_params)
    @books.user_id = current_user.id
    @books.save
    redirect_to books_path
  end 

  def index 
     @books = Book.all
  end 
  
  def show
  end
  
  def destroy 
  end 
  
  private
  def post_image_params
    params.require(:books).permit( :shop_name, :image, :caption)
  end 
end
