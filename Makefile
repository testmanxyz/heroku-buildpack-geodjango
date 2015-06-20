# These targets are not files
.PHONY: tests

tests:
	./bin/test

sync:
	aws s3 sync --acl public-read share s3://dulaccc-buildpack-geodjango/
