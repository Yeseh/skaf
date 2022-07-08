FROM mcr.microsoft.com/dotnet/sdk:6.0

# Install prerequisites
RUN apt update && apt install -y git curl gpg unzip
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg;
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null;
RUN apt update && apt install gh
RUN curl -fsSL https://deno.land/install.sh | sh
RUN git config --global user.name "Skaf Scaffolding" && git config --global user.email "skaf@scaffold.com"
RUN mkdir work && cd work

COPY run.sh work 
COPY ./content/ work/content/

ENTRYPOINT [ "./work/run.sh" ]