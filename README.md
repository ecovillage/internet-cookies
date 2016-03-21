# Internet Cookies

Sinatra app to convert vouchers from pfsense captive portal csv voucher file to html via sinatra app.  The rendered html can then be printed nicely.

Goodies included.

## Usage
Page will include label, expiry, login information and a quote.

Run

    ./app_ng.rb vouchers_main_zone_roll16010.csv "24h/24 Stunden" "Aug 2016"

and visit http://localhost:4567 .

## License and Copyright

Licensed under the GPL-3 or any later version.  Find full licenses text in the file `gpl-3.0.txt` or at http://gnu.org (specifically http://www.gnu.org/licenses/licenses.html#GPL) .

Copyright 2016 Felix Wolfsteller
