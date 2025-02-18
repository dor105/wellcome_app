# start by pulling the python image
FROM python:3.9.10-slim-buster
# copy the requirements file into the image
COPY ./requirements.txt /wellcome_app/requirements.txt
# switch working directory
WORKDIR /wellcome_app
# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt
# copy every content from the local file to the image
COPY . /wellcome_app/
# port
EXPOSE 5000
# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD ["app.py" ]

