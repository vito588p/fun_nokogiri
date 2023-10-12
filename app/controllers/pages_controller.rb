require 'nokogiri'
require 'open-uri'

class PagesController < ApplicationController
  def index
    url = "https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=30"
    @doc = Nokogiri::HTML(URI.open(url))
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name", template: "pages/index", formats: [:html], encoding: 'UTF-8' , dpi: 72
      end
    end
  end

  def show
    url = "https://mops.twse.com.tw/mops/web/t05sr01_1"
    @doc = Nokogiri::HTML(URI.open(url))
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name", template: "pages/show", formats: [:html], encoding: 'UTF-8' , dpi: 72
      end
    end
  end
end
