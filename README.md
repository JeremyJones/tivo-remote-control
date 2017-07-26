# tivo-remote-control
Control your Tivo remotely using this simple Perl script

To use it:

Ensure you have Net::Telnet installed (e.g. `sudo cpan install Net::Telnet`)
Ensure your Tivo is network-enabled (e.g. Tivo settings, network)
Get your Tivo's IP address, e.g. from your router's admin page, or the Tivo network page
Set your Tivo IP address as an environment variable `export TIVO=IP="192.168.1.123"`
Run `perl tivo.pl`


Use space bar to pause
Number keys to enter numbers
Enter key to select
l for live tv
v for tivo
n for now playing / my shows
s for now playing / my shows
x for clear

q to quit



