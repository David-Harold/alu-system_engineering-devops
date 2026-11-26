# Load balancer

Adds redundancy to the web stack: two nginx web servers behind an HAProxy load balancer.

| File | Description |
|---|---|
| `0-custom_http_response_header` | Configures nginx on a new Ubuntu server, with an `X-Served-By` response header set to the server's hostname |
| `1-install_load_balancer` | Installs HAProxy on lb-01 and distributes traffic to web-01 and web-02 using roundrobin |
