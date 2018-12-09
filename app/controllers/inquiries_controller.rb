class InquiriesController < ApplicationController

  def new 
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      @inquiry.send_inquiry_to_slack(@inquiry)
      flash[:success] = "成功"
      redirect_to root_url
    else
      render'new'
    end
  end

  private
   
    def inquiry_params
      params.require(:inquiry).permit(:email, :message)
    end
  
end
