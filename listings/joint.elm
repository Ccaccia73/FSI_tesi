joint: 500+curr_node, total joint,
	ROOT,
		position, null,
		position orientation, eye,
		rotation orientation, eye,
	curr_node,
		position, null,
		position orientation, eye,
		rotation orientation, eye,

	position constraint, 0, 0, 1, null,
	
	orientation constraint, 1, 1, 0, null;
	
joint: 500+curr_node+1, total joint,
	ROOT,
		position, null,
		position orientation, eye,
		rotation orientation, eye,
	curr_node+1,
		position, null,
		position orientation, eye,
		rotation orientation, eye,

	position constraint, 0, 0, 1, null,
	
	orientation constraint, 1, 1, 0, null;

