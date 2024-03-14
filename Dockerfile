FROM python
RUN pip3 install fastapi uvicorn
WORKDIR /app
COPY main.py .
EXPOSE 8000:8000
CMD ["uvicorn", "main:app", "--reload"]
