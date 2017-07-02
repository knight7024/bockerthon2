require 'open-uri'
require 'nokogiri'
require 'uri'
require 'cgi'

class MovieController < ApplicationController
  
  def index

link = "http://www.cine21.com/movie/lists/playing"
one1 = Nokogiri::HTML(open(link))
@t1 = one1.xpath('//span[@class="tit"]')
@uri = one1.xpath('//li[@class="mov_info_li"] /a')
  end

  def result

    search = params[:search]

search2 = CGI::escape(search)

link = "http://www.cine21.com/search/movie/?q=#{search2}"
one2 = Nokogiri::HTML(open(link))
@t2 = one2.xpath('//p[@class="name"] /a')
@uri = one2.xpath('//p[@class="name"] /a')
#@tt = @t.split("title=\"")
  end
end
