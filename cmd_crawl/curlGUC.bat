::http://stackoverflow.com/questions/15697157/using-curl-with-ntlm-auth-to-make-a-post-is-failing

@echo off
curl -v --ntlm --negotiate -u mohab.ayman:PASSWORD_HERE http://student.guc.edu.eg/intranet/ > curl_intranet.html
