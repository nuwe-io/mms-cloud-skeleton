apiVersion: v1
kind: Namespace
metadata:
  name: namespace-mms-cloud-challenge

---

apiVersion: apps/v1
kind: Deployment
metadata:
  name: deployment-mms-cloud-challenge
  namespace: namespace-mms-cloud-challenge
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app-mms-cloud-challenge
  template:
    metadata:
      labels:
        app: app-mms-cloud-challenge
    spec:
      containers:
      - name: container-mms-cloud-challenge
        image: {{ .docker_compose_file.services.service-mms-cloud-challenge.image }}
        ports:
        - containerPort: {{ .docker_compose_file.services.service-mms-cloud-challenge.ports }}

---

apiVersion: v1
kind: Service
metadata:
  name: service-mms-cloud-challenge
  namespace: namespace-mms-cloud-challenge
spec:
  selector:
    app: app-mms-cloud-challenge
  ports:
  - protocol: TCP
    port: {{ .docker_compose_file.services.service-mms-cloud-challenge.ports }}
    targetPort: {{ .docker_compose_file.services.service-mms-cloud-challenge.ports }}
  type: LoadBalancer

---

apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: ingress-mms-cloud-challenge
  namespace: namespace-mms-cloud-challenge
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - http:
      paths:
      - path: /
        backend:
          serviceName: service-mms-cloud-challenge
          servicePort: {{ .docker_compose_file.services.service-mms-cloud-challenge.ports }}