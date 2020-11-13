FROM python:alpine AS build

WORKDIR /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN python3 build_repo.py


FROM nginx:stable-alpine AS final

RUN rm /etc/nginx/conf.d/default.conf
COPY --from=build /usr/src/app/public /extensions
COPY nginx.conf /etc/nginx/nginx.conf
