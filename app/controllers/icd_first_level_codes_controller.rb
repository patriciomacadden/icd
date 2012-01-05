class IcdFirstLevelCodesController < ApplicationController
  before_filter :find_icd_chapter!
  before_filter :find_icd_block!
  
  # GET /icd_first_level_codes
  # GET /icd_first_level_codes.json
  def index
    @icd_first_level_codes = IcdFirstLevelCodeDecorator.decorate @icd_block.icd_first_level_codes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @icd_first_level_codes }
    end
  end

  # GET /icd_first_level_codes/1
  # GET /icd_first_level_codes/1.json
  def show
    @icd_first_level_code = IcdFirstLevelCodeDecorator.decorate @icd_block.icd_first_level_codes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @icd_first_level_code }
    end
  end
  
  private
  
  def find_icd_chapter!
    @icd_chapter = IcdChapter.find(params[:icd_chapter_id])
  end
  
  def find_icd_block!
    @icd_block = @icd_chapter.icd_blocks.find(params[:icd_block_id])
  end
end
