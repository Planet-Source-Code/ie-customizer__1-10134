This should be placed in the same directory as the application for the View Readme option to work.

*****************************************************
********** IE Title Bar Changer v1.0 ************
*****************************************************
Written by:  Tony Kline of Kline   (email to t-dkline@dellnet.com)

WARNING:  As with any program that modifies the registry, I strongly urge you to backup the 
                     registry.  These files are C:\Windows\System.dat and C:\Windows\User.dat.
	   You can also request a copy of my Registry Backup program and I will gladly email
	    a copy to you.

Although you may distribute this program freely, it may not be modified in any way without my
written consent.  I assume no responsibility for any cause and affect from the use of this program.
By using this program you agree not to hold me liable for any adverse affects that may arise from 
the use of this program.

This program is designed to display the current "Window Title" that displays in the title bar of 
Intenet Explorer 4.x and above and Win9x machines.  I have not tested this on NT or 2000.
Ideally you would want to write to the HKEY_CURRENT_USER, "Software\Microsoft\Internet
 Explorer\Main", "Window Title" registry key if it is a Windows 98 machine and the HKEY_LOCAL_MACHINE,
 "Software\Microsoft\Internet Explorer\Main", "Window Title" registry key if it is a Windows 95 machine.  
However, I have found that if the  machine has been upgraded from Windows 95 to Windows 98 it still goes 
where the Windows 95 would go.  I have not yet found out how to read the registry to check for this upgrade
 so I simply write to both registry keys just in case.   If anyone can provide this information I will
update the program.

