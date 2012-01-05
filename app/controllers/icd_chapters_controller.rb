class IcdChaptersController < ApplicationController
  # GET /icd_chapters
  # GET /icd_chapters.json
  def index
    @icd_chapters = IcdChapterDecorator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @icd_chapters }
    end
  end

  # GET /icd_chapters/1
  # GET /icd_chapters/1.json
  def show
    @icd_chapter = IcdChapterDecorator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @icd_chapter }
    end
  end
end
