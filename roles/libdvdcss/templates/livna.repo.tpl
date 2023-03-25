[livna]
name=rpm.livna.org for $releasever - $basearch
#baseurl=http://rpm.livna.org/repo/$releasever/$basearch/ http://ftp-stud.fht-esslingen.de/pub/Mirrors/rpm.livna.org/repo/$releasever/$basearch/
mirrorlist=http://rpm.livna.org/mirrorlist
failovermethod=roundrobin
enabled=1
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-livna

[livna-debuginfo]
name=rpm.livna.org for $releasever - $basearch - Debug
#baseurl=http://rpm.livna.org/repo/$releasever/$basearch/debug/ http://ftp-stud.fht-esslingen.de/pub/Mirrors/rpm.livna.org/repo/$releasever/$basearch/debug/
mirrorlist=http://rpm.livna.org/mirrorlist-debug
failovermethod=roundrobin
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-livna
gpgcheck=0

[livna-source]
name=rpm.livna.org for $releasever - $basearch - Source
#baseurl=http://rpm.livna.org/repo/$releasever/SRPMS/ http://ftp-stud.fht-esslingen.de/pub/Mirrors/rpm.livna.org/repo/$releasever/SRPMS/
mirrorlist=http://rpm.livna.org/mirrorlist-source
failovermethod=roundrobin
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-livna
gpgcheck=0