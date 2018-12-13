package com.amazon.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CodeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//写验证码   就是一张图片  
		//有一张图片
		BufferedImage image = new BufferedImage(100,23,BufferedImage.TYPE_INT_RGB);
		//获取图片上下文   获取在这张图片上面画东西的画笔
		Graphics g = image.getGraphics();
		//画个背景
		Random r = new Random();
		g.setColor(new Color(r.nextInt(256),r.nextInt(256),r.nextInt(256)));
		g.fillRect(0, 0, 100, 23);
		//画验证码上去
		String code = createString(5);
		//将验证码添加在session中
		HttpSession session = req.getSession();
		session.setAttribute("code", code);
		
		g.setColor(Color.black);
		g.setFont(new Font("宋体",Font.ITALIC,20));
		g.drawString(code, 10, 20);
		//压缩图片
		resp.setContentType("image/jpeg");//jpg
		//PrintWriter  pw = resp.getWriter();
		//每一次只能从响应中获取一个流  获取了PrintWriter 就不能获取  OutputStream，反之亦然
		OutputStream out = resp.getOutputStream();
		ImageIO.write(image, "jpeg", out);
		out.close();//往死里敲
	}
	//公开的    private  私有的    static 是否是静态  返回值类型
	//方法名  (参数列表:参数个数，参数类型，参数的顺序)   
	public  String createString(int n) {
		String str = "QWERTYUIOPASDFGHJKLZXCVBNM";
		//0------------------------25
		String code = "";
		Random r = new Random();//API  1是个种子  种子的值  当前系统的毫秒数
		//生成伪随机数的工具
		//生成一个整数
		//返回的结果是-2147483648   2147483647
		//char c = str.charAt(2);  可以通过随机下标生成随机的符号
		boolean[] flag = new boolean[26];
		//{false,false,false,false,false,.......}
		//{  0     1     2    3      4  ..... 25}
		//如果两个随机数的种子一样，那么生成随机数的序列一致
		//Random r = new Random(2);  1 8 9 4
		//Random r2 = new Random(2); 1 8 9 4
		//Random r3 = new Random(3); 3 5 7 9
		for(int i=0;i<n;) {
			int index = r.nextInt(26);//返回的数的范围是 [0,26)
			if(!flag[index]) {
				code += str.charAt(index);
				flag[index] = true;
				i++;
			}
		}
		return code;
	}
}
