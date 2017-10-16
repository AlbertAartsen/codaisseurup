class Api::ThemesController < ApplicationController
  def index
    render status: 200, json: {
      themes: Theme.all
    }.to_json
  end
end
