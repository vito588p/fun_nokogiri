# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # # Search for nodes by xpath
  # doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  #   puts link.content
  # end

  # # Or mix and match
  # doc.search('nav ul.menu li a', '//article//h2').each do |link|
  #   puts link.content
  # end

end
