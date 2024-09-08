FROM jarijokinen/wordpress:latest

RUN apt-get update
RUN apt-get install --no-install-recommends --no-install-suggests -y git

RUN git clone https://github.com/jarijokinen/j2digital-wp-theme.git /wp-theme
RUN chown -R wp:wp /wp-theme/dist

COPY ./src/init-j2digital-wp.sh /init-j2digital-wp.sh
RUN chmod 700 /init-j2digital-wp.sh

ENTRYPOINT ["/init-j2digital-wp.sh"]
