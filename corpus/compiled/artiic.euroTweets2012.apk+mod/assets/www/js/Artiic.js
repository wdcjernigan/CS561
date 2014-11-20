/**

 *  

 * @return Object literal singleton instance of TeamNotification

 */

var Artiic = function() {
};

/**
  * @param directory The directory for which we want the listing
  * @param successCallback The callback which will be called when directory listing is successful
  * @param failureCallback The callback which will be called when directory listing encouters an error
  */
Artiic.prototype.getStateNotification = function(channel,successCallback, failureCallback) {

 return cordova.exec(    successCallback,    //Success callback from the plugin

      failureCallback,     //Error callback from the plugin

      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

      'notification',              //Tell plugin, which action we want to perform

      [channel]);        //Passing list of args to the plugin

};

Artiic.prototype.getIdioma = function(successCallback, failureCallback) {

	 return cordova.exec(    successCallback,    //Success callback from the plugin

	      failureCallback,     //Error callback from the plugin

	      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

	      'getIdioma',              //Tell plugin, which action we want to perform

	      ["nada"]);        //Passing list of args to the plugin

	};
	
		
	Artiic.prototype.suscript = function(channel) {

			 return cordova.exec(    null,    //Success callback from the plugin

			      null,     //Error callback from the plugin

			      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

			      'suscript',              //Tell plugin, which action we want to perform

			      [channel]);        //Passing list of args to the plugin

			};
			
	Artiic.prototype.unsuscript = function(channel) {

		 return cordova.exec(    null,    //Success callback from the plugin

				      null,     //Error callback from the plugin

				      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

				      'unsuscript',              //Tell plugin, which action we want to perform

				      [channel]);        //Passing list of args to the plugin

	};
	
	Artiic.prototype.setMyTeam = function(equipo,successCallback, failureCallback) {

		 return cordova.exec(    successCallback,    //Success callback from the plugin

				 failureCallback,     //Error callback from the plugin

		      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

		      'setMyTeam',              //Tell plugin, which action we want to perform

		      [equipo]);        //Passing list of args to the plugin

		};
	
	Artiic.prototype.getMyTeam = function(successCallback, failureCallback) {

		 return cordova.exec(    successCallback,    //Success callback from the plugin

		      failureCallback,     //Error callback from the plugin

		      'ArtiicPlugin',  //Tell PhoneGap to run "DirectoryListingPlugin" Plugin

		      'getMyTeam',              //Tell plugin, which action we want to perform

		      ["nada"]);        //Passing list of args to the plugin

		};
 
PhoneGap.addConstructor(function() {

	cordova.addPlugin("artiic", new Artiic());

               });