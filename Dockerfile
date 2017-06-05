FROM python:3.6
RUN pip install sphinx sphinx-autobuild recommonmark sphinx_rtd_theme
COPY docker-entrypoint.sh /docker-entrypoint.sh
CMD mkdir /docs
WORKDIR /docs
EXPOSE 8000
ENTRYPOINT ["/docker-entrypoint.sh"]
