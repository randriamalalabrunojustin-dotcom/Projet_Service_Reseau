$TTL 86400

@   IN  SOA ns.l2eni.mg. admin.l2eni.mg. (
        2026083101
        3600
        1800
        604800
        86400
)

@           IN  NS      ns.l2eni.mg.

ns          IN  A       192.168.56.10
@           IN  A       192.168.56.10

appli       IN  A       192.168.56.10
webmail     IN  A       192.168.56.10
monitoring  IN  A       192.168.56.10
mail        IN  A       192.168.56.10
ldap        IN  A       192.168.56.10

@           IN  MX 10   mail.l2eni.mg.
