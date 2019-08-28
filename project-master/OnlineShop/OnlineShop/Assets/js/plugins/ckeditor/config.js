/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
    config.syntaxhighlight_lang = "csharp";
    config.syntaxhighlight_hideControls = true;
    config.language = "vi";
    config.filebrowserBrowserUrl = "/Assets/js/plugins/ckfinder/ckfinder.html";
    config.filebrowserImageBrowserUrl = "/Assets/js/plugins/ckfinder/ckfinder.html?Type=Image";
    config.filebrowserFlashBrowserUrl = "/Assets/js/plugins/ckfinder/ckfinder.html?Type=Flash";
    config.filebrowserUploadUrl = "/Assets/js/plugins/ckfinder/core/connector/aspx/connector.aspx?QuickUpload&type=File";
    config.filebrowserImageUploadUrl = "/Data";
    config.filebrowserFlashUploadUrl = "/Assets/js/plugins/ckfinder/core/connector/aspx/connector.aspx?QuickUpload&type=Flash";

    CKFinder.setupCKEditor(null, '/Assets/js/plugins/ckfinder/')
};
