#!/bin/bash
echo "RUNNING PHPCS TEST"
phpcs --standard=Framgia app

echo "TRYING TO FIX PHPCS CONVENTION"

phpcbf --standard=Framgia app

echo "RUNNING ESLINT TEST, IN CASE YOU DON'T ESLINT. IGNORE THIS OUTPUT LOGS"

eslint resources/assets --ext .js
eslint resources/assets --fix