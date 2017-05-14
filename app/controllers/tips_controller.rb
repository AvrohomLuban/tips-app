class TipsController < ApplicationController

  def index
    @tips = Tip.all.sort
    render "index.html.erb"
  end

  def show
    @tip = Tip.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @tip = Tip.create(name: params[:name], location: params[:location], tip: params[:tip])
    render "create.html.erb"
  end

  def edit
    @tip = Tip.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @tip = Tip.find_by(id: params[:id])
    @tip.update(name: params[:name], location: params[:location], tip: params[:tip])
    render "update.html.erb"
  end

  def destroy
    @tip = Tip.find_by(id: params[:id])
    render "destroy.html.erb"
    @tip.destroy
  end

end
