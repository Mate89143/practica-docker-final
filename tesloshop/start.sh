#!/bin/bash
echo "Iniciando TesloShop..."
echo ""

if ! docker info > /dev/null 2>&1; then
    echo "Error: Docker no está corriendo. Por favor inicia Docker Desktop."
    exit 1
fi

echo "Docker está corriendo"
echo ""

echo "Construyendo e iniciando contenedores..."
docker compose up --build -d

echo ""
echo "Esperando a que los servicios estén listos..."
sleep 10

echo ""
echo "TesloShop está corriendo!"
echo ""
echo "Accede a la aplicación:"
echo "   Frontend:    http://localhost"
echo "   Backend API: http://localhost:3000/api"
echo "   Base de datos: localhost:5432"
echo ""
echo "Ver logs:"
echo "   docker compose logs -f"
echo ""
echo "Detener la aplicación:"
echo "   docker compose down"