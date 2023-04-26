## week 8 - Task-8

- [x] Od AMI image ec2-nedim-custovic-web-server napravljena nova EC2 instanca ec2-nedim-custovic-task-8

![img-1](/week-8-task-8/screenshootsTask-8/nedim-custovic-web-server-task8.PNG)

- [x] Podešavanje AWS CloudShell za pristup drugom AWS CLI preko kojeg se odvija DNS servis (ROUTE53) 
- `aws configure --profile aws-bosnia`
- `aws configure list` → da se provjeri konfiguracija.

![img-2](/week-8-task-8/screenshootsTask-8/Podesavanje_AWS_Cloud_prifila.PNG)

- [x] Kreiran DNS record nedim-custovic.awsbosnia.com za Hosted Zone awsbosnia.com (Hosted zone ID: Z3LHP8UIUC8CDK) koji pokazuje na public IP EC2 instance.

- `aws route53 change-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK --change-batch '{"Changes":[{"Action":"CREATE","ResourceRecordSet":{"Name":"nedim-custovic.awsbosnia.com.","Type":"A","TTL":60,"ResourceRecords":[{"Value":"34.239.126.243"}]}}]}'`

- Ispis DNS RECORD-a:

- `aws route53 list-resource-record-sets --hosted-zone-id Z3LHP8UIUC8CDK | jq '.ResourceRecordSets[] | select(.Name == "nedim-custovic.awsbosnia.com.") | {Name, Value}'`

![img-3](/week-8-task-8/screenshootsTask-8/Ispis_DNS_record.PNG)


- [x] Na EC2 instanci `ec2-nedim-custovic-task-8` kreirao sam Let's Encrypt SSL certifikat za moju domenu.
- Korištene komande za instalaciju certbota iz materijala DEVOPS-mentorship

![img-4](/week-8-task-8/screenshootsTask-8/Lets encrypt.PNG)

- [x] Omoguciti autorenewal SSL certifikata

- Korišteno uputstvo sa stranice https://www.baeldung.com/linux/letsencrypt-renew-ssl-certificate-automatically 
  
![img-5](/week-8-task-8/screenshootsTask-8/renewal_monthly.PNG)

- [x] Koristeci openssl komande prikazao sam koji SSL certitikat koristim i datum njegovog isteka. 

- `openssl s_client -showcerts -connect nedim-custovic.awsbosnia.com:443 2>/dev/null | openssl x509 -noout -text`

![img-6](/week-8-task-8/screenshootsTask-8/Ispis_SSL_Letsencrypt.PNG)

- [x] Importovao Lets Encrypt SSL certifikat unutar AWS Certified Managera.

- week-8-task-8/screenshootsTask-8/Importovan Lets encrypt_cert u aws.PNG

- [x] Kreiran je LOUD BALANCER sa SSL Lets Encrypt certifikatom. Te je promjenjen DNS record na tip CNAME i stavljen je DNS od load balancera
	DNS_record_LoadBalancer.PNG
	
![img-7](/week-8-task-8/screenshootsTask-8/Konfiguracija_load_balancera.PNG)

- [x] Kreirao novi SSL certifikat unutar AWS Certified Managera, azurirao ALB da koristi novi SSL cert koji sam kreirao.

![img-8](/week-8-task-8/screenshootsTask-8/Svi_importovani_SSL-certifikati.PNG)

- [x] Dodat novi SSL Amazon certifikat

![img-9](/week-8-task-8/screenshootsTask-8/Load_balancer_New_Amazon_SSL.PNG)

- [x] Na kraju je kreirana AMI slika EC2 instance

![img-10](/week-8-task-8/screenshootsTask-8/ami_nedim-custovic-task8.PNG)