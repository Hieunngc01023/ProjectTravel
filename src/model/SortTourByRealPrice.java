package model;

import java.util.Comparator;

public class SortTourByRealPrice implements Comparator<TourModel>{

	@Override
	public int compare(TourModel o1, TourModel o2) {
		if(o1.getRealPrice()> o2.getRealPrice())
			return 1;
		else if(o1.getRealPrice() == o2.getRealPrice())
			return 0;
		else
			return -1;
	}

}
