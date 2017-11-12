pragma solidity ^0.4.11;

//gbg coin | bet on how much its gonna rain in gothenburg
//send out coins to winner ones a week 
// this is still in dev, dont use it yet, all contribution code is welcome

/*
 * --------------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <flipchan@riseup.net> wrote this file.  As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return. Filip (flipchan) Kalebo
 * ---------------------------------------------------------------------------------
 */


contract GothenBurgCoin {

    	string public constant symbol = "GBGCOIN";
    	string public constant name = "Gothenburg Coin";
    	uint8 public constant decimals = 18;

	string public payday = 'sunday';

	event UpdateStatus(string meddelande, uint _amount); //public print
	
	//guesser directory
	mapping(address => Guesser) public guessers;

	Guess[] public guesses;	//lets make the guesses countable

	weathermap[monday, tuesday, wednesday, thursday, friday, saturday, sunday] public weatherdays; // set item to true if it has rained that day and then count them to generate the output

	struct weatherguess{
		uint amountdays;
		address guesser;
	}	//how many days is it gonna rain

	modifier ifPayday(){	//check if it is the correct day to hand out the coin and if we got coin to hand out
        	if(currentday != payday && getFunds != 0){
            		throw;
        	}else{
        	    _;
       		 }
    		}	

	function whatdayisit() returns(string){//return today
		return today;
		}

	function depositfunds() payable { //add input for guess
		UpdateStatus("GbgCoin inserted!", msg.sender, msg.value);
		}

	function calculateweather(){
		return weather;
	} 



	function paywinner(uint amount) ifPayday{

		}

	function getFunds() constant returns(uint){
        	return this.balance;
    		}

	function getcurrentWeather() constant returns(bool){//easiest to check day as a boolean
		return calculateweather("https://darksky.net/forecast/57.7072,11.967/si24/en");
		}
}
