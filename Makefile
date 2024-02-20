docker: download
	docker buildx build .

core:
	curl https://www.public-software-group.org/pub/projects/liquid_feedback/backend/v4.2.2/liquid_feedback_core-v4.2.2.tar.gz | tar x
	mv liquid_feedback* core

moonbridge:
	curl https://www.public-software-group.org/pub/projects/moonbridge/v1.1.3/moonbridge-v1.1.3.tar.gz | tar x
	mv moonbridge* moonbridge

webmcp:
	curl https://www.public-software-group.org/pub/projects/webmcp/v2.2.1/webmcp-v2.2.1.tar.gz | tar x
	mv webmcp* webmcp

frontend:
	curl https://www.public-software-group.org/pub/projects/liquid_feedback/frontend/v4.0.0/liquid_feedback_frontend-v4.0.0.tar.gz | tar x
	mv liquid_feedback* frontend

download: core moonbridge webmcp frontend

clean:
	rm -rf liquid_feedback* core moonbridge* webmcp* frontend
