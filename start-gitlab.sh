docker run -d --name gitlab_data -v /data/gitlab/data:/var/opt/gitlab -v /data/gitlab/logs:/var/log/gitlab -v /data/gitlab/conf:/etc/gitlab tedostrem/gitlab:7.10.1 /bin/true
docker run -d --name gitlab -e VIRTUAL_HOST=$GITLAB_VIRTUAL_HOST  --volumes-from gitlab_data tedostrem/gitlab:7.10.1
