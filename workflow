name: Actualizar Power BI cada 10 minutos

on:
  schedule:
    # Ejecuta cada 10 minutos
    - cron: '*/10 * * * *'

jobs:
  run-script:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repo
      uses: actions/checkout@v3

    - name: Configurar Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.x'

    - name: Instalar requests
      run: pip install requests

    - name: Ejecutar script Python
      run: python update_powerbi.py
