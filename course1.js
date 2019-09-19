var country_arr=new Array("UNDER-GRADUATION","POST-GRADUATION");
var s_a=new Array();
s_a[0]="";
s_a[1]="Bachelor of Business Administration|Bachelor of Philosophy|Bachelor of Science|Bachelor of Statistics|Bachelor of Computer Science|Bachelor of Law|Bachelor of Management Sciences|Bachelor of Mathematics|Bachelor of Medical Sciences |Bachelor of Arts in Applied Mathematics|Bachelor of Engineering in Biomedical Sciences|Bachelor of Engineering in Mechanical|Bachelor of Environmental Sciences|Bachelor of Arts in Contemporary Literature|Bachelor of Sciences in Business Psychology|Bachelor of Sciences in Management|Bachelor of Engineering in Humanities|Bachelor of Science in Chemistry and Biology|Bachelor of Science in Economics|Bachelor of Arts in Archaeology and Anthropology|Bachelor of Arts in Biomedical Sciences|Bachelor of Arts in Physics|Bachelor of Engineering in Biomedical Engineering|Bachelor of Engineering in Electronic Engineering|Bachelor of Sciences in Accounting and Management |Bachelor of Sciences in Biology|Bachelor of Sciences in Economics|Bachelor of Arts in Global Tourism Management|Bachelor of Science in Environmental Management|Bachelor of Arts in Anthropology|Bachelor of Arts in Human Biology|Bachelor of Sciences in Bioengineering|Bachelor of Sciences in Physics|Bachelor of Biology|Bachelor of Commerce|Bachelor of Arts in Communication|Bachelor of Arts in Criminology|Bachelor of Business Administration in Accounting|Bachelor of Business Administration in Economics|Bachelor of Arts in Leadership|Bachelor of Arts in Psychology|Bachelor of Business Adminstration|Bachelor of Education|Bachelor of Arts & Sciences|Bachelor of Arts in Archeology|Bachelor of Engineering in Civil|Bachelor of Engineering in Electronic and Electrical|Bachelor of Sciences in Astrophysics|Bachelor of Biomedicine|Bachelor of Management Science|Bachelor of Arts in Physical Education|Bachelor of Hospitality Management|Bachelor of Sciences in Nursing";
s_a[2]="Master of Biotechnology|Master of Finance|Master of Marketing Management|Master of Statistics|Master of Advanced Study in Applied Mathematics|Master of Business Administration|Master of Philosophy in Advanced Chemical Engineering|Master of Philosophy in Archaeology|Master of Philosophy in Engineering|Master of Philosophy in Medical Science|Master of Design Engineering|Master of Engineering in Electrical|Master of Engineering in Mechanical|Master of Engineering Sciences|Master of Arts in Anthropology|Master of Arts in Architecture and Urban Design|Master of Arts in Creative Writing |Master of Sciences in Advanced Computer Science|Master of Sciences in Economics|Master of Design Engineering|Master of Engineering in Computer Science|Master of Science in Technology|Master of Sciences in Microbiology|Master of Chemistry|Master of Mathematics|Master of Engineering in Electrical and Electronic Engineering|Master of Engineering in Materials and Design|Master of Sciences in Mathematics|Master of Sciences in Physics with Particle Physics|Master of Arts in Conflict Analysis and Management|Master of Arts in Disaster and Emergency Management|Master of Business Administration in Executive Management|Master of Global Management|Master of Arts in Human Biology|Master of Engineering in Electrical and Electronics|Master of Sciences in Biochemistry|Master of Commerce|Master of Computer Sciences|Master of Management Science|Master of Science in Psychology|Master of Education|Master of Arts in Leadership|Masters of Business Administration|Master of Engineering in Biochemistry|Master of Engineering in Mechanical with Business Finance|Master of Sciences in Biological Sciences|Master of Biomedical Science|Master of Engineering in Civil|Master of Engineering in Electrical and Electronic|Master of Engineering in Biotechnology|Master of Community Planning|Master of Geographic Information in Systems Applications";




function populateStates( countryElementId, stateElementId ){

	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;
              

	var stateElement = document.getElementById( stateElementId );
              
	
	stateElement.length=0;              	
	
			stateElement.options[0] = new Option('Select ','');              
	
			stateElement.selectedIndex = 0;              
	
	
			var state_arr = s_a[selectedCountryIndex].split("|");              
	
	
			for (var i=0;               i<state_arr.length;               i++) 
			{
		stateElement.options[stateElement.length] = new Option(state_arr[i],state_arr[i]);              
	
				
			}
}



			function populateDegree(countryElementId, stateElementId){
	
				
	
				var countryElement = document.getElementById(countryElementId);              
	
				countryElement.length=0;              
	
				countryElement.options[0] = new Option('Select Degree','-1');              
	
				countryElement.selectedIndex = 0;              
	
				for (var i=0;               i<country_arr.length;               i++) {
		
					countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);              
	
				}

	
				
	
				if( stateElementId ){
		
					countryElement.onchange = function(){
			
						populateStates( countryElementId, stateElementId );              
		
					};              
	
				}
}