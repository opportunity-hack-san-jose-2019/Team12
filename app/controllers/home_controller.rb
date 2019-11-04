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

  def push_sms
    TwilioMessenger.new("Hello Matthew! Here are your mock interview times for today:
Interview #1 3:30pm: Station 13 with Laura Torres from Facebook
Interview #2 4:00pm: Station 14 with Prasanna Vengadam from Intel
Interview #3 4:30pm: Station 9 with Matthew Diwata from LinkedIn
Note from Braven: Please don't enter a room before the last interview has finished. Good luck tonight!
                            ").call
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
