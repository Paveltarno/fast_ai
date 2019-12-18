source ./.env

# budget: 'type=nvidia-tesla-k80,count=1'
# gcloud compute instances create $INSTANCE_NAME \
#         --zone=$ZONE \
#         --image-family=$IMAGE_FAMILY \
#         --image-project=deeplearning-platform-release \
#         --maintenance-policy=TERMINATE \
#         --accelerator="type=nvidia-tesla-p100,count=1" \
#         --machine-type=$INSTANCE_TYPE \
#         --boot-disk-size=200GB \
#         --metadata="install-nvidia-driver=True" \
#         --preemptible

gcloud compute instances start $INSTANCE_NAME
$SLEEP_SEC = 15
echo "Sleeping $SLEEP_SEC before connecting"
sleep $SLEEP_SEC
gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080