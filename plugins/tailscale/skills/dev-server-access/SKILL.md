# Tailscale Dev Server Access

Configure a local dev server for access from Tailscale-connected devices.

## Prerequisites

- Devices on same Tailscale tailnet
- MagicDNS enabled (default for tailnets after 2022-10-20)

## Steps

### 1. Get Tailscale Info

```bash
tailscale status
tailscale status --self --json | jq '.Self.DNSName, .TailscaleIPs[0]'
```

### 2. Bind Server to 0.0.0.0

**Deno/Fresh:**
```typescript
await server.listen({ hostname: "0.0.0.0", port: 8000 });
```

**Node/Vite/Next:**
```bash
vite --host 0.0.0.0
next dev -H 0.0.0.0
```

### 3. Access URLs

| Method | Format |
|--------|--------|
| MagicDNS | `http://<machine-name>:<port>/` |
| FQDN | `http://<name>.<tailnet>.ts.net:<port>/` |
| IP | `http://<tailscale-ip>:<port>/` |

## Troubleshooting

| Issue | Fix |
|-------|-----|
| Connection refused | Bind to `0.0.0.0`, not `127.0.0.1` |
| Port in use | `lsof -i :<port>` → `kill <pid>` |
| Can't resolve name | Enable MagicDNS in admin console |
| Device offline | Activate Tailscale VPN on target |

## Notes

- Traffic stays within tailnet (not public)
- Target device must have Tailscale VPN active
