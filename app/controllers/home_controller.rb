class HomeController < ApplicationController
  def index
  end

  def dashboard
  end

  def charts
  end

  def tables
  end

  def interviewer_checkin
  end

  def check_in_interviewer
    user = Interviewer.find_by email: params[:email]
    code = RegisterCode.find_by(token: params[:register_code])

    # if code and user == code.user
      respond_to do |format|
        format.html { redirect_to thank_you_url, notice: 'Checked in successfully' }
      end
    # else
      # respond_to do |format|
        # format.html { redirect_to interviewer_checkin_url, alert: 'Wrong register code' }
      # end
    # end
  end

  def interviewee_checkin
  end

  def check_in_interviewee
    user = Interviewee.find_by email: params[:email]
    code = RegisterCode.find_by(token: params[:register_code])

    if code and user == code.user
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Checked in successfully' }
      end
    else
      respond_to do |format|
        format.html { redirect_to interviewer_checkin_url, alert: 'Wrong register code' }
      end
    end
  end

  def thank_you
  end
end
