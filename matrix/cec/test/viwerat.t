#!/usr/bin/perl

# Here is a Perl script `viwerat.t` that acts as a 
# simple text viewer/editor inspired by the collaborative 
# editor "Gobby." This script uses basic terminal 
# input/output to load, display, and save a file, 
# serving as a minimal text editor foundation:

# ```perl
#!/usr/bin/perl
use strict;
use warnings;

# viwerat.t - Simple terminal text viewer/editor inspired by Gobby

my $filename = shift || 'example.txt';
my @lines;

# Load file if exists
if (-e $filename) {
    open my $fh, '<', $filename or die "Cannot open $filename: $!";
    @lines = <$fh>;
    close $fh;
} else {
    @lines = ("# New File: $filename\n");
}

my $pos = 0;

# Setup terminal for raw mode
ReadMode('raw');

print "Simple Viwerat Text Editor - Editing $filename\n";
print "Press Ctrl+S to save, Ctrl+Q to quit\n\n";

while (1) {
    print_screen();

    my $key = ReadKey(0);
    if (ord($key) == 17) { # Ctrl+Q to quit
        print "Exiting...\n";
        last;
    } elsif (ord($key) == 19) { # Ctrl+S to save
        save_file();
        print "File saved.\n";
    } elsif ($key eq "\n") {
        splice @lines, $pos+1, 0, "\n";
        $pos++;
    } elsif (ord($key) == 127 || ord($key) == 8) { # Backspace
        if ($pos > 0) {
            splice @lines, $pos-1, 1;
            $pos--;
        }
    } else {
        # Insert character
        my $char = $key;
        $lines[$pos] =~ s/\n$//;
        substr($lines[$pos], length($lines[$pos]), 0) = $char;
        $lines[$pos] .= "\n";
    }
}

ReadMode('normal');

sub print_screen {
    system('clear');
    for my $i (0 .. $#lines) {
        if ($i == $pos) {
            print "> $lines[$i]";
        } else {
            print "  $lines[$i]";
        }
    }
}

sub save_file {
    open my $fh, '>', $filename or die "Cannot write to $filename: $!";
    print $fh @lines;
    close $fh;
}
# ```

# ### How to use:
# - Save as `viwerat.t`
# - Make executable: `chmod +x viwerat.t`
# - Run: `./viwerat.t yourfile.txt`
# - Basic editing: insert characters, new lines, backspace
# - Ctrl+S to save, Ctrl+Q to quit
# - Shows the current line with ">" marker

# This script offers a basic starting point for a terminal-based text editor in Perl inspired by concepts like Gobby's collaborative text editing but simplified for single-user offline use.

# For true collaboration, networking, and rich UI features, integration with libraries or frameworks and a client-server architecture is needed, as Gobby does in C++ with GTK+.[1][2][3]

# [1](https://www.linuxlinks.com/Gobby/)
# [2](https://ualinux.com/en/ubuntu-apps-office/gobby)
# [3](https://github.com/gobby/gobby)
# [4](https://gobby.github.io)
# [5](https://en.wikipedia.org/wiki/Gobby)
# [6](https://texteditors.org/cgi-bin/wiki.pl?Gobby)
# [7](https://sugggest.com/software/gobby)
# [8](https://manpages.ubuntu.com/manpages/resolute/man1/gobby.1.html)
# [9](https://connectwww.com/gobby-realtime-collaborative-text-file-editor/65265/)
