
set from = 'wtholton@gmail.com'
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Google Mail]/Drafts"
set trash = "+[Google Mail]/Trash"
set smtp_url = "smtp://wtholton@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/gmail.com'
source 'gpg -d $HOME/.mutt/passwords/gmail.com.gpg |'


mailboxes "+-- Gmail -----------" =INBOX =family/oregon =family/texas =tech/python =tech/iwmn =tech/github =tech/cpan =groups/perl/catalyst =groups/perl/dbix   ~/sent ~/postponed
