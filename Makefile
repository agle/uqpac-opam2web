
build:
	opam2web -o website/ opam-repository/
	cp -r ext/* website/ext

IMAG=ghcr.io/uq-pac/opam-repository/opam2web:latest

buildcont:
	podman run -v .:/w:z $(IMAG) opam2web -o website/ opam-repository/
	cp -r ext/* website/ext


image:
	podman build . -t $(IMAG) 

upload-ci:
	podman push $(IMAG)	|| \
	( echo  "to login:  podman login ghcr.io -u <your-github-username>" ; exit 1 )
