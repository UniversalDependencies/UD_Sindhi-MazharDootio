#!/usr/bin/env perl
# Tries to fix validation errors peculiar to the Sindhi treebank.
# Copyright © 2020 Dan Zeman <zeman@ufal.mff.cuni.cz>
# License: GNU GPL

use utf8;
use open ':utf8';
binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');
binmode(STDERR, ':utf8');

while(<>)
{
    # Remove the line break. Even if it is CR LF, we will later add just LF (provided this script is run on Linux).
    s/\r?\n$//;
    # Skip the endian mark on the first line.
    if(m/\x{FEFF}/)
    {
        next;
    }
    # Empty lines between sentences must be really empty. For example, they must not contain 9 TAB characters.
    if(m/^\s*$/)
    {
        $_ = '';
    }
    # Token lines start with numbers.
    if(m/^\d+/)
    {
        my @f = split(/\t/, $_);
        # This has been fixed, do not apply it again:
        if(0)
        {
            # $f[4] should be XPOS but this file seems to have two kinds of XPOS, also in $f[5].
            $f[4] =~ s/\s//g;
            $f[5] =~ s/XPOS\s*=\s*//;
            $f[5] =~ s/\s+/_/g;
            $f[4] .= "_$f[5]";
            splice(@f, 5, 1);
        }
        # This has been fixed, do not apply it again:
        if(0)
        {
            # The features contain extra spaces, get rid of them.
            for(my $i = 5; $i <= $#f; $i++)
            {
                $f[$i] =~ s/\s+//g;
            }
            # The features are spread across multiple columns but they should be all in $f[5].
            # Current $f[5]=Case, $f[6]=Gender, $f[7]=Number, $f[8]=Person, $f[9]=MorphologyForm
            my $feats = join('', @f[5..9]);
            $f[5] = $feats;
            splice(@f, 6, 4);
        }
        # Fix UPOS of punctuation.
        if($f[3] eq 'PERIOD')
        {
            $f[3] = 'PUNCT';
        }
        # Fix features.
        my $feats = $f[5];
        $feats =~ s/\|$//;
        $feats = '' if($feats eq '_');
        my @feats = split(/\|/, $feats);
        @feats = map {s/Case=ACC/Case=Acc/; s/^MorphologyForm/Form/; $_} (@feats);
        @feats = sort {lc($a) cmp lc($b)} (@feats);
        $feats = join('|', @feats);
        $f[5] = $feats ne '' ? $feats : '_';
        # This has been fixed, do not apply it again:
        if(0)
        {
            # Although the LEMMA column contains the lemma, there is 'Lemma=' in $f[6] and a copy of the lemma in $f[7]. But there is no tree.
            $f[6] = 0;
            $f[7] = 'dep';
            # Current $f[8] is 'Pronunciation=' and $f[9] is the value. We will keep the value but name it Translit.
            $f[8] = '_';
            $f[9] = "Translit=$f[9]";
        }
        $_ = join("\t", @f);
    }
    # Re-introduce the line-terminating LF character.
    $_ .= "\n";
    print;
}
