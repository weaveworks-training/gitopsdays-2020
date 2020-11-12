import pulumi

def getKubeconfig(cluster, user: str, do_token: str) -> pulumi.Output:
    """
    We have to generate our own custom kubeconfig because DO cycles tokens every 7 days.
    """
    return pulumi.Output.all(cluster.endpoint, cluster.name, cluster.kube_configs[0]["clusterCaCertificate"], do_token).apply(lambda args: f"""apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: {args[2]}
    server: {args[0]}
  name: {args[1]}
contexts:
- context:
    cluster: {args[1]}
    user: {args[1]}-{user}
  name: {args[1]}
current-context: {args[1]}
kind: Config
users:
- name: {args[1]}-{user}
  user:
    token: {args[3]}""")