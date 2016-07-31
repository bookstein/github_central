class IssuesController < ApplicationController
  # GET /issues
  # GET /issues.json
  attr_reader :github_key

  def index
    @issues = HTTParty.get('https://api.github.com/issues?access_token=' + github_key)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issues }
    end
  end

  def github_key
    ENV["GITHUB_CENTRAL_KEY"]
  end
end