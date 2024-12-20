FROM dbatools/sqlinstance
USER root
# Install PowerShell
RUN apt-get update && apt install -y powershell
# install git
RUN apt install -y git

# some cleanup
RUN apt-get autoremove -y \
    && apt-get clean -y

# things for ImportExcel

RUN apt-get -y update \
    && apt-get install -y --no-install-recommends libgdiplus libc6-dev

ENV GIT_PROMPT_START='\033[1;36dbatools>\033[0m\033[0;33m\w\a\033[0m'

# Save command line history
RUN echo "export HISTFILE=/commandhistory/.bash_history" >> "/root/.bashrc" \
    && echo "export PROMPT_COMMAND='history -a'" >> "/root/.bashrc" \
    && mkdir -p /commandhistory \
    && touch /commandhistory/.bash_history

# Install Pester, 4.10.1
SHELL ["/usr/bin/pwsh", "-c"]
RUN $ErrorActionPreference='Stop';Set-PSRepository -Name PSGallery -InstallationPolicy Trusted; Install-Module -Name Pester -Force -SkipPublisherCheck -MaximumVersion 4.10.1;

# Install dbatools,PSFramework,dbachecks,posh-git,ImportExcel, Pansies
SHELL ["/usr/bin/pwsh", "-c"]
RUN $ErrorActionPreference='Stop';Set-PSRepository -Name PSGallery -InstallationPolicy Trusted; Install-Module -Name dbatools,PSFramework,dbachecks,posh-git,Microsoft.PowerShell.ConsoleGuiTools,ImportExcel,Pansies,PSHTML -Force -SkipPublisherCheck;

# Copy Profile

ADD Game/profile.ps1 /root/.config/powershell/
