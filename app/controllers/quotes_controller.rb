class QuotesController < ApplicationController
	before_action :titles
	  def apply
	    @title = "Post"
	  end

	  def list
	    @title = "Post"
	  end

	  def show
	  end

	  def edit
	  end

	  def delete
	  end

	  def new
	    @post = Post.new
	  end

	  def create
	  	@quote = Quote.new params.require(:quote).permit :name, :phone, :email, :cargo_type, :container_type, :cargo_weight, :cargo_details, :instruction, :importer, :importer_mail, :importer_phone, :origin
	  	if @quote.save
	  		flash[:notice] = 'Freight Quotation Request Successfull. Quick Movers Limited will contact you.'
	  		@title = 'Post'
	  		render 'apply'
	  	else
	  		flash[:notice] = @quote.errors.full_messages
	  		@title = 'Post'
	  		render 'apply'
	  	end
	  end

	  private 
	    def titles
	      @title = 'Posts'
	    end
end
