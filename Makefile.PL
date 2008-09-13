use 5.003;
use ExtUtils::MakeMaker;

# $Id: Makefile.PL 726 2003-11-02 23:17:38Z cfaerber $
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    'NAME'		=> 'DateTime::Format::SQLite',
    'VERSION_FROM'	=> 'lib/DateTime/Format/SQLite.pm', # finds $VERSION
    'PREREQ_PM'		=> {
		'DateTime' => 0.10,
		'DateTime::Format::Builder' => 0.60,
	},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/DateTime/Format/SQLite.pm', # retrieve abstract from module
       AUTHOR     => 'Claus Faerber <CFAERBER@cpan.org>',
       LICENSE	  => 'perl',
    ) : ()),
);
