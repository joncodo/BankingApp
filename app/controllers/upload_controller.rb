class UploadController < ActionController::Base
  def index
    render 'upload/index'
  end

  def upload

    render :text => "File has been uploaded successfully"
  end
end
