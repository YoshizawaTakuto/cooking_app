class CooksController < ApplicationController
  def index
    @cooks = Cook.all.order(created_at: :desc)
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)
    if @cook.save
      flash[:notice] = "また一つ覚えたぞー！！！"
      redirect_to("/")
    else
      render("new")
    end
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
    @cook = Cook.find(params[:id])
    if @cook.update(cook_params)
      flash[:notice] = "さらに美味しくなりました！"
      redirect_to(@cook)
    else
      render("edit")
    end
  end

  def destroy
    @cook = Cook.find(params[:id])
    @cook.destroy
    flash[:notice] = "レシピを削除しました"
    redirect_to(cooks_path)
  end

  def cook_params
    params.require(:cook).permit(:name, :material, :Process, :memo, :score, :image)
  end

  def likes
    @cooks = Cook.where("score >= ?", 90)
  end
end
