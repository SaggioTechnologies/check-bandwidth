.PHONY: help ping-google ping-softlayer download-large-file speedtest

default: help

help:
	@echo make ping-google
	@echo make ping-speedtest
	@echo make download-large-file
	@echo make speedtest

ping-google:
	@ping 8.8.8.8

ping-softlayer:
	@ping speedtest.wdc01.softlayer.com

download-large-file:
	@wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip

speedtest:
	@speedtest-cli

