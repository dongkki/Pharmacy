package carrot.data.controller;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import carrot.service.LocationService;
import carrot.vo.Location;

public class LocationData {
	
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
		
		LocationService ls = new LocationService();
		
		ls.deleteAll();
		
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
						
						String[] gu = getTagValue("DUTYADDR", eElement).split(" ");
						System.out.println("자치구 : " + gu[1].toString());
								
						System.out.println("약국명 : " + getTagValue("DUTYNAME", eElement));
						System.out.println("병원경도  : " + getTagValue("WGS84LON", eElement));
						System.out.println("병원위도  : " + getTagValue("WGS84LAT", eElement));
						System.out.println("작업일시  : " + getTagValue("WORK_DTTM", eElement));
						
						Location location = new Location(getTagValue("HPID", eElement),
														 gu[1].toString(),
														 getTagValue("DUTYADDR", eElement),
														 getTagValue("WGS84LAT", eElement),
														 getTagValue("WGS84LON", eElement));
						ls.add(location);
					}
					count++;
				}
				
				start += 1000;
				end += 1000;
				System.out.println("start : " + start);
				System.out.println("num : " + end);
			}
			ls.closeConn();
		} catch (Exception e){	
			e.printStackTrace();
		}
		
	}
}