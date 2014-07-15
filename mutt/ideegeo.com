
set from = 'travis@ideegeo.com'
set folder = "imaps://travis\@ideegeo.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set record = "+[Gmail]/Sent Mail"
set postponed ="+[Gmail]/Drafts"
set trash = "+[Gmail]/Trash"
set smtp_url = "smtp://travis\@ideegeo.com@smtp.gmail.com:587/"
set signature = '~/.mutt/signatures/ideegeo.com'

source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+=[ ideegeo ]================="
mailboxes =INBOX =[Gmail]/All\ Mail =[Gmail]/Important
mailboxes "+____ IWMN Apps ______________"
mailboxes =app/base =app/docker =app/domainsage =app/hase =app/issue-voter
mailboxes =app/blog-skeleton =app/daemonise =app/iwantmyname =app/iwmn-frontend
mailboxes =app/tools =app/nsearch2 =app/hubot =app/search-websockets
mailboxes "+____ Monitoring errors ______"
mailboxes =raygun/new =raygun/recurring =raygun/digest
mailboxes "+____ Groups _________________"
mailboxes =groups/perl/wellingtonpm =groups/python/wellypug =groups/python/nzpug
mailboxes "+____ Misc ___________________"
mailboxes =[Gmail]/Drafts
