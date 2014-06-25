
set from = 'wtholton@gmail.com'
alternates  "(wtholton@gmail\.com)|(heytrav@cpan\.org)"
set folder = "imaps://wtholton\@gmail.com@imap.gmail.com:993"
set use_from
set spoolfile = "+INBOX"
set postponed ="+[Google Mail]/Drafts"
set record = "+[Google Mail]/Sent Mail"
set trash = "+[Google Mail]/Bin"
set smtp_url = "smtp://wtholton@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/gmail.com'
source 'gpg -d $HOME/.mutt/passwords/gmail.com.gpg |'

mailboxes "+=[ Gmail ]===================" =INBOX  =[Gmail]/All\ Mail =[Google\ Mail]/Important
mailboxes "+____ Personal _______________" =Friends  =family/oregon =family/texas
mailboxes "+____ Tech ___________________" =tech/python  =tech/github =tech/cpan =groups/perl/catalyst =groups/perl/dbix
mailboxes "+____ Finances _______________" =invoice  =finances 
mailboxes "+____ misc ___________________" =[Google\ Mail]/Drafts


macro index \e1 ":set from=wtholton@gmail.com\n:set status_format=\"-%r-wtholton@gmail.com: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\"\n:set signature = \"~/.mutt/signatures/gmail.com\"\n:set sort = \"reverse-threads\" \n:set sort_alias = \"alias\"\n:set sort_aux = \"last-date-received\"\n" "Switch to wtholton@gmail.com"
macro index \e2 ":set from=heytrav@cpan.org\n:set status_format=\"-%r-heytrav@cpan.org: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\"\n:set signature = \"~/.mutt/signatures/cpan.org\"\n:set sort = \"reverse-threads\"\n:set sort_alias = \"alias\"\n:set sort_aux = \"last-date-received\"\n" "Switch to heytrav@cpan.org"

folder-hook =INBOX 'push \e1'
folder-hook =Friends 'push \e1'
folder-hook =family/oregon 'push \e1'
folder-hook =family/texas 'push \e1'
folder-hook =tech/cpan 'push \e2'
folder-hook =groups/perl/catalyst 'push \e2'
folder-hook =groups/perl/dbix 'push \e2'
