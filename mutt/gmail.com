
set from = 'wtholton@gmail.com'
set folder = "imaps://wtholton\@gmail.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Google Mail]/Drafts"
set record = "+[Google Mail]/Sent Mail"
set trash = "+[Google Mail]/Bin"
set smtp_url = "smtp://wtholton@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/gmail.com'
source 'gpg -d $HOME/.mutt/passwords/gmail.com.gpg |'

mailboxes "+== Gmail ====================" =INBOX =[Google\ Mail]/Drafts =[Google\ Mail]/Important
mailboxes "+____ Personal _______________" =Friends  =family/oregon =family/texas
mailboxes "+____ Tech ___________________" =tech/python =tech/iwmn =tech/github =tech/cpan =groups/perl/catalyst =groups/perl/dbix
mailboxes "+____ Finances _______________" =invoice  =finances
