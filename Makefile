wp:
	docker build -t jarijokinen/j2digital-wp -f ./Dockerfile .

push:
	docker push jarijokinen/j2digital-wp
