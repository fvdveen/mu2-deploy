MU2=https://github.com/fvdveen/mu2.git
MU2_SEARCH=https://github.com/fvdveen/mu2-search.git
MU2_ENCODE=https://github.com/fvdveen/mu2-encode.git

all: run

run: build
	docker-compose up

build: install
	docker-compose build

install:
	git clone $(MU2)
	git clone $(MU2_SEARCH)
	git clone $(MU2_ENCODE)