# rhel-domain-join

domain_join.sh: Run to join an AD or other LDAP domain. Make sure to edit the "username" (domain user) and "Changeme.com" (domain) entries to fit your environment. Also, make sure to run in the same directory as the attached sssd.conf (or modify the script to point to the appropriate location of this file).

sssd.conf: Preconfigured sssd.conf. This will assume you want to have home dirs in their default spot, that you want to authenticate by username only (username) instead of FQDN (username@changeme.com). Make sure to edit the "changeme.com" entries to fit your environment. Note: Make sure the krb5_realm entry is in ALL CAPS.
