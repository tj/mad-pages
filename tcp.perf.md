
# TCP Tuning

  - clients kicked out by backlog take 3s then 9s to retry
  - fd limits in /etc/security/limits.d/
  - tweak ephemeral port range `ip_local_port_range` in in /etc/sysctl.d/
  - tweak `ip_conntrack_tcp_timeout_time_wait` for lower TIME_WAIT state
  - tweak `nf_conntrack_tcp_timeout_established` for lower timeout
  - tweak `tcp_max_syn_backlog`
  - tweak `net.core.somaxconn`
  - ss(1) http://www.cyberciti.biz/files/ss.html