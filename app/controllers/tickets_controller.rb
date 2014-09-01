class TicketsController < ApplicationController

  def reuse()
    @m=Movie.find(params[:movie_id])
    @s=Showtheater.find(params[:showtheater_id])
    @b=@s.show.showtime
    @c=@s.theater.theatername
    @n=@m.name
  end
  def new 
    tickets()
    @ticket=Ticket.new
    reuse()
  end 
  def create
    @ticket=Ticket.new(ticket_params)
    reuse()
    if @ticket.save
       redirect_to movie_showtheater_ticket_path(@m,@s,@ticket)
    else
        redirect_to 'new'
    end
  end
  def show 
     @ticket=Ticket.find(params[:id])
     respond_to do |format|
       format.html 
       format.xls { render :xls => @ticket }
       format.xml 
     end
  end
   
  def tickets()
   reuse()
    @tickets = Ticket.where(date: Date.today,theatername: @c,showtime: @b)
    a =[] 
    k =[] 
    @tickets.each do |post| 
      a << post.seatno 
    end 
    a.each_with_index do |v| 
      v.split(',').each do |p| 
      k << p 
      end 
    end
       gon.k=k
   end
   private
    def ticket_params
      params.require(:ticket).permit(:id,:showtheater_id,:tickets,:theatername,:showtime,:moviename,:seatno,:price,:date)
    end
end
