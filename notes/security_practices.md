# Security Practices

## GitHub Account Hardening — May 2, 2026

- Removed exposed personal access token immediately
- Switched from HTTPS token auth to SSH key pair (ed25519)
- Enabled two-factor authentication via authenticator app
- Verified no unauthorized sessions or SSH keys present

## Lesson Learned
Never paste credentials into chat windows, email, or Slack.
Tokens, SSH private keys, passwords, and AWS access keys
must never appear in plain text in any communication channel.
Revoke immediately if exposed. SSH keys don't expire — tokens do.
