
set from = 'travis@ideegeo.com'
set folder = "imaps://travis\@ideegeo.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set record = "+[Gmail]/Sent Mail"
set postponed ="+[Gmail]/Drafts"
set trash = "+[Gmail]/Trash"
set smtp_url = "smtps://travis\@ideegeo.com@smtp.gmail.com:465/"
set signature = '~/.mutt/signatures/ideegeo.com'

source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+=[ ideegeo ]================="
mailboxes =INBOX =[Gmail]/All\ Mail =[Gmail]/Important
mailboxes =sysadmins
mailboxes "+____ IWMN Apps ______________"
mailboxes =app/api =app/dashboard =app/js-client
mailboxes =app/base =app/beanbag =app/docker =app/domainsage =app/hase =app/issue-voter
mailboxes =app/blog-skeleton =app/daemonise =app/iwantmyname =app/iwmn-frontend
mailboxes =app/tools =app/nsearch2 =app/hubot =app/search-websockets
mailboxes =app/nodepp =app/epp-reg =app/plenv-perl
mailboxes "+____ Monitoring errors ______"
mailboxes =raygun/new =raygun/recurring =raygun/digest
mailboxes =bugcrowd
mailboxes "+____ Groups _________________"
mailboxes =groups/perl/wellingtonpm =groups/python/wellypug =groups/python/nzpug
mailboxes "+____ Misc ___________________"
mailboxes =idonethis
mailboxes =rescue-time
mailboxes =[Gmail]/Drafts
