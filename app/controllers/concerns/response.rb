module Response
  def json_response(object, status = :ok)
    # render SYNTAX: render(options = nil, extra_options = {}, &block) protected
    # Renders the content that will be returned to the browser as the response body.
    render json: object, status: status
  end
end
