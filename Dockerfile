ARG PROJECT_VERSION
FROM cocacolafs-fos-docker-snapshots.jfrog.io/simulator-base:$PROJECT_VERSION

COPY target/ncui.pkg /fos/release/content/

ENTRYPOINT ["sh", "-C", "fos/release/bin/start.sh"]
CMD ["9100"]
