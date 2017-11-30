package com.neu.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.neu.dao.EventDao;
import com.neu.entity.EventInfo;

@Controller
@SessionAttributes({ "CodeList", "EventList" })
public class EventController {

	@Autowired
	@Qualifier("EventDao")
	private EventDao eventDao;

	public EventInfo getWeekDates(int i) {
		EventInfo ei = new EventInfo();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		int dayOfWeek = c.get(Calendar.DAY_OF_WEEK);

		if (c.getFirstDayOfWeek() == Calendar.SUNDAY) {
			c.add(Calendar.DAY_OF_MONTH, 1);
		}
		c.add(Calendar.DAY_OF_MONTH, -dayOfWeek + i * 7);
		ei.setD1(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD2(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD3(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD4(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD5(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD6(sdf.format(c.getTime()));
		c.add(Calendar.DAY_OF_MONTH, 1);
		ei.setD7(sdf.format(c.getTime()));

		return ei;
	}

	// Show all info
	@RequestMapping("showEventByWeek")
	public ModelAndView allGroupShow(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int index = (int) session.getAttribute("index");
		String ind = request.getParameter("index");
		if (ind != null) {
			switch (ind) {
			case "l":
				index = index - 1;
				session.setAttribute("index", index);
				break;
			case "n":
				index = index + 1;
				session.setAttribute("index", index);
				break;
			}
		}
		EventInfo ei = getWeekDates(index);
		List<EventInfo> list = eventDao.getEventByWeek(ei);
		SimpleDateFormat dateFm = new SimpleDateFormat("E: yyyy-MM-dd", Locale.ENGLISH);
		for (EventInfo e : list) {
			String datestr = dateFm.format(e.getDates());
			e.setDatestr(datestr);
		}
		request.setAttribute("list_size", list.size());
		map.addAttribute("CodeList", list);
		return new ModelAndView("code-list");
	}

	@RequestMapping("openExcels")
	public ModelAndView openexcel(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int index = (int) session.getAttribute("index");

		EventInfo ei = getWeekDates(index);
		List<EventInfo> list = eventDao.getEventByWeek(ei);
		SimpleDateFormat dateFm = new SimpleDateFormat("E: yyyy-MM-dd", Locale.ENGLISH);
		for (EventInfo e : list) {
			String datestr = dateFm.format(e.getDates());
			e.setDatestr(datestr);
		}
		request.setAttribute("list_size", list.size());
		map.addAttribute("CodeList", list);
		return new ModelAndView("openExcel");
	}

	@RequestMapping("showAllEvent")
	public ModelAndView allEvent(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		List<EventInfo> list = eventDao.getAllEvent();
		SimpleDateFormat dateFm = new SimpleDateFormat("E: yyyy-MM-dd", Locale.ENGLISH);
		for (EventInfo e : list) {
			String datestr = dateFm.format(e.getDates());
			e.setDatestr(datestr);
		}
		request.setAttribute("list_size", list.size());
		map.addAttribute("CodeList", list);
		return new ModelAndView("enroll-list");
	}

	// select info by stu_number
	@RequestMapping("selectEvent")
	public ModelAndView selectCodeByNo(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
		String event = request.getParameter("event");
		List<EventInfo> byno_list = eventDao.getEventByContent(event);
		if (byno_list.size() != 0) {

			SimpleDateFormat dateFm = new SimpleDateFormat("E: yyyy-MM-dd", Locale.ENGLISH);
			for (EventInfo e : byno_list) {
				String datestr = dateFm.format(e.getDates());
				e.setDatestr(datestr);
			}
			request.setAttribute("list_size", byno_list.size());
			map.addAttribute("CodeList", byno_list);
			return new ModelAndView("enroll-list");
		}
		return new ModelAndView("event-list-none");
	}

	@RequestMapping("deleteEvent")
	public void deleteEvent(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		int id = Integer.parseInt(request.getParameter("id"));
		String slot = request.getParameter("slot");

		EventInfo e = new EventInfo();
		e.setId(id);

		switch (slot) {
		case "1":
			e.setS0to4("-");
			eventDao.update1ById(e);
			break;
		case "2":
			e.setS4to8("-");
			eventDao.update2ById(e);
			break;
		case "3":
			e.setS8to12("-");
			eventDao.update3ById(e);
			break;
		case "4":
			e.setS12to16("-");
			eventDao.update4ById(e);
			break;
		case "5":
			e.setS16to20("-");
			eventDao.update5ById(e);
			break;
		case "6":
			e.setS20to24("-");
			eventDao.update6ById(e);
			break;
		}

	}

	@RequestMapping("updateCode")
	public ModelAndView showcodeupdate(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		String id = request.getParameter("id");
		String slot = request.getParameter("slot");
		String day = request.getParameter("day");

		request.setAttribute("id", id);
		request.setAttribute("slot", slot);
		request.setAttribute("day", day);
		return new ModelAndView("code-update");
	}

	@RequestMapping("updateCode2")
	public ModelAndView codeupdate(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		int id = Integer.parseInt(request.getParameter("id"));
		String slot = request.getParameter("slot");
		String content = request.getParameter("content");
		EventInfo e = new EventInfo();
		e.setId(id);

		switch (slot) {
		case "1":
			e.setS0to4(content);
			eventDao.update1ById(e);
			break;
		case "2":
			e.setS4to8(content);
			eventDao.update2ById(e);
			break;
		case "3":
			e.setS8to12(content);
			eventDao.update3ById(e);
			break;
		case "4":
			e.setS12to16(content);
			eventDao.update4ById(e);
			break;
		case "5":
			e.setS16to20(content);
			eventDao.update5ById(e);
			break;
		case "6":
			e.setS20to24(content);
			eventDao.update6ById(e);
			break;
		}

		HttpSession session = request.getSession();
		int index = (int) session.getAttribute("index");
		EventInfo eei = getWeekDates(index);

		List<EventInfo> list = eventDao.getEventByWeek(eei);
		SimpleDateFormat dateFm = new SimpleDateFormat("E: yyyy-MM-dd", Locale.ENGLISH);
		for (EventInfo ei : list) {
			String datestr = dateFm.format(ei.getDates());
			ei.setDatestr(datestr);
		}
		request.setAttribute("list_size", list.size());
		map.addAttribute("CodeList", list);
		return new ModelAndView("code-list");
	}
}
