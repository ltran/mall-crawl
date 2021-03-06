class CrawlsController < ApplicationController
  before_action :set_crawl, only: [:show, :edit, :update, :destroy]

  # GET /crawls
  # GET /crawls.json
  def index
    @crawls = Crawl.all.includes(:centre)
  end

  # GET /crawls/1
  # GET /crawls/1.json
  def show
  end

  # GET /crawls/new
  def new
    @crawl = Crawl.new
  end

  # GET /crawls/1/edit
  def edit
  end

  # POST /crawls
  # POST /crawls.json
  def create
    @crawl = Crawl.new(crawl_params)

    respond_to do |format|
      if @crawl.save
        format.html { redirect_to @crawl, notice: 'Crawl was successfully created.' }
        format.json { render :show, status: :created, location: @crawl }
      else
        format.html { render :new }
        format.json { render json: @crawl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crawls/1
  # PATCH/PUT /crawls/1.json
  def update
    respond_to do |format|
      if @crawl.update(crawl_params)
        format.html { redirect_to @crawl, notice: 'Crawl was successfully updated.' }
        format.json { render :show, status: :ok, location: @crawl }
      else
        format.html { render :edit }
        format.json { render json: @crawl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crawls/1
  # DELETE /crawls/1.json
  def destroy
    @crawl.destroy
    respond_to do |format|
      format.html { redirect_to crawls_url, notice: 'Crawl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crawl
      @crawl = Crawl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crawl_params
      params.require(:crawl).permit(:centre_id, :name, :description)
    end
end
