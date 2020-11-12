


```
➤ pulumi stack output kubeconfig --show-secrets > kubeconfig
➤ export KUBECONFIG="$(pwd)/kubeconfig"
```

```
➤ k --kubeconfig=./kubeconfig get pods -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS   AGE
kube-system   cilium-5bnbt                       1/1     Running   0          5m17s
kube-system   cilium-kz72k                       1/1     Running   0          5m28s
kube-system   cilium-operator-5f487bb876-7b7pc   1/1     Running   0          7m31s
kube-system   cilium-operator-5f487bb876-snxfz   1/1     Running   0          7m32s
kube-system   coredns-76bcfddf46-b4jkx           1/1     Running   0          7m31s
kube-system   coredns-76bcfddf46-jvx5k           1/1     Running   0          7m31s
kube-system   csi-do-node-nxdkl                  2/2     Running   0          5m17s
kube-system   csi-do-node-rd2bq                  2/2     Running   0          5m28s
kube-system   do-node-agent-h8hmc                1/1     Running   0          5m28s
kube-system   do-node-agent-jvpp8                1/1     Running   0          5m17s
kube-system   kube-proxy-hr2pn                   1/1     Running   0          5m28s
kube-system   kube-proxy-ktm2s                   1/1     Running   0          5m17s
```