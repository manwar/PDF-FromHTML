#!/usr/local/bin/perl

use FindBin;
use PDF::FromHTML;
# use lib '/usr/home/autrijus/private/PDF-Template/lib';
# use lib "$FindBin::Bin/../lib";

=head1 NAME

html2pdf.pl - Turn HTML to PDF

=head1 SYNOPSIS

    % html2pdf.pl source.html > target.pdf

=cut

my $pdf = PDF::FromHTML->new( encoding => 'utf-8' );

$pdf->load_file(shift || '-');
$pdf->convert;
$pdf->write_file(shift || '-');

1;

__END__

=head1 AUTHORS

Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>

=head1 COPYRIGHT

Copyright 2004 by Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut