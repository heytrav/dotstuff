
set from = 'wtholton@gmail.com'
set folder = "imaps://wtholton\@gmail.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Google Mail]/Drafts"
set trash = "+[Google Mail]/Bin"
set smtp_url = "smtp://wtholton@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/gmail.com'
source 'gpg -d $HOME/.mutt/passwords/gmail.com.gpg |'


mailboxes "+== Gmail ===========" =INBOX
mailboxes "+---- Personal --------" =Friends  =family/oregon =family/texas
mailboxes "+---- Tech ----------" =tech/python =tech/iwmn =tech/github =tech/cpan =groups/perl/catalyst
mailboxes =groups/perl/dbix 
mailboxes "+---- Finances ------" =invoice  =finances  
