class LendsController < ApplicationController

   def index
       @lends = current_user.lends
   end
    

   def create
     @lend = current_user.lends.create(lend_params)

     redirect_to pages_show_path, notice: "予約完了しました"

   end

   def destroy
     @lend = Lends.find(params[:id])
   end
    
    

  private

  def lend_params
    params.require(:lend).permit(:start, :end, :book_id)
  end 

end    
