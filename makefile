BIN=/usr/local/bin
PL=/tmp/_root/home/user0

.DEFAULT_GOAL := install

install:
	chmod +x dotful
	install dotful $(BIN)

uninstall:
	rm $(BIN)/dotful

link:
	ln -s $(PWD)/dotful ${HOME}/.local/bin/dotful

unlink:
	rm ${HOME}/.local/bin/dotful

playground:
	@if [ -d "$(PL)" ]; then printf "removing old dir\n" && rm -r "$(PL)"; fi
	@mkdir -p $(PL)

	@printf "creating dummy files within %s...\n\n" "$(PL)"

	mkdir -p $(PL)/.dots $(PL)/.config $(PL)/.local/share
	mkdir -p $(PL)/.config/gtk $(PL)/.config/vlc $(PL)/.config/nvim
	mkdir -p $(PL)/.local/share/fonts $(PL)/.local/share/icons $(PL)/.local/share/sounds
	touch $(PL)/.local/share/fonts/ter-123b $(PL)/.local/share/fonts/ter-235b $(PL)/.local/share/fonts/ter-284b
	touch $(PL)/.profile $(PL)/.logout $(PL)/.inputrc $(PL)/.xinitrc $(PL)/.xresources $(PL)/.xserverrc $(PL)/.rc

	@printf "\ngrab this alias to use dotful within the playground:\n"
	@printf "alias dotful=\"dotful --source $(PL)/.dots --destination $(PL) --user-home $(PL)\"\n"
