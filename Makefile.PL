# $Id: Makefile.PL 4068 2008-09-20 18:41:28Z cfaerber $

use 5.003;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'DateTime::Format::SQLite',
    'VERSION_FROM'	=> 'lib/DateTime/Format/SQLite.pm', # finds $VERSION
    'PREREQ_PM'		=> {
	'DateTime' => 0.10,
	'DateTime::Format::Builder' => 0.60,
    },

    $] < 5.005 ? () : (
	'ABSTRACT_FROM'	=> 'lib/DateTime/Format/SQLite.pm', # retrieve abstract from module
	'AUTHOR'	=> 'Claus Faerber <CFAERBER@cpan.org>',
	'LICENSE'	=> 'perl',
    ),

    $ExtUtils::MakeMaker::VERSION < 6.18 ? () : (
	'SIGN'		=> 1,
    ),

    $ExtUtils::MakeMaker::VERSION < 6.45 ? () : (
	'META_MERGE'	=> { 
	    'requires'	    => { 'perl'	=> 5.003, },
#	    'recommends'    => { 'perl'	=> 5.008003, },
        },
    ),
);
