task run_python_script {
	      
	       
	      
	      command {
	        python my_script.py ${input_string} > output.txt
	      }
	      output {
	        File script_output = "output.txt"
	      }
	      runtime {
	        docker: "python:3.9"
	      }
	    }
	
	    workflow my_workflow {
	      call run_python_script {
	        input:
	          input_string = "Hello, WDL!"
	      }
	    }
