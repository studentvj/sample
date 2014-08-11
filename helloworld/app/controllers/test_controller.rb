class TestController < ApplicationController
 

  def new
	@person=Person.new
  end
def create
        @person=Person.new(params[:post].permit(:firstname))

        if @person.save
            redirect_to @person
        else
            render 'new'
        end
    end
end
