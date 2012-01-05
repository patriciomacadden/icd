class IcdBlocksController < ApplicationController
  before_filter :find_icd_chapter!
  
  # GET /icd_blocks
  # GET /icd_blocks.json
  def index
    @icd_blocks = IcdBlockDecorator.decorate @icd_chapter.icd_blocks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @icd_blocks }
    end
  end

  # GET /icd_blocks/1
  # GET /icd_blocks/1.json
  def show
    @icd_block = IcdBlockDecorator.decorate @icd_chapter.icd_blocks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @icd_block }
    end
  end
  
  private
  
  def find_icd_chapter!
    @icd_chapter = IcdChapter.find(params[:icd_chapter_id])
  end
end
