# Ctlos ipfs fission

## Install

```bash
# https://github.com/fission-suite/fission/releases

## up version!!!
curl -LO https://github.com/fission-suite/fission/releases/download/2.17.0/fission-cli-ubuntu-20.04-x86_64
chmod a+x ./fission-cli-ubuntu-20.04-x86_64
sudo mv fission-cli-ubuntu-20.04-x86_64 /usr/local/bin/fission
```

## links

- [auth fission](https://auth.fission.codes/)
- [dashboard fission](https://dashboard.fission.codes)
- [fission cli](https://guide.fission.codes/developers/cli/working-with-apps)
- [cloudflare-ipfs](https://guide.fission.codes/developers/custom-domains/using-cloudflare-ipfs-gateway)

## work

```bash
# edit custom url fission.yaml
fission register
fission publish
```

## info dns

```bash
dig -t txt short _dnslink.ipfs.ctlos.ru
dig -t txt short _dnslink.ctlos-ipfs.fission.app
```
