package org.used.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.used.domain.NoticeBoardVO;
import org.used.service.NoticeBoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeBoardServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private NoticeBoardService service;
	
//	@Test
//	public void testPrint(){
//		
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testRegister(){
//		NoticeBoardVO vo = new NoticeBoardVO();
//		vo.setNotice_title("�깉濡� �벑濡앺븯�뒗 �젣紐�");
//		vo.setNotice_contents("�깉濡� �옉�꽦�븯�뒗 �궡�슜");
//		vo.setNotice_writer("newbie");
//		
//		service.register(vo);
//		
//		log.info("�깮�꽦�맂 寃뚯떆臾쇱쓽 踰덊샇: " + vo.getNotice_id());
//		
//	}
	
//	@Test
//	public void testGetList(){
//		service.getList().forEach(vo -> log.info(vo));
//	}

//	@Test
//	public void testGet(){
//		log.info(service.get(50L));
//	}
	
	@Test
	public void testDelete(){
		
		log.info("remove result: " + service.remove(50L));
	}
	
	@Test
	public void testUpdate(){
		
		NoticeBoardVO vo = service.get(1L);
		
		if (vo == null) {
			return;
		}
		
		vo.setNotice_title("service�뀒�뒪�듃���씠��");
		log.info("update: " + service.modify(vo));
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
