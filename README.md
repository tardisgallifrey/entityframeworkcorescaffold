<h1>Database First Console Project Generator Script</h1>
<h3>Using Microsoft EntityFramework Core</h3>
<hr>

<p>These two bash scrips will work on Linux MicroSoft .NET Core enabled machines.  One could probably build the same for 
a Windows 10 or Windows Server machine, but that will be up to you all.</p>
<p>On the command line, you will have to give the name of the database, your user name, and your password in order to 
create the basic folders, C# .NET Console Program project, and scaffold the database tables (entities) into DbContext classes and 
Database Model classes.</p>
<p>However, the Console Program generated is just a basic 'Hello World' program.  You will have to modify the class and add needed 
classes to develop a database program.  In the script, you can substitute any of the legal ASPnet or .NET projects in place of 'new 
console', such as 'new web' for a blank web app.</p>

<p>Script ends by loading Visual Studio Code and the just built project.  Comment out or remove this line if you 
wish not to use VS Code.</p>

<p>As always, use at your own risk and modify as needed.</p>
