class WelcomeController < ApplicationController
  def index
    template = ab_test(:welcome_page, 'index', 'index2')
    p request.env['REMOTE_ADDR']
    p request.env['HTTP_REFERER']
    p request.env['HTTP_X_FORWARDED_FOR']

    @ip=request.headers['X-Real-IP']
    render template
  end

  def copytowechat
    ab_finished(:welcome_page)
    render plain: "OK"
  end
end
