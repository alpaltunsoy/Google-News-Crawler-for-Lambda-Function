FROM public.ecr.aws/lambda/python:3.8-x86_64

ENV TZ="Europe/Istanbul"

COPY . ./app/

RUN pip install --no-cache-dir -r ./app/requirements.txt

ENV PYTHONPATH='/var/task/app/src'

CMD ["main.handler"]