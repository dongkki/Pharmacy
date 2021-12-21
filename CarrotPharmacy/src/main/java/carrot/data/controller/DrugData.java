package carrot.data.controller;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import carrot.service.DrugService;
import carrot.vo.Drug;

public class DrugData {
	
	   // tag값의 정보를 가져오는 메소드
		private static String getTagValue(String tag, Element eElement) {
		    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		    Node nValue = (Node) nlList.item(0);
		    if(nValue == null) 
		        return null;
		    return nValue.getNodeValue();
		}

		public static void main(String[] args) {
			String key = "I7ex7DyZ3lELbQ9qApUc6H8kFVuXqXc6jscoEQqlByA4KbsbAw65YO2z2gqTk0SZOJKwgDnBCKJlap4GL4NI6Q%3D%3D";
			
			int count = 1;
			int pageNo = 1;
			
			DrugService ds = new DrugService();
			
			ds.init();
			
			try{
				while(true){
					// parsing할 url
					String url = "http://apis.data.go.kr/1471000/DrbEasyDrugInfoService/getDrbEasyDrugList?serviceKey=" + key + "&pageNo=" + pageNo + "&numOfRows=100";
					
					DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
					Document doc = dBuilder.parse(url);
					
					// root tag 
					doc.getDocumentElement().normalize();
					System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
					
					// 파싱할 tag
					NodeList nList = doc.getElementsByTagName("item");
					if(nList.getLength() == 0) {
						System.out.println("파싱 완료");
						break;
					}
					System.out.println("파싱할 리스트 수 : "+ nList.getLength());
					
					for(int temp = 0; temp < nList.getLength(); temp++){
						Node nNode = nList.item(temp);
						if(nNode.getNodeType() == Node.ELEMENT_NODE){
							
							String itemName = null;
							String efcyQesitm = null;
							String useMethodQesitm = null;
							String atpnQesitm = null;
							String intrcQesitm = null;
							String seQesitm = null;
							String depositMethodQesitm = null;
						
							Element eElement = (Element) nNode;
							System.out.println("###########"+count+"번째 검색결과"+"###########");
							System.out.println("제조사  : " + getTagValue("entpName", eElement));
							
							itemName = getTagValue("itemName", eElement);
							if(itemName.contains("(") == true) {
								itemName = (itemName.split("\\("))[0];
							}
							System.out.println("제품명  : " + itemName);							
							System.out.println("의약품번호 : " + getTagValue("itemSeq", eElement));
							
							//효능
							if(getTagValue("efcyQesitm", eElement) == null) {
								efcyQesitm = "-";
								System.out.println("효능 : " + efcyQesitm);
							}else {
								efcyQesitm = getTagValue("efcyQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("효능 : " + efcyQesitm);
							}
							
							//사용법
							if(getTagValue("useMethodQesitm", eElement) == null) {
								useMethodQesitm = "-";
								System.out.println("사용법 : " + useMethodQesitm);
							}else {
								useMethodQesitm = getTagValue("useMethodQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("사용법 : " + useMethodQesitm);
							}
							
							//주의사항 및 경고
							if(getTagValue("atpnQesitm", eElement) == null) {
								atpnQesitm = "-";
								System.out.println("주의사항 및 경고 : " + atpnQesitm);
							}else {
								atpnQesitm = getTagValue("atpnQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("주의사항 및 경고 : " + atpnQesitm);
							}
							
							//상호작용
							if(getTagValue("intrcQesitm", eElement) == null) {
								intrcQesitm = "-";
								System.out.println("상호작용 : " + intrcQesitm);
							}else {
								intrcQesitm = getTagValue("intrcQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("상호작용 : " + intrcQesitm);
							}
							
							//부작용
							if(getTagValue("seQesitm", eElement) == null) {
								seQesitm = "-";
								System.out.println("부작용 : " + seQesitm);
							}else {
								seQesitm = getTagValue("seQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("부작용 : " + seQesitm);
							}
							
							//보관법
							if(getTagValue("depositMethodQesitm", eElement) == null) {
								depositMethodQesitm = "-";
								System.out.println("보관법 : " + depositMethodQesitm);
							}else {
								depositMethodQesitm = getTagValue("depositMethodQesitm", eElement).replace("<p>", "").replace("</p>", "").replace("<sub>", "").replace("</sub>", "").replace("<sup>", "").replace("</sup>", "");
								System.out.println("보관법 : " + depositMethodQesitm);
							}
							
							System.out.println("수정일자  : " + getTagValue("updateDe", eElement));
							
							Drug location = new Drug(getTagValue("itemSeq", eElement), 
													 itemName, 
													 efcyQesitm, 
													 useMethodQesitm, 
													 atpnQesitm, 
													 depositMethodQesitm, 
													 getTagValue("entpName", eElement),
													 "-");
							ds.add(location);
						}
						count++;
					}
					pageNo++;
				}
				ds.closeConn();
			} catch (Exception e){	
				e.printStackTrace();
			}
			
		}
		
}
