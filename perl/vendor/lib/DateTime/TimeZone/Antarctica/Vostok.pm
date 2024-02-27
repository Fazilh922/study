# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/rnClxBLdxJ/antarctica.  Olson data version 2013a
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Antarctica::Vostok;
{
  $DateTime::TimeZone::Antarctica::Vostok::VERSION = '1.57';
}

use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Antarctica::Vostok::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
61755609600, #      utc_end 1957-12-16 00:00:00 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
61755609600, #    local_end 1957-12-16 00:00:00 (Mon)
0,
0,
'zzz',
    ],
    [
61755609600, #    utc_start 1957-12-16 00:00:00 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
61755631200, #  local_start 1957-12-16 06:00:00 (Mon)
DateTime::TimeZone::INFINITY, #    local_end
21600,
0,
'VOST',
    ],
];

sub olson_version { '2013a' }

sub has_dst_changes { 0 }

sub _max_year { 2023 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

