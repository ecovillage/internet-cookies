#!/usr/bin/env ruby

require 'sinatra'
require 'haml'

class Voucher
  attr_accessor :code
  attr_accessor :fortune
  def initialize code, fortune
    @code = code
    @fortune = fortune
  end
end

def read_vouchers filename
  File.readlines(filename).map do |line|
    next if line.start_with? "#"
    #fortune -s songs-poems literature magic humorists love art ethnic education tao wisdom paradoxum
    fortune = `fortune -s magic love ethnic tao wisdom paradoxum`
    Voucher.new line, fortune
  end.compact
end

if ARGV.length != 3
  raise "Need 3 arguments [vouchercsv, expiration, validity]"
end

$vouchers = read_vouchers ARGV[0]
$duration = ARGV[1]
$expiry   = ARGV[2]

get '/' do
  @vouchers = $vouchers
  haml :vouchers_ng
end
