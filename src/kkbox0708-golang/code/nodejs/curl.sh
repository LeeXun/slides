#!/usr/bin/env bash

URL="http://127.0.0.1"

# echo ${URL}
curl -w "%{url_effective} time_total:  %{time_total}\n" "${URL}:8000/?1" &
curl -w "%{url_effective} time_total:  %{time_total}\n" "${URL}:8000/?2" & 
curl -w "%{url_effective} time_total:  %{time_total}\n" "${URL}:8000/?3" &

wait