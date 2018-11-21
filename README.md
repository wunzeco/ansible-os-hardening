os-hardening
============

Ansible role to apply [CIS benchmark](https://learn.cisecurity.org/benchmarks) recommendations.

CIS benchmarks & recommendations are grouped into two levels - Level 1 & Level 2.

*Level 1*
Items in this profile intend to:
* be practical and prudent;
* provide a clear security benefit; and
* not inhibit the utility of the technology beyond acceptable means.

*Level 2*
This profile extends the "Level 1 - Server" profile. Items in this profile exhibit one or
more of the following characteristics:
* are intended for environments or use cases where security is paramount.
* acts as defense in depth measure.
* may negatively inhibit the utility or performance of the technology.


## Example

```
- hosts: myhost

  vars:
    os_hardening_dist_upgrade: true
    os_hardening_exclusions: [ '3.6.5', '1.8' ]   # CIS IDs of recommendations to exclude.

  roles:
    - os-hardening
```


## Testing

To test this role, run:

```
kitchen test
```


## Supported OS:

- Ubuntu 16.04


## Dependencies
- wunzeco.ntp
- fatal-exception.auditd
