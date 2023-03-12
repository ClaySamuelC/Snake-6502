# makefile for nesdoug example code, for Linux
# this version won't move the final files to BUILD folder
# also won't rebuild on changes to neslib/nesdoug/famitone files

NAME = snake
CRTNAME = crt0

SRC = src/$(NAME).c
GAME = dist/$(NAME).nes
SFILE = dist/$(NAME).s
OFILE = dist/$(NAME).o

CRTIN = src/$(CRTNAME).s
CRTOUT = dist/$(CRTNAME).o

CFG = config/nrom_32k_vert.cfg
ALPA = assets/Alpha.chr
MUSIC = assets/famitone2.s

.PHONY: default clean

default: $(GAME)


#target: dependencies

$(GAME): $(OFILE) $(CRTOUT) $(CFG)
	$(LD65) -C $(CFG) -o $(GAME) $(CRTOUT) $(OFILE) nes.lib -Ln labels.txt --dbgfile dbg.txt
	@echo $(GAME) created

$(CRTOUT): $(CRTIN) $(ALPHA)
	$(CA65) $(CRTIN) -o $(CRTOUT)

$(OFILE): $(SFILE)
	$(CA65) $(SFILE) -o $(OFILE) -g

$(SFILE): $(SRC)
	$(CC65) -Oirs $(SRC) --add-source -o $(SFILE)

clean:
	rm $(GAME) dist/*.o