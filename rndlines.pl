#!/usr/bin/perl
my $bufsize = shift;
my @list = ();

srand();
while (<>)
{
    push(@list, $_), next if (@list < $bufsize);
    $list[ rand(@list) ] = $_ if (rand($. / $bufsize) < 1);
}
print foreach @list;
