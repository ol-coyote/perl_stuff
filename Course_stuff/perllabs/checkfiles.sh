#
#  This script checks syntax for
#  all Perl Lab files
#
#  July 2016  ajb

perl -c examples/1/foreachloop
perl -c examples/1/forloop
perl -c examples/1/getname
perl -c examples/1/getname2
perl -c examples/1/last
perl -c examples/1/modifiers
perl -c examples/1/multiway
perl -c examples/1/next
perl -c examples/1/numbers
perl -c examples/1/oneway
perl -c examples/1/readfile
perl -c examples/1/redo
perl -c examples/1/twoway
perl -c examples/1/undef
perl -c examples/1/untilloop
perl -c examples/1/welcome
perl -c examples/1/whileloop

perl -c examples/2/calc
perl -c examples/2/careful
perl -c examples/2/evaltest
perl -c examples/2/mixed
perl -c examples/2/relational
perl -c examples/2/stringops
perl -c examples/2/substrings

perl -c examples/3/appendto
perl -c examples/3/fileops
perl -c examples/3/herestring
perl -c examples/3/openerror
perl -c examples/3/quotes
perl -c examples/3/readfile
perl -c examples/3/seek
perl -c examples/3/showprint
perl -c examples/3/showprintf
perl -c examples/3/showsprintf
perl -c examples/3/writefile

perl -c examples/4/arginfo
perl -c examples/4/mycat
perl -c examples/4/queue
perl -c examples/4/reverse
perl -c examples/4/sorted
perl -c examples/4/splicer

perl -c examples/5/banking
perl -c examples/5/banking2
perl -c examples/5/lookup

perl -c examples/6/autoloadtest
perl -c examples/6/Banking.pm
perl -c examples/6/beginning
perl -c examples/6/bigger
perl -c examples/6/ending
perl -c examples/6/extremes
perl -c examples/6/factorial
perl -c examples/6/factorial2
perl -c examples/6/functions.pl
perl -c examples/6/functionstest
perl -c examples/6/numsort
perl -c examples/6/simplesub
perl -c examples/6/simplesub2
perl -c examples/6/sortvals
perl -c examples/6/stdfuncs
perl -c examples/6/subs1
perl -c examples/6/subs2
perl -c -Iexamples/6 examples/6/transactions
perl -c -Iexamples/6 examples/6/transactions2
#  Need Roman module from CPAN
#  perl -c examples/6/testroman.pl   

perl -c examples/7/changecase
perl -c examples/7/delete
perl -c examples/7/integer
perl -c examples/7/match1
perl -c examples/7/match2
perl -c examples/7/match3
perl -c examples/7/match4
perl -c examples/7/names
perl -c examples/7/squeeze
perl -c examples/7/subs1
perl -c examples/7/subs2
perl -c examples/7/summ
perl -c examples/7/words

perl -c examples/8/chmodtextfiles
perl -c examples/8/copyfiles
perl -c examples/8/forkexec
perl -c examples/8/pipefromtr
perl -c examples/8/pipetowc
perl -c examples/8/signals
perl -c examples/8/testfork
perl -c examples/8/utime

perl -c examples/9/anon
perl -c examples/9/arrayref
perl -c examples/9/arrays
perl -c examples/9/compute
perl -c examples/9/hashes
perl -c examples/9/lengths

#  Need DBI Module 
# perl -c examples/10/connect.pl
# perl -c examples/10/create.pl
# perl -c examples/10/insert.pl
# perl -c examples/10/load.pl
# perl -c examples/10/metadata.pl
# perl -c examples/10/query.pl
# perl -c examples/10/interactive.pl

perl -c examples/dist/Distance.pm
perl -c -Iexamples/dist examples/dist/test-distance.pl

perl -c examples/A/xoption

perl -c examples/B/expression
perl -c examples/B/nameswap
perl -c examples/B/sum

perl -c project/irwins_blackjack
perl -c project/original_black

perl -c solutions/1/1-1.pl
perl -c solutions/1/1-2.pl
perl -c solutions/1/1-3.pl
perl -c solutions/1/1-4.pl
perl -c solutions/1/1-5.pl
perl -c solutions/1/1-6.pl
perl -c solutions/1/1-7.pl
perl -c solutions/1/1-8.pl
perl -c solutions/1/1-9.pl
perl -c solutions/1/1-10.pl
perl -c solutions/1/1-11.pl
perl -c solutions/1/1-12.pl
perl -c solutions/1/1-13.pl
perl -c solutions/1/1-14.pl
perl -c solutions/1/1-15.pl
perl -c solutions/1/1-16.pl
perl -c solutions/1/1-17.pl
perl -c solutions/1/1-18.pl
perl -c solutions/1/1-19.pl
perl -c solutions/1/1-20.pl
perl -c solutions/1/1-21.pl
perl -c solutions/1/1-22.pl
perl -c solutions/1/1-23.pl
perl -c solutions/1/1-24.pl
perl -c solutions/1/1-25.pl
perl -c solutions/1/1-26.pl
perl -c solutions/1/1-27.pl
perl -c solutions/1/1-28.pl

perl -c solutions/2/2-1.pl
perl -c solutions/2/2-2.pl
perl -c solutions/2/2-3.pl
perl -c solutions/2/2-4.pl
perl -c solutions/2/2-5.pl
perl -c solutions/2/2-6.pl
perl -c solutions/2/2-7.pl
perl -c solutions/2/2-8.pl
perl -c solutions/2/2-9.pl
perl -c solutions/2/2-10.pl
perl -c solutions/2/2-11.pl
perl -c solutions/2/2-12.pl
perl -c solutions/2/2-13.pl

perl -c solutions/3/3-1.pl
perl -c solutions/3/3-2.pl
perl -c solutions/3/3-3.pl
perl -c solutions/3/3-4.pl
perl -c solutions/3/3-5.pl
perl -c solutions/3/3-6.pl
perl -c solutions/3/3-7.pl
perl -c solutions/3/3-8.pl
perl -c solutions/3/3-9.pl
perl -c solutions/3/3-10.pl

perl -c solutions/4/4-2.pl
perl -c solutions/4/4-3.pl
perl -c solutions/4/4-4.pl
perl -c solutions/4/4-5.pl
perl -c solutions/4/4-6.pl
perl -c solutions/4/4-7.pl
perl -c solutions/4/4-8.pl
perl -c solutions/4/4-9.pl
perl -c solutions/4/4-10.pl
perl -c solutions/4/4-11.pl
perl -c solutions/4/4-12.pl
perl -c solutions/4/4-13.pl

perl -c solutions/5/5-1.pl
perl -c solutions/5/5-2.pl
perl -c solutions/5/5-3.pl
perl -c solutions/5/5-4.pl
perl -c solutions/5/5-5.pl
perl -c solutions/5/5-6.pl
perl -c solutions/5/5-7.pl
perl -c solutions/5/5-8.pl
perl -c solutions/5/5-9.pl
perl -c solutions/5/5-10.pl
perl -c solutions/5/5-11.pl

perl -c solutions/6/6-1.pl
perl -c solutions/6/6-2.pl
perl -c solutions/6/6-2-subs.pl
perl -c solutions/6/6-3.pl
perl -c solutions/6/6-3-subs.pl
perl -c -Isolutions/6 solutions/6/6-4.pl
perl -c solutions/6/6-5.pl
perl -c solutions/6/6-6.pl
perl -c solutions/6/Banking.pm
perl -c solutions/6/6-7.pl
perl -c solutions/6/6-8.pl
perl -c solutions/6/6-9.pl
perl -c solutions/6/6-10.pl
perl -c solutions/6/6-11.pl
perl -c solutions/6/6-12.pl
perl -c solutions/6/6-13.pl

perl -c solutions/7/7-2.pl
perl -c solutions/7/7-3.pl
perl -c solutions/7/7-4.pl
perl -c solutions/7/7-5.pl
perl -c solutions/7/7-6.pl
perl -c solutions/7/7-7.pl
perl -c solutions/7/7-8.pl
perl -c solutions/7/7-9.pl
perl -c solutions/7/7-10.pl

perl -c solutions/8/8-1.pl
perl -c solutions/8/8-2.pl
perl -c solutions/8/8-3.pl
perl -c solutions/8/8-4.pl
perl -c solutions/8/8-5.pl
perl -c solutions/8/8-6.pl
perl -c solutions/8/8-7.pl
perl -c solutions/8/8-8.pl
perl -c solutions/8/8-9.pl
perl -c solutions/8/8-10.pl
perl -c solutions/8/8-11.pl
perl -c solutions/8/8-12.pl
perl -c solutions/8/8-13.pl
perl -c solutions/8/8-14.pl
perl -c solutions/8/8-15.pl

perl -c solutions/9/9-1.pl
perl -c solutions/9/9-2.pl
perl -c solutions/9/9-3.pl
perl -c solutions/9/9-4.pl
perl -c solutions/9/9-5.pl

#  Need DBI Module
# perl -c solutions/10/10-1.pl
# perl -c solutions/10/10-2.pl
# perl -c solutions/10/10-3.pl


