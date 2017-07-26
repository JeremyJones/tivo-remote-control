use warnings;
use strict;
use Net::Telnet ();
use Term::ReadKey;

my $TIVO_ADDRESS = $ENV{TIVO_IP} or die "Please set TIVO_IP e.g. `export TIVO_IP='192.168.1.123'`\n";

my $t = Net::Telnet->new();
$t->open(Host=>$TIVO_ADDRESS, Port=>$ENV{TIVO_PORT}||31339);

my $CLEAR = `clear`;
print $CLEAR;
ReadMode(3);

while (1)
{
    my $key = ReadKey(1) or next;; 
    $key eq 'q' and last;
    $key eq ' ' and $t->print("IRCODE PAUSE");
    $key =~ /^\d$/ and $t->print("IRCODE NUM$key");
    $key eq 'o' and $t->print("IRCODE SELECT");
    $key eq "\n" and $t->print("IRCODE SELECT");
    $key eq "x" and $t->print("IRCODE CLEAR");
    $key eq "l" and $t->print("TELEPORT LIVETV");
    $key eq "v" and $t->print("TELEPORT TIVO");
    $key eq "w" and $t->print("IRCODE DISPLAY");
    $key eq "g" and $t->print("TELEPORT GUIDE");
    $key =~ m!^[?/]$! and $t->print("IRCODE SUBTITLE");
    $key =~ /^[=+]$/ and $t->print("IRCODE UP");
    $key =~ /^[-_]$/ and $t->print("IRCODE DOWN");
    $key =~ /^[,<]$/ and $t->print("IRCODE LEFT");
    $key =~ /^[.>]$/ and $t->print("IRCODE RIGHT");
    $key =~ /^[ns]$/i and $t->print("TELEPORT NOWPLAYING");
}
