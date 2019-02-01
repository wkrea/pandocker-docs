ifeq ($(OS),Windows_NT)
HOME = C:/Users/$(USERNAME)
endif
PANSTYLES= /usr/local/var
MISC= $(PANSTYLES)/pandoc_misc
include $(MISC)/Makefile.in
PROJECT= `pwd`

## userland: uncomment and replace
# MDDIR:= markdown
# DATADIR:= data
# TARGETDIR:= Out
# IMAGEDIR:= images
# WAVEDIR:= waves
# BITDIR:= bitfields
# BIT16DIR:= bitfield16

# CONFIG:= config.yaml
# INPUT:= TITLE.md
BRANCH:= '$(shell git rev-parse --abbrev-ref HEAD)'
TARGET:= Pandocker-Docs-$(BRANCH)-$(HASH)
# COREPROPFLAGS := --table "Normal Table=Centered"
# COREPROPFLAGS += --paragraph "Normal=Body Text"
##
include $(MISC)/Makefile
