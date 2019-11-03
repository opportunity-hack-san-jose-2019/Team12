class HomeController < ApplicationController
  def index
  end

  def dashboard
  end

  def interviewer_checkin
    @check_in
  end

  def check_in_interviewer
    # find student by email
    # find register code by register code
    # get interview and update to be checked in
  end

  def interviewee_checkin
    @check_in
  end

  def check_in_interviewee
    # find student by email
    # find register code by register code
    # get interview and update to be checked in
  end
end
