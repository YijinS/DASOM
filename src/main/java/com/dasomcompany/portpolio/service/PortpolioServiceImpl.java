package com.dasomcompany.portpolio.service;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.dasomcompany.dao.PortpolioDao;
import com.dasomcompany.dto.CounsDto;
import com.dasomcompany.dto.PortpolioDto;

@Service
public class PortpolioServiceImpl implements PortpolioService {

	@Autowired
	private PortpolioDao portpolioDao;

	@Override
	public void insertPort(HttpServletRequest request) {

		String title = request.getParameter("title");
		String content = request.getParameter("content");

		PortpolioDto portpolioDto = new PortpolioDto();
		portpolioDto.setTitle(title);
		portpolioDto.setContent(content);
		System.out.println();
		System.out.println();
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+title+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+content+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println();
		System.out.println();

		portpolioDao.insert(portpolioDto);

	}

	@Override
	public void getList(HttpServletRequest request) {
		PortpolioDto dto = new PortpolioDto();

		// startRowNum 과 endRowNum 을 CafeDto 객체에 담고

		List<PortpolioDto> list = portpolioDao.getList(dto);

		//view 페이지에서 필요한 값을 request 에 담고 
		request.setAttribute("list", list);

	}

	@Override
	public void getData(int num, ModelAndView mView) {
		PortpolioDto dto = portpolioDao.getData(num);
		
		mView.addObject("dto", dto);
		
	}

	@Override
	public void delete(int num) {
		portpolioDao.delete(num);
		
	}

	@Override
	public void getUpdateData(int num, ModelAndView mView) {
		PortpolioDto dto = portpolioDao.getData(num);
		mView.addObject("dto", dto);
		
	}

	@Override
	public void updateNotice(PortpolioDto dto) {
		portpolioDao.update(dto);
		
	}

}
