# encoding:utf-8

require 'mechanize'

################################################
##           !USE YOUR CREDENTIALS            ##
################################################
USERNAME = 'xxxxxxx' # Use your username!
PASSWORD = 'xxxxxxx' # Use your password!

#
# Helper function that saves a HTML file on the html directory.
#
# @param [String] filename the name of the file to be saved.
# @param [String] body the body of the HTML file.
#
def save_html(filename, body)
  File.open("saved_html/#{filename}.html", "w") do |f|
    f.write(body.force_encoding('utf-8'))
  end
end

mechanize = Mechanize.new
mechanize.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36"

mechanize.get('http://estagios.pcs.usp.br/')
mechanize.get('http://estagios.pcs.usp.br/semLogin/login.aspx')

save_html('before_login', mechanize.page.body)

form = mechanize.page.forms[0]

headers = {
  'Host' => 'estagios.pcs.usp.br',
  'Connection'      => 'keep-alive',
  'Cache-Control'   => 'max-age=0',
  'Accept'          => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
  'Origin'          => 'http://estagios.pcs.usp.br',
  'Content-Type'    => 'application/x-www-form-urlencoded',
  'Referer'         => 'http://estagios.pcs.usp.br/semLogin/login.aspx',
  'Accept-Encoding' => 'gzip,deflate,sdch',
  'Accept-Language' => 'en-US,en;q=0.8,pt;q=0.6,de;q=0.4'
}

params = {
  '__EVENTTARGET'     => '',
  '__EVENTARGUMENT'   => '',
  '__VIEWSTATE'       => form.field_with(name: '__VIEWSTATE').value,
  '__EVENTVALIDATION' => form.field_with(name: '__EVENTVALIDATION').value,
  'ctl00$ContentPlaceHolder1$Login1$UserName'    => USERNAME,
  'ctl00$ContentPlaceHolder1$Login1$Password'    => PASSWORD,
  'ctl00$ContentPlaceHolder1$Login1$LoginButton' => 'Logar'
}

mechanize.post("http://estagios.pcs.usp.br/semLogin/login.aspx", params, headers)

save_html('after_login', mechanize.page.body)

################################################
##         TODO: CONTINUE FROM HERE!          ##
################################################
