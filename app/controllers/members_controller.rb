class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new member_params

    if @member.save
      redirect_to members_path
    else
      render action: :new
    end
  end

  def index
    @members = Member.select(:name, :suburb)
  end

  private

  def member_params
    params.require(:member).permit(:name, :phone, :wechat, :suburb, :work, :email, :gender, :dob)
  end
end
