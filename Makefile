.PHONY: all
all: dotfiles bin

# Symlink the bin files to the /usr/local/bin directory
.PHONY: bin
bin:
	for file in $(shell find $(CURDIR)/bin -type f -not -name ".*.swp"); do \
			f=$$(basename $$file); \
			sudo ln -sf $$file /usr/local/bin/$$f; \
	done


# Symlink the dot files to the home directory
.PHONY: dotfiles
dotfiles: 
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore"  -not -name ".git" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done
