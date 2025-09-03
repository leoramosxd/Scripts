param($ip)
if(!$ip){
    echo " PORT SCANNER "
    echo ".\portscan.ps1 192.168.0.1"
} else {
foreach ($porta in 1..1024){
if(Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
    echo "Porta Aberta"
}else{
    echo "Porta Fechada"
}
}
}