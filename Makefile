up:
	docker compose up

down:
	docker compose down

composer-install:
	docker compose exec client /bin/bash -c "composer install"

use-grpc-client:
	docker compose exec client /bin/bash -c "php grpc-client.php"