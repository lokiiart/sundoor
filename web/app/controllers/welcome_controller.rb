class WelcomeController < ApplicationController
  def index
    template = ab_test(:welcome_page, 'index', 'index2')
    template = "baidu/examine"
    p request.remote_ip
    @page_visitor = PageVisitor.new
    @page_visitor.RemoteIP = request.remote_ip
    @page_visitor.Page = template
    @page_visitor.referer = request.referer
    p "test #{request.referer}"
    if @page_visitor.save
      p 'record a page visitor successed'
    else
      p 'record a page visitor failed'
    end

    p 'test git'

    @ip = request.remote_ip
    render template
  end

  def copytowechat
    ab_finished(:welcome_page)
    render plain: "OK"
  end
end
