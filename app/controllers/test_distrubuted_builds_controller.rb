class TestDistrubutedBuildsController < ApplicationController
  # GET /test_distrubuted_builds
  # GET /test_distrubuted_builds.json
  def index
    @test_distrubuted_builds = TestDistrubutedBuild.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_distrubuted_builds }
    end
  end

  # GET /test_distrubuted_builds/1
  # GET /test_distrubuted_builds/1.json
  def show
    @test_distrubuted_build = TestDistrubutedBuild.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_distrubuted_build }
    end
  end

  # GET /test_distrubuted_builds/new
  # GET /test_distrubuted_builds/new.json
  def new
    @test_distrubuted_build = TestDistrubutedBuild.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_distrubuted_build }
    end
  end

  # GET /test_distrubuted_builds/1/edit
  def edit
    @test_distrubuted_build = TestDistrubutedBuild.find(params[:id])
  end

  # POST /test_distrubuted_builds
  # POST /test_distrubuted_builds.json
  def create
    @test_distrubuted_build = TestDistrubutedBuild.new(params[:test_distrubuted_build])

    respond_to do |format|
      if @test_distrubuted_build.save
        format.html { redirect_to @test_distrubuted_build, notice: 'Test distrubuted build was successfully created.' }
        format.json { render json: @test_distrubuted_build, status: :created, location: @test_distrubuted_build }
      else
        format.html { render action: "new" }
        format.json { render json: @test_distrubuted_build.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_distrubuted_builds/1
  # PUT /test_distrubuted_builds/1.json
  def update
    @test_distrubuted_build = TestDistrubutedBuild.find(params[:id])

    respond_to do |format|
      if @test_distrubuted_build.update_attributes(params[:test_distrubuted_build])
        format.html { redirect_to @test_distrubuted_build, notice: 'Test distrubuted build was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_distrubuted_build.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_distrubuted_builds/1
  # DELETE /test_distrubuted_builds/1.json
  def destroy
    @test_distrubuted_build = TestDistrubutedBuild.find(params[:id])
    @test_distrubuted_build.destroy

    respond_to do |format|
      format.html { redirect_to test_distrubuted_builds_url }
      format.json { head :no_content }
    end
  end
end
