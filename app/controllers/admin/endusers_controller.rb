class Admin::EndusersController < ApplicationController
  def index
    @users = Enduser.all.with_deleted
  end
end
