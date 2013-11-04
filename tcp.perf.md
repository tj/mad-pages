
# TCP Tuning

  - clients kicked out by backlog take 3s then 9s to retry
  - fd limits in /etc/security/limits.d/
  - increase congestion window for SSL
  - tweak ephemeral port range `ip_local_port_range` in in /etc/sysctl.d/
  - tweak `tcp_fin_timeout` (10 etc)
  - tweak `tcp_keepalive_time` 
  - tweak `ip_conntrack_tcp_timeout_time_wait` for lower TIME_WAIT state
  - tweak `nf_conntrack_tcp_timeout_established` for lower timeout
  - tweak `tcp_max_syn_backlog` max of 65535, tweak at application level as well
  - tweak `net.core.somaxconn`
  - ss(1) http://www.cyberciti.biz/files/ss.html
  - PRR Proportional Rate Reduction `tcp_no_metrics_save`
  - SYN flood / SYN cookies