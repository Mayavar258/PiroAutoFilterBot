FROM python:3.9.1
RUN apt update && apt upgrade -y
RUN apt install git -y
RUN cd /PiroAutoFilterBot
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
COPY . .
CMD ["python3", "bot.py"]
