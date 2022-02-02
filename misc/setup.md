
Setting up the Jupyter Server for class.

1. Allocate an Elastic IP address from Amazon. This allows the students to connect to the same IP address all semester. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
2. Follow the littlest JupyterHub setup instructions: https://tljh.jupyter.org/en/latest/install/amazon.html
    I believe the burstable instances (T series) are most cost effective for our typical workloads.
3. Add students as users to JupyterHub.
4. I can now access the server through HTTP from a public IP address.

https://tljh.jupyter.org/en/latest/topic/idle-culler.html#configuring-the-idle-culler

The idle culler default is 10 minutes, too short.
24 hours is more like it.
```

sudo tljh-config set services.cull.timeout 86400
sudo tljh-config set services.cull.every 3600
sudo tljh-config reload

```

Notes:

1. The AMI "AWS Deep Learning AMI (Amazon Linux 2)" doesn't have JupyterHub installed in a way that's immediate to use.
2. Deleting and recreating the user from the web interface for Jupyter seems to have the effect of resetting the password while preserving the home directory.

