OpenXML Document Viewer
=======================

OpenXML is a free and open standard from Microsoft. MS Word 2007 document files are stored using OpenXML. The OpenXML Document Viewer application is a browser plugin, that can be used on computers which dont have Microsoft Office 2007, to view the Word 2007 files using just the browser.

The OpenXML Viewer browser plugin translates the Word 2007 file into HTML so that it can be viewed on a browser.

Supported OS
============
Microsoft Windows (XP, Vista, Server 2003, Server 2008)
Linux (tested on OpenSUSE 11)

Supported Browsers
==================
Mozilla Firefox 3.x
Opera 9.62
IE 7, IE 8


Usage Information
=================
The document translation can be triggered from the command-line. 
Run the following command from the command prompt to convert the docx file to xHtml.


OpenXMLViewer source_file dest_path browser_type


OpenXmlViewer :  The name of the executable file
source_file   :  The complete source document file 
dest_path     :  The destination folder for the converted file
browser_type  :  Should be either FIREFOX, OPERA or IE

When IE is selected, the output is of type html. When it is FIREFOX or OPERA, the output is of type xhtml.

E.g. 
OpenXMLViewer D:\Input.docx D:\ouput IE


More Information
================
Please visit http://www.codeplex.com/OpenXMLViewer for more information and updates