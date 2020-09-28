# $Header: /var/cvs/mbdyn/mbdyn/mbdyn-web/documentation/examples/beam.elm,v 1.2 2008/11/05 20:47:14 masarati Exp $

# body: BODY_LABEL, NODE_LABEL,
#    mass
#    reference node offset
#    inertia tensor

body: 1000 + curr_node, curr_node,
	m,
	null,
	diag, 1./12.*(h^2+w^2)*m, 1./12.*(dL^2+w^2)*m, 1./12.*(dL^2+h^2)*m;

body: 1000 + curr_node + 1, curr_node,
	m,
	null,
	diag, 1./12.*(h^2+w^2)*m, 1./12.*(dL^2+w^2)*m, 1./12.*(dL^2+h^2)*m;


# beam 3 nodes
# NODE1_LABEL, offset
# NODE2_LABEL, offset
# NODE3_LABEL, offset
# orientation from node
# CONSTUTIVE LAW: EA, GAy, GAz, GJ, EJy, EJz
#linear elastic generic, diag,
#EA, GAy, GAz, GJ, EJy, EJz,


beam3: 100+curr_node,
	curr_node - 1, null,
	curr_node, null,
	curr_node + 1, null,
	eye,
	linear viscoelastic generic,
		diag, E*A, G*A*5./6., G*A*5./6., G*Jp, E*Jy, E*Jz,
        diag, damp*E*A, damp*G*A*5./6., damp*G*A*5./6., damp*G*Jp, damp*E*Jy, damp*E*Jz,
#		proportional, damp,
	same,
	same;
