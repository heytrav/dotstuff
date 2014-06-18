
set from = 'travis@ideegeo.com'
set folder = "imaps://travis\@ideegeo.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Gmail]/Drafts"
set trash = "+[Gmail]/Trash"
set smtp_url = "smtp://travis\@ideegeo.com@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/ideegeo.com'

source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+== ideegeo ==========="
mailboxes =INBOX =[Gmail]/Drafts
mailboxes "+---- apps ------------" =app/base =app/domainsage =app/hase =app/issue-voter =app/iwantmyname =app/iwmn-frontend =app/tools =app/nsearch2
mailboxes "+---- groups ----------" =groups/perl/wellingtonpm =groups/python/wellypug =groups/python/nzpug
mailboxes "+---- misc ------------" =idonethis =hipchat
