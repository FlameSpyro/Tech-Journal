param ($network, $server)
for ($i = 0; $i -le 256; $i++) 
{
    $ip = ($network + "." + $i)
    $hostname = (Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore)
    if ($hostname -ne $null) 
    {
        Write-Host $ip $hostname.NameHost
    }
}
