# tivo-remote-control
Control your Tivo remotely using this simple Perl script. Using this script, your Tivo will tend to respond more quickly than it does when you're using the regular remote.

To install:

* Ensure you have Net::Telnet installed (e.g. `sudo cpan install Net::Telnet`)
* Ensure your Tivo is network-enabled (e.g. Tivo settings, network)
* Get your Tivo's IP address, e.g. from your router's admin page, or the Tivo network page
* Set your Tivo IP address as an environment variable `export TIVO_IP="192.168.1.123"`
* Run `perl tivo.pl`

To use:

* Use space bar to pause
* Number keys to enter numbers
* + and - to go up and down
* < and > to go left and right
* Enter key to select
* ? for subtitles
* l for live tv
* v for tivo
* n for now playing / my shows
* s for now playing / my shows
* x for clear

To exit:

* q to quit

After you quit, your terminal may not echo what you type correctly. If
this happens, type 'reset' and press Enter (even if you can't see what
you're typing) in order to return your terminal to its usual state.
