/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	config.extraPlugins = 'fontawesome,file-manager';
	config.contentsCss = 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';
	config.allowedContent = true; 

	var getBaseRoot = function() {
		if (window.BASC_BASE_URL) {
			return window.BASC_BASE_URL;
		}
		var origin = window.location.origin || (window.location.protocol + "//" + window.location.host);
		var path = window.location.pathname;
		var adminIdx = path.toLowerCase().indexOf('/admin');
		if (adminIdx !== -1) {
			return origin + path.substring(0, adminIdx + 1);
		}
		return origin + '/';
	};

	var baseRoot = getBaseRoot();
	
	config.Flmngr = {
		apiKey: "FLMNFLMN",
		urlFileManager: baseRoot + "flmngr/flmngr.php",
		urlFiles: baseRoot + "fileman/Uploads/"
	};

	config.toolbar = [
	  // ...your toolbar goes here...
	  ["Flmngr", "Upload", "ImgPen"]
	];
	
};
