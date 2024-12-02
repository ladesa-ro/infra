echo  ================================================================
echo "Cleaning orphaned replicasets"
echo  ================================================================


for NAMESPACE in ${PROJECT_NAMESPACES}
do
  REPLICAS=$(kubectl get replicaset -n ${NAMESPACE} -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }'; exit 0);

  if ! [ -z "$REPLICAS" ]; then
    ((kubectl delete replicaset -n ${NAMESPACE} ${REPLICAS}); exit 0;);
  fi;

done;

echo "Orphaned replicasets collected.";
