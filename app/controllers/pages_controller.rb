require 'nokogiri'
require 'open-uri'

class PagesController < ApplicationController
  def index
    url = "https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=30"
    @doc = Nokogiri::HTML(URI.open(url))
  end

  def show
    url = "https://mops.twse.com.tw/mops/web/t05sr01_1"
    @doc = Nokogiri::HTML(URI.open(url))
  end
end
