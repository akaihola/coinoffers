Coinoffers
==========

This web app provides a combined order book
for multiple bitcoin exchanges.

The criteria for inclusion of exchanges are:

* provides an order book for sell offers
* price is locked when sell offer is matched
* buyer pays the seller directly using a SEPA transfer
* seller sends bitcoins after receiving the SEPA transfer

All fees are calculated in the price
as well as in the minimum and maximum order amounts.

This code is running live at http://coinoffers.eu/


Installation
------------

To run the web app on your own server, do the following:

* clone the repository or download and extract it as a `ZIP file`_
* `install CoffeeScript`_
* install the lxml_ and Requests_ packages for Python
* compile the CoffeeScript file:

      coffee -c static/js/coinoffers.coffee

* in the project root directory, generate the current combined order book:

      python coinoffers.py >latest-orderbooks.json

* serve the project root directory with your favorite web server

.. _`ZIP file`: https://github.com/akaihola/coinoffers/archive/master.zip
.. _`install CoffeeScript`: http://coffeescript.org/#installation
.. _lxml: http://lxml.de/installation.html
.. _Requests: http://docs.python-requests.org/en/latest/user/install/#install
