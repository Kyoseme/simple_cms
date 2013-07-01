class DemoController < ApplicationController

  def index
      render(:action => 'hello')
  end

  def hello
  end

end
