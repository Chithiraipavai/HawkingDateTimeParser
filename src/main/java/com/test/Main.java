package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.hawking.HawkingTimeParser;
import com.zoho.hawking.datetimeparser.configuration.HawkingConfiguration;
import com.zoho.hawking.language.english.model.DatesFound;

@Controller
public class Main {

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public void method(@RequestParam("input")String input, HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		int i=0;

		PrintWriter out=response.getWriter();
		String inputText=request.getParameter("input");

		HawkingTimeParser parser=new HawkingTimeParser();
		HawkingConfiguration hawkingconfiguration=new HawkingConfiguration();

		Date date=new Date();
		DatesFound datesfound;
		datesfound=parser.parse(inputText, date, hawkingconfiguration, "eng");

		System.out.println(datesfound.toString());

		out.print("<html>");

		for(i=0;i<datesfound.getParserOutputs().size();i++)
		{
			out.print("<h3>Text: "+datesfound.getParserOutputs().get(i).getText()+"</h3>"+
					"<h3>Start: "+datesfound.getParserOutputs().get(i).getDateRange().getStart()+"</h3>"+
					"<h3>End: "+datesfound.getParserOutputs().get(i).getDateRange().getEnd()+"</h3>");
		}

		out.print("</html>");

	}


	@RequestMapping(value="/config",method=RequestMethod.POST)
	public void method1(@RequestParam("input")String input,@RequestParam("wendstart")String wendstart,@RequestParam("wendend")String wendend,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html");
		int i=0;

		PrintWriter out=response.getWriter();
		String inputText=request.getParameter("input");

		HawkingTimeParser parser=new HawkingTimeParser();
		HawkingConfiguration hawkingconfiguration=new HawkingConfiguration();
		
		String[] Weekendstart= {"None","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
		String[] Weekendend= {"None","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};

		for(i=0;i<Weekendstart.length;i++)
		{
		if(Weekendstart[i].equals(request.getParameter("wendstart")))
		{
			hawkingconfiguration.setWeekEndStart(i);
		}
		}
		for(i=0;i<Weekendend.length;i++)
		{
		if(Weekendend[i].equals(request.getParameter("wendend")))
		{
			hawkingconfiguration.setWeekEndEnd(i);
		}
		}
		Date date=new Date();
		DatesFound datesfound;
		datesfound=parser.parse(inputText, date, hawkingconfiguration, "eng");

		System.out.println(datesfound.toString());

		out.print("<html>");

		for(i=0;i<datesfound.getParserOutputs().size();i++)
		{
			out.print("<h3>Text: "+datesfound.getParserOutputs().get(i).getText()+"</h3>"+
					"<h3>Start: "+datesfound.getParserOutputs().get(i).getDateRange().getStart()+"</h3>"+
					"<h3>End: "+datesfound.getParserOutputs().get(i).getDateRange().getEnd()+"</h3>");
		}

		out.print("</html>");
	}
}
