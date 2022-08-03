class ApplicationController < ActionController::API
    rescue_from Mongoid::Errors::DocumentNotFound, with: :document_not_found
    
    private
    def document_not_found(e)
      render json: { error: "Ação não realizada. Os dados não foram encontrados." }, status: :unprocessable_entity
    end
    
end
