MKDOCS_IMAGE := ghcr.io/k8sgpt-ai/k8sgptdocs:dev
MKDOCS_PORT := 8000

mkdocs-serve:
	docker build -t $(MKDOCS_IMAGE) -f docs/build/Dockerfile docs/build
	docker run --name mkdocs-serve --rm -v $(PWD):/docs -p $(MKDOCS_PORT):8000 $(MKDOCS_IMAGE)