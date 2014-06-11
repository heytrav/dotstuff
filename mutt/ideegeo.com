
set from = 'travis@ideegeo.com'
set folder = "imaps://imap.googlemail.com:993"
set spoolfile = "+INBOX"
set postponed ="+[Google Mail]/Drafts"
set trash = "+[Google Mail]/Trash"
set smtp_url = "smtp://smtp.googlemail.com:587/"
set signature = '~/.mutt/signatures/ideegeo.com'

source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+-- ideegeo -----------"
mailboxes =INBOX =app/base =app/domainsage =app/hase =app/issue-voter =app/iwantmyname =app/iwmn-frontend =app/tools =app/nsearch2 =groups/perl/wellingtonpm =groups/python/wellypug =groups/python/nzpug =idonethis =hipchat ~/sent ~/postponed
