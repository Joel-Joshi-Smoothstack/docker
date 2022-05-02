title microservice builder

cd ..
cd aline-user-microservice-jj
docker build -t userms .
cd ..
cd aline-underwriter-microservice-jj
docker build -t underwriterms .
cd ..
cd aline-transaction-microservice-jj 
docker build -t transactionms .
cd ..
cd aline-bank-microservice-jj
docker build -t bankms .