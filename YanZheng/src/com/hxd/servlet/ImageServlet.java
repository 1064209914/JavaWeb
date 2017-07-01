package com.hxd.servlet;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet("/servlet/ImageServlet")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ImageServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置页面不缓存
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);	
		
		//1.定义BUfferedImage对象
		int width=68,height=28;
		BufferedImage bufferedImage=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		
		//2.获取图形上下文 Graphics 画出边框 和底色
		Graphics g=bufferedImage.getGraphics();
		g.setColor(new Color(214, 253, 94));
		g.fillRect(0,0, width, height);
		
		
		char[] ziduan="qwertyuioplkjhgfdsazxcvbnmMNBVCXZLKJHGFDSAPOIUYTREWQ123456789".toCharArray();
		
		//3.通过Random生成随机数
		Random r=new Random();
		int index;
		// 定义一个Stringbuffer 存贮字符串
		StringBuffer sb=new StringBuffer();
		for (int i = 0; i < 4; i++) {
			index=r.nextInt(ziduan.length);
			//使用另外的颜色
			g.setColor(new Color(r.nextInt(80), r.nextInt(200), r.nextInt(255)));
			//4.画出来
			g.drawString(ziduan[index]+"", (i*15)+3, 18);
			sb.append(ziduan[index]);
		}
		
		//5.保存在会话里
		request.getSession().setAttribute("piccode", sb.toString());
		
		//6. 使用ImageIO输出
		ImageIO.write(bufferedImage, "JPG",response.getOutputStream());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
