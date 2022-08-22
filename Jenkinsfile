pipeline {
	agent any
	
	
	stages{
		stage("Verify"){
			steps{
				sh "echo Hello"
				sh "docker --version"
				sh "docker compose version"
			}
		}
		
		
		stage("Move"){
			dir("../aline.gateway.jj"){
				steps{
					sh "pwd"
				
				}
			
			}
		
		}
		
		
		
		}
		
		stage("Compose Up"){
			steps{
				sh "docker compose up -d"
				sh "docker compose ps"
				sh "docker compose down"
			
			
			
			}
		
		
		}
	
	
	
	
	
	
	}














}