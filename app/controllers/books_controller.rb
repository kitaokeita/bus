class BooksController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]


  def index
    @books = current_user.books.all
    @books = Book.paginate(:page => params[:page], :per_page => 12)
    @reservations = Reservation.all

  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = current_user.books.build
  end

  def create
    @book = current_user.books.build(book_params)

    if @book.save
      redirect_to root_path, notice:"保存しました"
    else
       redirect_to new_book_path(@book), notice:"保存してない"
    end 

    
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book.update(book_params)
    respond_with(@book)
    flash[:success] = "book update"
    
  end

  def destroy
    @book.destroy
       flash[:success] = "book deleted"
       redirect_to request.referrer || root_url
  end

 

  private

   def book_params
     params.require(:book).permit(:title, :author, :publish, :sort, :like, :impressions, :picture)
   end

   def set_book
    @book = Book.find(params[:id])
   end

end
