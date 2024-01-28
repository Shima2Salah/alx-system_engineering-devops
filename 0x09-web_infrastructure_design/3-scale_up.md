This updated web infrastructure represents a scaled-up version of its predecessor. Notably, all Single Points of Failure (SPOFs) have been eliminated, and the key components—web server, application server, and database servers—now reside on distinct GNU/Linux servers. SSL protection is not terminated at the load balancer, and each server's network benefits from individual firewall protection, coupled with ongoing monitoring.

Details About This Infrastructure:

Firewall Implementation:
A firewall is introduced between each server, enhancing protection against unwanted and unauthorized users. This decentralized approach prioritizes safeguarding each server individually, eliminating reliance on a single protective barrier.
Issues With This Infrastructure:

High Maintenance Costs:
The decision to allocate each major component to a dedicated server entails increased acquisition costs for additional servers. The company's electricity expenses would surge due to the operation of both existing and new servers. Allocating funds for server purchases and covering the associated electricity consumption presents a financial challenge for the company.
