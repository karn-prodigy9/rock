class ErrorsController < ApplicationController
  allow_unauthenticated_access

  # 404 Not Found
  def not_found
    render inertia: "errors/404", status: :not_found
  end

  # 500 Internal Server Error
  def internal_server_error
    render inertia: "errors/500", status: :not_found
  end
end
