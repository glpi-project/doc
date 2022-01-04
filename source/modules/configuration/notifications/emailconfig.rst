Email followups configuration
=============================

Parameters
----------

- **Administrator email**: e-mail address of the general administrator of GLPI. This address is used when the **Administrator** is selected as the recipient of a notification. notification. It is also this address that will send out notifications from GLPI.
- **Administrator name**: name associated with the administrator's email.
- **From email**: Address to use in from for sent emails. If not set, main or entity administrator email will be used.
- **From name**: Name to use in from for sent emails. If not set, main or entity administrator name will be used.
- **Reply-to address**: Optionnal reply to address. If not set, main administrator email will be used.
- **Reply-to name**: Optionnal reply to name. If not set, main administrator name will be used.
- **No-Reply address**: Optionnal No-Reply address. If set, it will be used for notifications that doesn't expect a reply.
- **No-Reply name**: Optionnal No-Reply name. If not set, main administrator name will be used.
- **Add documents into ticket notifications**: allows you to add URLs to documents attached to a ticket in the notifications.
- **Email signature**: text added at the end of each email.
- **Way of sending emails**:
   - **PHP**: sending is handled by the PHP mail() function. This function is often blocked by hosting companies
   - **SMTP**: sending using the SMTP protocol
   - **SMTP + SSL**: sending using the SMTP protocol, encapsulated in an SSL tunnel
   - **SMTP + TLS**: sending emails more securely than SMTP + SSL
- **Max. delivery retries**: number of sending attempts before being considered as failed.
- **Try to deliver again in (minutes)**: minutes between two attempts.


Mail server
~~~~~~~~~~~

These settings must match those of the mail server.

- **Check certificate**: to check the validity of the certificate.
- **SMTP host**: SMTP server address.
- **Port**: port allowed by SMTP server.
- **SMTP login (optional)**: dedicated user login if authentication is required.
- **SMTP password (optional)**: dedicated user password if authentication is required.
- **Email sender**: May be required for some mails providers. If not set, main administrator email will be used.