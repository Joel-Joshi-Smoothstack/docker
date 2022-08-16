title microservice builder

cd ..
cd aline-user-microservice-jj
docker build -t userms-jj .
cd ..
cd aline-underwriter-microservice-jj
docker build -t underwriterms-jj .
cd ..
cd aline-transaction-microservice-jj 
docker build -t transactionms-jj .
cd ..
cd aline-bank-microservice-jj
docker build -t bankms-jj .