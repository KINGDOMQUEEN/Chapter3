package MyHello;

import java.awt.*;
import java.awt.image.*;
import java.awt.font.*;
import java.io.*;
import javax.swing.*;
import com.sun.image.codec.jpeg.*;
import java.text.*;

public class WaterMark
{
	public boolean addMark(String file)
	{
		boolean flag = true;
		int markSize = 0;
		int x = 30, y = 30;
		String str = "Java EE 企业应用开发技术";
		String font = "宋体";
		try
		{
			ImageIcon imgIcon = new ImageIcon(file);
			Image img = imgIcon.getImage();
			int width = img.getWidth(null);
			int height = img.getHeight(null);
			markSize = height/20 ;
			y = y + markSize;
			BufferedImage image = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			Graphics g = image.createGraphics();
			g.setColor(Color.RED); 
		   // g.setBackground(Color.white); 
		    g.drawImage(img, 10, 10, width, height, null);
		    
			Font strFont = new Font(font, Font.PLAIN, markSize);
			g.getFontMetrics(strFont);
			g.drawString(str, x, y);
			g.dispose();
			FileOutputStream output = new FileOutputStream(file);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
			encoder.encode(image);

		} catch (Exception e)
		{
			flag = false;
		}
		return flag;
	}
}