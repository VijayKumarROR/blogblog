class ArticController < ApplicationController
  def new
   @sample = Sample.new
  end

  def create 
   @sample = sample.create(sample_params)
   @sample.save
   flash[:notice] = "Data is created"
  end
private
 def sample_params
   params.require[:sample].permit(:name, :password)
end
end
