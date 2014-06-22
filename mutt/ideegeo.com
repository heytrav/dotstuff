
set from = 'travis@ideegeo.com'
set folder = "imaps://travis\@ideegeo.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set record = "+[Gmail]/Sent Mail"
set postponed ="+[Gmail]/Drafts"
set trash = "+[Gmail]/Trash"
set smtp_url = "smtp://travis\@ideegeo.com@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/ideegeo.com'

source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+== ideegeo =================="
mailboxes =INBOX =[Gmail]/Important =[Gmail]/Drafts
mailboxes "+____ apps ___________________" =app/base =app/domainsage =app/hase =app/issue_voter =app/iwantmyname =app/iwmn_frontend =app/tools =app/nsearch2
mailboxes "+____ groups _________________" =groups/perl/wellingtonpm =groups/python/wellypug =groups/python/nzpug
#mailboxes "+____ misc ___________________" =idonethis =hipchat
