package MyServlet;

import java.util.*;
import java.io.*;

public class MyTask extends TimerTask
{
	public void run()
	{
		Date dt = new Date();
		System.out.println(dt + ",定时器工作...");
	}

}
