
build:
	opam2web -o website/ opam-repository/
	cp -r ext/* website/ext

buildcont:
	podman run -v .:/w:z ghcr.io/agle/bincaml-ci-containers/opam2web:latest opam2web -o website/ opam-repository/
	cp -r ext/* website/ext

image:
	podman build . -t ghcr.io/agle/bincaml-ci-containers/opam2web:latest

upload-ci:
	podman push ghcr.io/agle/bincaml-ci-containers/opam2web:latest	|| \
	( echo  "to login:  podman login ghcr.io -u <your-github-username>" ; exit 1 )
