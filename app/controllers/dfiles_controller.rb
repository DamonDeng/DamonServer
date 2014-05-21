class DfilesController < ApplicationController
  def new
  
  end

  def create

    if filename=uploadFile(params[:file]['file'])
      render :text=>filename
    end
    render plain: params[:dfile].inspect

  end

  def uploadFile(file)
    if !file.filename.empty?
      @filename=getFileName(file.filename)
      File.open("#{RAILS_ROOT}/public/images/#{@filename}", "wb") do |f|
        f.write(file.read)
      end
      return @filename
    end
  end

  def getFileName(filename)
    if !filename.nil?
      return filename
    end
  end

end
