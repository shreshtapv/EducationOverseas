var country_arr=new Array("Canada","UK","USA","Australia");
var t_a=new Array();
t_a[0]="";
t_a[1]="Toronto|Vancouver|Ottowa|Montreal|Victoria|Nanaimo|Surrey|Burnaby|Langley|Richmond";
t_a[2]="Oxford|London|Cambridge|Kent";
t_a[3]="Cambridge|Stanford|Pasadena|Bellingham";
t_a[4]="Melbourne|Victoria|Sydney|Canberra|Brisbane";



function populateCities( countryElementId, cityElementId ){

	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;
              

	var cityElement = document.getElementById( cityElementId );
              
	
	cityElement.length=0;              	// Fixed by Julian Woods
	
			cityElement.options[0] = new Option('Select City','');              
	
			cityElement.selectedIndex = 0;              
	
	
			var city_arr = t_a[selectedCountryIndex].split("|");              
	
	
			for (var i=0;               i<city_arr.length;               i++) 
			{
		cityElement.options[cityElement.length] = new Option(city_arr[i],city_arr[i]);              
	
				
			}
}



			function populateCountries(countryElementId, cityElementId){
	
				// given the id of the <select> tag as function argument, it inserts <option> tags
	
				var countryElement = document.getElementById(countryElementId);              
	
				countryElement.length=0;              
	
				countryElement.options[0] = new Option('Select Country','-1');              
	
				countryElement.selectedIndex = 0;              
	
				for (var i=0;               i<country_arr.length;               i++) {
		
					countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);              
	
				}

	
				// Assigned all countries. Now assign event listener for the states.

	
				if( cityElementId ){
		
					countryElement.onchange = function(){
			
						populateCities( countryElementId, cityElementId );              
		
					};              
	
				}
}