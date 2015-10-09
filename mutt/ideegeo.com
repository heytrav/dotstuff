set mbox_type = Maildir
set from = 'travis@ideegeo.com'
#set folder = "imaps://travis\@ideegeo.com@imap.gmail.com:993"
set folder = "~/Mail/ideegeo"
set spoolfile = "+INBOX"
#set record = "+[Gmail]/Sent Mail"
set record = "+[Gmail].Sent Mail"
#set postponed ="+[Gmail]/Drafts"
set postponed ="+[Gmail].Drafts"
#set trash = "+[Gmail]/Trash"
set trash = "+[Gmail].Trash"
#set smtp_url = "smtps://travis\@ideegeo.com@smtp.gmail.com:465/"
set signature = '~/.mutt/signatures/ideegeo.com'

#source 'gpg -d $HOME/.mutt/passwords/ideegeo.com.gpg |'

mailboxes "+=[ ideegeo ]================="
mailboxes =INBOX =[Gmail]/All\ Mail =[Gmail].Important
mailboxes =sysadmins
mailboxes "+____ IWMN Apps ______________"
mailboxes =app.api =app.dashboard =app.js-client =app.rabbitpy
mailboxes =app.base =app.beanbag =app.docker =app.domainsage =app.hase =app.issue-voter
mailboxes =app.blog-skeleton =app.daemonise =app.iwantmyname =app.iwmn-frontend
mailboxes =app.tools =app.nsearch2 =app.hubot =app.search-websockets =app.ERP
mailboxes =app.nodepp =app.epp-reg =app.plenv-perl
mailboxes "+____ Monitoring _____________"
mailboxes =raygun.new =raygun.error =raygun.error\ recurring =raygun.recurring =raygun.digest
mailboxes =PagerDuty.alert =PagerDuty.resolve 
mailboxes =quayio.build\ queued =quayio.build\ started =quayio.build\ pass =quayio.build\ fail
mailboxes =bugcrowd
mailboxes "+____ Groups _________________"
mailboxes =groups.perl.wellingtonpm =groups.python.wellypug =groups.python.nzpug
mailboxes "+____ Misc ___________________"
mailboxes =PagerDuty.off\ call =PagerDuty.on\ call =idonethis
mailboxes =rescue-time
mailboxes =[Gmail].Drafts
