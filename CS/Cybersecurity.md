# Cybersecurity

## Key Security Concepts & Terminologies

| Term                              | Definition                                                                |
| --------------------------------- | ------------------------------------------------------------------------- |
| Encryption                        | Converting data to a coded format only authorized users can read          |
| Authentication                    | Verifying a user’s identity (e.g., password, biometrics)                  |
| Authorization                     | Granting access rights to authenticated users                             |
| Firewall                          | Hardware or software that filters traffic to block unauthorized access    |
| Antivirus/Anti-malware            | Scans and blocks malicious software                                       |
| Patch Management                  | Regular updates to fix security vulnerabilities                           |
| Multi-Factor Authentication (MFA) | Using more than one method to verify identity (e.g., password + SMS code) |
| VPN (Virtual Private Network)     | Encrypts your internet traffic and hides your IP                          |
| Intrusion Detection System (IDS)  | Monitors for and alerts about suspicious activity                         |
| Hashing                           | One-way function to verify data integrity (e.g., hashed passwords)        |
| Public/Private Key Cryptography   | Asymmetric encryption system for secure communication                     |
| Serialization                    | Converting data structures into a format for storage or transmission   (in binary format / )    |

## Common Cybersecurity Risks

| Risk Type               | Definition                                                                | Example                                              |
| ----------------------- | ------------------------------------------------------------------------- | ---------------------------------------------------- |
| Phishing                | Trick users into revealing info (credentials, etc.) via fake emails/sites | Email asking to "reset your password" on a fake site |
| Spear Phishing          | Targeted phishing toward a specific person or company                     | Personalized email pretending to be from your boss   |
| Ransomware              | Malware that encrypts data and demands payment to restore it              | WannaCry, REvil attacks                              |
| Malware                 | Any malicious software (viruses, worms, trojans, etc.)                    | Keyloggers, screen recorders                         |
| Social Engineering      | Exploiting human behavior to gain system access                           | Pretending to be IT support to get passwords         |
| Man-in-the-Middle       | Intercepting communication between two parties                            | Intercepting login data on public Wi-Fi              |
| Denial of Service (DoS) | Overloading systems to crash or slow them                                 | Bot sending 1,000,000+ requests to your server       |
| SQL Injection           | Inserting malicious SQL in user input fields to access or damage data     | Typing OR 1=1 into a login form                      |
| Zero-Day Exploits       | Attacks on unknown, unpatched software vulnerabilities                    | Exploiting a new browser flaw before it’s patched    |
| Insider Threats         | Employees with access misusing it maliciously or carelessly               | Admin stealing data or leaving a backdoor            |
| Credential Stuffing     | Using leaked passwords across multiple sites                              | Reusing the same login info from a past breach       |

## Prevention & Mitigation Methods

| Method                            | Purpose                                             |
| --------------------------------- | --------------------------------------------------- |
| Regular Security Audits           | Review systems for vulnerabilities                  |
| User Training                     | Reduce human error (phishing, weak passwords, etc.) |
| Access Controls (RBAC)            | Limit access based on role                          |
| Encryption (in transit & at rest) | Protect data in emails, servers, storage            |
| Strong Password Policies          | Enforce complexity, rotation, and avoid reuse       |
| Software Updates/Patching         | Close security holes                                |
| Backups                           | Recover data after ransomware or breach             |
| Firewalls & Network Segmentation  | Reduce lateral movement if breached                 |
| Endpoint Protection               | Antivirus and host-based firewalls                  |
| Security Incident Response Plan   | Step-by-step guide to handle a breach               |
