class UploadsController < ApplicationController
  def new
    @upload = Upload.new
  end

  def create
    Upload.create! params.require(:upload).permit(:file)
  end
end
