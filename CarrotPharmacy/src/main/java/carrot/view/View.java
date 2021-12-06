package carrot.view;

import java.util.List;

import carrot.service.LocationService;
import carrot.service.PbookMarkService;
import carrot.service.PhamUserService;
import carrot.vo.Location;
import carrot.vo.PBookMark;
import carrot.vo.PhamUser;

public class View {

	private static PhamUserService pus = new PhamUserService();
	private static LocationService ls = new LocationService();
	private static PbookMarkService pms = new PbookMarkService();
	
	public static void main(String[] args) {
//		List<PhamUser> list1 = null;
//		List<Location> list2 = null;
//		List<PBookMark> list3 = null;
//
//		list1 = pus.selectAll();
//		for (PhamUser phamUser : list1) {
//			System.out.println(phamUser);
//		}
//		
//		list2 = ls.selectAll();
//		for (Location location : list2) {
//			System.out.println(location);
//		}
//		
//		list3 = pms.selectAll();
//		for (PBookMark pbookMark : list3) {
//			System.out.println(pbookMark);
//		}
		System.out.println();
	}

}
