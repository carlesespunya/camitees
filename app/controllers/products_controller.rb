class ProductsController < ApplicationController
  def index
    if params[:sku]
      @category = Category.find_by(sku: params[:sku])
      @products = @category.products
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @product_colors = @product.product_colors
    @photo = @product.link
  end

  def change_color
    product_color = ProductColor.find(params[:id])
    product = product_color.product
    photo = product_color.link
    product.update(link: photo)
    redirect_to product_path(product)
  end
end
