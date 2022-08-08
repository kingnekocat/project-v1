package com.shc.pt.review;

import java.util.List;

public interface ReviewMapper {

	List<Review> getreview(Review r);

	int reviewreg(Review r);

	int reviewdelete(Review r);

	Object getonereview(Review r);

	int updatereview(Review r);

}
