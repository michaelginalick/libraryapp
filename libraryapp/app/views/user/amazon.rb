string.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
require 'amazon/aws'
require 'amazon/aws/search'

#include Amazon::AWS
include Amazon::Search
include Amazon::AWS::Search

ASSOCIATES_ID = "*YOUR ASSOCIATES ID HERE*"
KEY_ID = "AKIAJ6ISHIOBS63OSCFA"

r = Request.new( 'D23XFCO2UKJY82', 'calibanorg-20', 'us', false )
r.keyword_search( 'ruby programming', 'books' ) do |p|
  authors = p.authors.join( ', ' )

  # Information for books that are currently in print or soon to be available.
  unless p.availability =~ /not available/
    printf( "%s by %s (ASIN %s) for %s\n%s\n\n", p.product_name, authors,
                                       p.asin, p.our_price, p.availability )
  end
end


# !/usr/bin/ruby -w require 'rubygems' 
# require 'amazon/aws/search' 
# include Amazon::AWS 
# include Amazon::AWS::Search 
# il = ItemLookup.new( 'ASIN', { 'ItemId' => '1430231149', 'MerchantId' => 'Amazon' } ) 
# rg = ResponseGroup.new( 'Medium' ) 
# req = Request.new 
# resp = req.search( il, rg ) item = resp.item_lookup_response.items.item 
# attribs = item.item_attributes 
# title = attribs.title 
# asin = item.asin 
# sales_rank = item.sales_rank 
# publication_date = attribs.publication_date puts "#{title} was released on #{publication_date}"