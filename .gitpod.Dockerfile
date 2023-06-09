FROM gitpod/workspace-full

RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/potigol/potigol/releases/download/1.0.0-RC1/potigol.jar) > /usr/local/lib/potigol.jar'

RUN echo '#!/bin/bash\n\njava -jar /usr/local/lib/potigol.jar $* 2> /dev/null' | sudo tee /usr/local/bin/potigol

RUN sudo chmod +x /usr/local/bin/potigol
