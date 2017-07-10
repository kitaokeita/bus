class ReservationsController < ApplicationController

   def index
       @reservations = current_user.reservations.all
   end

   

   def create
     @reservation = current_user.reservations.create(reservation_params)
     
     redirect_to pages_show_path, notice: "予約完了しました"

   end

   def destroy

   end

   def show
      @reservation = Reservation.find(params[:id])
   end 

   def edit
    @reservation = Reservation.find(params[:id])

   end 

   def update
     @reservation = Reservation.find(params[:id])

     if @reservation.update(reservation_params)
      redirect_to :back, notice: "更新できました"
     end
      
    end

  

   def reserved
     @books = current_user.books
    
   end

    def address
     @reservation = Reservation.find(params[:id])
     if @reservation.update(reservation_params)
      redirect_to :back, notice: "更新できました"
     end
      
   end 
    

   
    

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :book_id, :consent, :address)
  end 

end    
