package com.shc.pt.animation;

import java.util.List;

public interface AnimationMapper {

	List<Animation> getloveco(Animation a);

	int animationdelete(Animation a);

	int reg(Animation a);

	List<Animation> getfantasy(Animation a);

	List<Animation> getromance(Animation a);

	List<Animation> getaction(Animation a);

	List<Animation> getsf(Animation a);

	Object getone(Animation a);

	int animationupdate(Animation a);




}
