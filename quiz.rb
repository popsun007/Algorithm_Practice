# for i in 100...1000
#   system("curl -u popsun@me.com:ms4TVp https://remeeting.com/quiz/python_script.cgi?number=" + i.to_s)
# end


require 'rubygems'
require 'curb'
c = CURL.new
c = get("https://remeeting.com/quiz/python_script.cgi?number=505")
c.http_auth_types = :basic
c.username = 'popsun@me.com'
c.password = 'ms4TVp'
c.perform