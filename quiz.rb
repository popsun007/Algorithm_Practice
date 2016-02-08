# for i in 100...1000
#   system("curl -u popsun@me.com:ms4TVp https://remeeting.com/quiz/python_script.cgi?number=" + i.to_s)
# end

require 'curb'

for i in 100...1000
  c = Curl::Easy.new("https://remeeting.com/quiz/python_script.cgi?number=" + i.to_s)
  c.http_auth_types = :basic
  c.username = 'popsun@me.com'
  c.password = 'ms4TVp'
  c.perform

  if !c.body_str.include? "Sorry"
    puts i
    puts c.body_str
    break
  end
end