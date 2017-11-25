[Unit]
Description=/etc/rc.d/rc.local Compatibility
ConditionFileIsExecutable=/etc/rc.d/rc.local
After=network.target

[Service]
Type=forking
ExecStart=/etc/rc.d/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
GuessMainPID=no

[Install]
WantedBy=multi-user.target
