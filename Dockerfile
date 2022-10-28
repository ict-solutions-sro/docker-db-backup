FROM tiredofit/db-backup:3.5.5

COPY assets/scripts/post/post-script.sh /assets/scripts/post/post-script.sh
COPY assets/scripts/pre/pre-script.sh /assets/scripts/pre/pre-script.sh

RUN ["chmod", "554", "/assets/scripts/post/post-script.sh"]
RUN ["chmod", "554", "/assets/scripts/pre/pre-script.sh"]