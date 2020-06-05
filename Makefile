lines ?= 50

install:
	cp smscheck.service $(HOME)/.config/systemd/user/.
	cp smscheck.timer $(HOME)/.config/systemd/user/.
	cp smscheck $(HOME)/.local/bin/.
	systemctl --user --now enable smscheck.service
	systemctl --user --now enable smscheck.timer
