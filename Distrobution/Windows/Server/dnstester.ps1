$dnsServer = "schenkdc2.schenkhn.local"
try {
    Resolve-DnsName -Name $dnsServer -ErrorAction Stop
    Write-Host "DNS service is functioning on $dnsServer."
} catch {
    Write-Host "DNS service is not functioning on $dnsServer. Error: $_"
}

try {
    Test-DnsServer -IPAddress 127.0.0.1
    Write-Host "DNS service is functioning on $dnsServer."
} catch {
    Write-Host "DNS service is not functioning on $dnsServer. Error: $_"
}