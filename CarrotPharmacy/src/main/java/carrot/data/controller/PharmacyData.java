package carrot.data.controller;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import carrot.service.PharmacyService;
import carrot.vo.Pharmacy;

public class PharmacyData {
	
    // tag값의 정보를 가져오는 메소드
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}

	public static void main(String[] args) {
		String key = "706753506b64627331313247416e595a";
		
		int start = 1;
		int end = 1000;
		int count = 1;
		
		PharmacyService ps = new PharmacyService();
		
		ps.init();
		
		try{
			while(true){
				// parsing할 url 지정(API 키 포함해서)
				String url = "http://openapi.seoul.go.kr:8088/"+ key +"/xml/TbPharmacyOperateInfo/"+start+"/"+ end +"/";
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
				Document doc = dBuilder.parse(url);
				
				// root tag 
				doc.getDocumentElement().normalize();
				System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
				
				// 파싱할 tag
				NodeList nList = doc.getElementsByTagName("row");
				if(nList.getLength() == 0) {
					System.out.println("파싱 완료");
					break;
				}
				System.out.println("파싱할 리스트 수 : "+ nList.getLength());
				
				for(int temp = 0; temp < nList.getLength(); temp++){
					Node nNode = nList.item(temp);
					if(nNode.getNodeType() == Node.ELEMENT_NODE){
						
						Element eElement = (Element) nNode;
						System.out.println("###########"+count+"번째 검색결과"+"###########");
						System.out.println("약국기관ID  : " + getTagValue("HPID", eElement));
						System.out.println("주소  : " + getTagValue("DUTYADDR", eElement));
						System.out.println("약국명 : " + getTagValue("DUTYNAME", eElement));
						System.out.println("전화번호  : " + getTagValue("DUTYTEL1", eElement));
						System.out.println("월요일(오픈)  : " + getTagValue("DUTYTIME1S", eElement));
						System.out.println("월요일(클로즈)  : " + getTagValue("DUTYTIME1C", eElement));
						System.out.println("화요일(오픈)  : " + getTagValue("DUTYTIME2S", eElement));
						System.out.println("화요일(클로즈)  : " + getTagValue("DUTYTIME2C", eElement));
						System.out.println("수요일(오픈)  : " + getTagValue("DUTYTIME3S", eElement));
						System.out.println("수요일(클로즈)  : " + getTagValue("DUTYTIME3S", eElement));
						System.out.println("목요일(오픈)  : " + getTagValue("DUTYTIME4S", eElement));
						System.out.println("목요일(클로즈)  : " + getTagValue("DUTYTIME4S", eElement));
						System.out.println("금요일(오픈)  : " + getTagValue("DUTYTIME5S", eElement));
						System.out.println("금요일(클로즈)  : " + getTagValue("DUTYTIME5S", eElement));
						System.out.println("토요일(오픈)  : " + getTagValue("DUTYTIME6S", eElement));
						System.out.println("토요일(클로즈)  : " + getTagValue("DUTYTIME6S", eElement));
						System.out.println("일요일(오픈)  : " + getTagValue("DUTYTIME7S", eElement));
						System.out.println("일요일(클로즈)  : " + getTagValue("DUTYTIME7S", eElement));
						System.out.println("공휴일(오픈)  : " + getTagValue("DUTYTIME8S", eElement));
						System.out.println("공휴일(클로즈)  : " + getTagValue("DUTYTIME8S", eElement));
						System.out.println("병원경도  : " + getTagValue("WGS84LON", eElement));
						System.out.println("병원위도  : " + getTagValue("WGS84LAT", eElement));
						System.out.println("작업일시  : " + getTagValue("WORK_DTTM", eElement));
						
						Pharmacy pham = new Pharmacy(getTagValue("HPID", eElement)
													, getTagValue("DUTYNAME", eElement)
													, getTagValue("DUTYTEL1", eElement)
													, getTagValue("DUTYTIME1S", eElement)
													, getTagValue("DUTYTIME1C", eElement)
													, getTagValue("DUTYTIME2S", eElement)
													, getTagValue("DUTYTIME2C", eElement)
													, getTagValue("DUTYTIME3S", eElement)
													, getTagValue("DUTYTIME3C", eElement)
													, getTagValue("DUTYTIME4S", eElement)
													, getTagValue("DUTYTIME4C", eElement)
													, getTagValue("DUTYTIME5S", eElement)
													, getTagValue("DUTYTIME5C", eElement)
													, getTagValue("DUTYTIME6S", eElement)
													, getTagValue("DUTYTIME6C", eElement)
													, getTagValue("DUTYTIME7S", eElement)
													, getTagValue("DUTYTIME7C", eElement)
													, getTagValue("DUTYTIME8S", eElement)
													, getTagValue("DUTYTIME8C", eElement));
						
						ps.add(pham);
					}
					count++;
				}
				
				start += 1000;
				end += 1000;
				System.out.println("start : " + start);
				System.out.println("num : " + end);
			}
			
			ps.closeConn();
		} catch (Exception e){	
			e.printStackTrace();
		}
		
	}
}