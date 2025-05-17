# Motivación

Este repositorio tiene como objetivo demostrar cómo conectar un cliente PHP con un servidor gRPC.

Básicamente, he copiado del [repositorio del servidor gRPC](https://github.com/egarciarey1981/php-grpc-server) los archivos que generé al compilar los archivos .proto.

He tenido que crear una imagen base con las dependencias necesarias para que el cliente PHP pueda funcionar.

Para que cliente y servidor se pudieran conectar, tuve que cambiar la IP que usaba el servidor gRPC por `0.0.0.0` y hacer que ambos se conecten a través de la red `grpc-network`.