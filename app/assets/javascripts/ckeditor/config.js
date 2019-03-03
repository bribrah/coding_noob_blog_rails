CKEDITOR.editorConfig = function( config )
{
  config.extraPlugins = 'youtube,eqneditor,image2,lineutils,widget,dialog,dialogui';
   // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Link tab of Image dialog.
   config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";

   // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
   config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
 
   // The location of a script that handles file uploads in the Image dialog.
   config.filebrowserImageUploadUrl = "/ckeditor/pictures?";
 
   // The location of a script that handles file uploads.
   config.filebrowserUploadUrl = "/ckeditor/attachment_files";
 
   config.allowedContent = true;
};