class NewslettersController < ApplicationController
  # GET /
  def index
    render json: Newsletter.includes(:pages).as_json(include: :pages)
  end

  # POST /newsletters
  def create
    newsletter = Newsletter.new(newsletter_params)

    if newsletter.save
      render plain: 'ok', status: :created
    else
      render plain: 'error', status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def newsletter_params
      params.require(:newsletter).permit(pages_attributes: [:title, :url, :description])
    end
end
