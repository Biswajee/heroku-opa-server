FROM openpolicyagent/opa:0.35.0
# used for locally testing the container than heroku
EXPOSE 8181
ENTRYPOINT ["run", "--server", "--addr"]
CMD ["127.0.0.1:$PORT"]