class StaticController < ApplicationController
  def laststories
    @articles = Article.limit(6)
  end
end
