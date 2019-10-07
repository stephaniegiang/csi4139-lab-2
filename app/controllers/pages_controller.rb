class PagesController < ApplicationController
  before_action :check_if_logged_in, only: :index
  def index; end
end