@echo off
setlocal enabledelayedexpansion

REM For docker volumes to be accessible outside the container
docker volume create traefik_data && (
    if !errorlevel!==0 ( 
        echo "traefik_data volume created successfully!"
    ) else (
        echo "Error creating traefik_data volume"
        exit /b 1
    )
)

REM Create n8n_data volume
docker volume create n8n_data && (
    if !errorlevel!==0 (
        echo "n8n_data volume created successfully!"
    ) else (
        echo "Error creating n8n_data volume"
        exit /b 1
    )
)

REM Create ollama-local volume
docker volume create ollama-local && (
    if !errorlevel!==0 (
        echo "ollama-local volume created successfully!"
    ) else (
        echo "Error creating ollama-local volume"
        exit /b 1
    )
)

REM Create open-webui-local volume
docker volume create open-webui-local && (
    if !errorlevel!==0 (
        echo "open-webui-local volume created successfully!"
        echo "All volumes created successfully!"
    ) else (
        echo "Error creating open-webui-local volume"
        exit /b 1
    )
)
docker compose up
pause
