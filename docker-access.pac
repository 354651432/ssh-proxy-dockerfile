function FindProxyForURL(url, host) {
    if (hoisInNet(dnsResolve(host), "172.17.0.0", "255.255.0.0")) {
        return "SOCKS5 127.0.0.1:1080";
    }
    return "DIRECT";
}
