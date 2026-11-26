# Web stack debugging #4

| File | Description |
|---|---|
| `0-the_sky_is_the_limit_not.pp` | Puppet manifest that raises nginx's file-descriptor limit in `/etc/default/nginx` from 15 to 4096 and restarts nginx, bringing failed requests under load to 0 |
