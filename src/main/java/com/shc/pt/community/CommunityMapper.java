package com.shc.pt.community;

import java.util.List;

public interface CommunityMapper {

	List<Community> getcommunity(Community c);

	Object getonecommunity(Community c);

	int regcommunity(Community c);

	int deletecommunity(Community c);

	int communityUpdate(Community c);

}
