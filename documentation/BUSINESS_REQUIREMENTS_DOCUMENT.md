# BUSINESS REQUIREMENTS DOCUMENT
## Hyperlocal Retail Marketplace & On-Demand Delivery
**Business Analyst portfolio case study | Pilot: UTC / La Jolla, San Diego | Version 1.0**

> **Evidence discipline:** This is a proposed business concept. All order data is synthetic and illustrative. Retailer names are prospective examples only; no retailer partnerships, API access, customer demand, or live operations are claimed. Pricing and payout figures are assumptions to test.

## 1. Executive summary
The proposed platform is a hyperlocal, multi-category marketplace connecting customers with participating nearby physical retailers. Customers discover products by store, category, map, or product search; add products from one or multiple stores to one cart; check out once; and receive retailer-prepared packages through a local delivery-partner network.

The key operating distinction is that retailer employees confirm inventory, accept orders, prepare and label packages, and mark them ready. Delivery partners collect prepared packages; they do not shop the aisles or check out for customers. Retailers may use existing pickup capability or enter a proposed pickup partnership with the platform.

## 2. Business problem and opportunity hypothesis
Customers may know a product is sold nearby but cannot easily confirm local availability, combine purchases across stores, or arrange rapid delivery. Retailers may have local inventory and store staff but lack a unified marketplace and flexible last-mile delivery channel.

The opportunity hypothesis is to reduce friction between local product discovery, retailer confirmation, multi-store checkout, store preparation, and delivery. Validate through customer interviews, retailer discovery, pilot tests, and unit-economics analysis.

## 3. Pilot and objectives
**Initial geography:** UTC / La Jolla, San Diego. This is a proposed pilot boundary, not a commitment to cover all San Diego.
Objectives: validate demand; secure willing retailer participation; test inventory confirmation and preparation; assess multi-store route feasibility; provide transparent partner compensation; test sustainable unit economics.

## 4. Scope
### In scope
- All eligible retail categories offered by participating retailers: fashion, footwear, beauty, electronics, home, grocery/essentials, sporting goods, books/gifts, pet supplies, and other permitted goods.
- Product-first search, store browsing, and map discovery.
- One checkout across multiple retailer sub-orders.
- Retailer confirmation of inventory before fulfillment.
- Retailer-prepared, labeled packages and pickup-ready status.
- Delivery offers that partners may accept or decline after seeing payout, stops, route, distance, and estimated time.
- Express target of up to 60 minutes when feasible and standard same-day delivery.
- Dynamic serviceability based on actual route feasibility, not a fixed radius.
- Membership, itemized fees, refunds, substitutions, and payout workflows.
- API integration where approved and merchant portal for retailers without integration.

### Out of scope for initial pilot
- Guaranteeing 60-minute delivery for every address or retailer.
- Listing retailer inventory without permission or a reliable availability source.
- Automatic substitutions without customer approval.
- Drivers shopping for products.
- Nationwide rollout or every product category without onboarding and compliance review.
- Claims of confirmed partnerships with named retailers.

## 5. Stakeholders
| Stakeholder | Primary need / responsibility |
|---|---|
| Customers | Discover products, transparent checkout, accurate status, delivery and refunds |
| Retailers / store staff | Inventory confirmation, order acceptance, preparation, labeling and handoff |
| Delivery partners | Transparent offers, safe pickup, voluntary acceptance, fair payout |
| Platform operations | Dispatch, support, exception resolution and partner quality |
| Product / engineering | Apps, merchant portal, integrations, payments and dispatch |
| Finance / payments | Payment allocation, settlement, payouts, refunds and reconciliation |
| Legal / compliance | Retailer agreements, insurance, worker classification, privacy and payment rules |

## 6. End-to-end customer and fulfillment journey
1. Customer enters delivery address and browses stores, categories, map, or product search.
2. Customer selects product variants such as size and color from participating retailers.
3. Platform checks availability or requests retailer confirmation.
4. Customer sees product totals, delivery fee, extra-stop and distance surcharges, membership benefits, tax, and total before checkout.
5. Customer pays once through a marketplace payment provider.
6. Platform creates a parent order and separate retailer sub-orders.
7. Retailers accept/reject, prepare and label packages, then mark them ready.
8. Dispatch offers a route to eligible partners, showing stops, route, estimated time, distance and payout.
9. Partner accepts or declines. Dispatch normally waits until all packages are ready; split delivery may be offered with customer and partner agreement.
10. Customer receives per-store status updates and proof of delivery.
11. Partner earnings become available after successful completion; withdrawal options are free next-business-day or fee-based instant transfer, subject to provider capability.

## 7. Business rules
- BR-01 Only authorized participating retailers may list products or accept marketplace orders.
- BR-02 Inventory must be confirmed before an item is represented as fulfillable.
- BR-03 A multi-store checkout creates one parent order and retailer-specific sub-orders.
- BR-04 Retailer staff prepare and label packages; drivers collect prepared packages.
- BR-05 Dispatch normally waits until all packages are ready. Split delivery requires an updated offer and appropriate customer/partner acceptance.
- BR-06 Delivery offers show route, stops, estimated time, distance and payout before acceptance.
- BR-07 Partner acceptance is voluntary; declining an offer alone is not a cancellation.
- BR-08 Substitutions require customer approval; no automatic substitutions.
- BR-09 If an item is unavailable, customer may accept a partial order/refund or cancel the full order under the published cutoff policy.
- BR-10 Cancellations are categorized by customer, retailer, partner, platform, and safety cause.
- BR-11 Reliability monitoring uses rolling windows, warnings and review; no automatic penalties for circumstances outside partner control.
- BR-12 All customer fees and surcharges are disclosed before payment.
- BR-13 Partner compensation considers base pay, active time, distance, additional stops and verified waiting.
- BR-14 Partner earnings become available after successful delivery, subject to provider settlement rules.
- BR-15 Partner withdrawal offers free next-business-day transfer or fee-based instant transfer, subject to bank/provider eligibility.
- BR-16 Partner onboarding requires identity, driver's license, vehicle registration, appropriate insurance, and lawful background/driving checks.
- BR-17 Membership terms, trial, renewal and cancellation are disclosed; unlimited free delivery is not promised.

## 8. Functional requirements
| ID | Requirement | Priority |
|---|---|---|
| FR-01 | Search by product, brand, category, size and color | Must |
| FR-02 | Browse participating stores and view on map | Must |
| FR-03 | Display only authorized retailer listings | Must |
| FR-04 | Validate delivery serviceability and route feasibility | Must |
| FR-05 | Add products from multiple retailers to one cart | Must |
| FR-06 | Complete one checkout for multi-retailer order | Must |
| FR-07 | Create parent order and retailer sub-orders | Must |
| FR-08 | Retailer confirms stock and accepts/rejects order | Must |
| FR-09 | Retailer updates preparation and pickup-ready status | Must |
| FR-10 | Merchant portal manages products, variants, prices and stock | Must |
| FR-11 | Approved API integration for inventory/order updates | Should |
| FR-12 | Customer substitution preferences and approval | Must |
| FR-13 | Per-retailer order status visible to customer | Must |
| FR-14 | Delivery offer displays route, stops, time, distance and payout | Must |
| FR-15 | Partner can accept or decline delivery offer | Must |
| FR-16 | Calculate payout using time, distance, stops and wait | Must |
| FR-17 | Itemize delivery fee and distance/route surcharges | Must |
| FR-18 | Refund and cancellation workflows by cause | Must |
| FR-19 | Partner wallet and payout history | Should |
| FR-20 | Standard and instant withdrawal choices | Should |
| FR-21 | Membership trial, recurring billing, benefits and cancellation | Should |
| FR-22 | Operations KPI dashboard | Must |

## 9. Nonfunctional requirements
Security: role-based access, encryption, least privilege. Privacy: data minimization, consent and retention rules. Reliability: prevent duplicate charges, orders and payouts with idempotency and reconciliation. Auditability: timestamp and actor history for inventory, status, cancellations, refunds and payouts. Performance: responsive search and checkout at pilot load. Accessibility: recognized accessibility standards. Observability: alerts for integration, payment, dispatch and notification failures.

## 10. Pricing and partner compensation hypotheses
Proposed test assumptions—not validated market rates:
- Standard same-day delivery: $6.99 starting fee.
- Express target delivery: $10.99 starting fee, subject to feasibility.
- Additional retailer stop: +$2.50 customer-facing supplement.
- Extra distance/route surcharge: based on incremental driving time, distance and route complexity; shown before checkout.
- Membership: $5.99/month proposed price, 14-day trial; reduced fees, occasional qualifying free standard delivery and discounted Express.
- Retailer revenue: negotiated commission plus modest transaction fee.
- Partner compensation: base + active time + distance + additional stops + verified waiting. Final rates require testing.

**Contribution formula:** delivery revenue + distance surcharge + retailer commission + retailer transaction revenue + allocated membership revenue − partner payout − payment processing − refunds/credits − other variable fulfillment/support costs. Do not count the entire delivery fee as platform margin or double-count membership revenue.

## 11. Payment and settlement design
Customer pays once at checkout. Use a marketplace payment provider designed for connected accounts/split payments, refunds, retailer settlement and partner payouts. The platform must not assume it can hold customer funds in its ordinary bank account. Partner earnings become payable after successful delivery; instant transfer may carry a provider/bank fee while standard next-business-day transfer is free if supported. Retailer settlement timing remains a negotiated and provider/legal decision. Finance/legal review is required before launch.

## 12. Cancellation, substitution and exception policy
- Retailer stock unavailable: offer available variants or alternatives for customer approval; otherwise refund the unavailable item. Customer may cancel the full order under policy.
- Retailer preparation delay: notify customer; wait, re-dispatch, or offer customer-approved split delivery.
- Partner cancels before pickup: re-offer to another partner; refund if service cannot be completed within an acceptable window.
- Customer cancellation: eligibility depends on retailer acceptance/preparation/release stage and disclosed terms.
- Safety/emergency/app failure: review without automatic partner penalty.
- Repeated avoidable partner cancellations: rolling-window monitoring, warning, review, temporary restriction or deactivation. Any financial penalty requires legal review and clear contractual disclosure.

## 13. Partner onboarding and reliability
Before activation verify government ID, driver's license, vehicle registration, appropriate insurance for paid delivery, and lawful background/driving checks. Track document expiry and suspend offer access when mandatory credentials expire. Monitor acceptance (not penalize declining), accepted-offer cancellation, on-time pickup, completion, customer issues and effective earnings per active hour.

## 14. Risks and mitigations
| Risk | Mitigation |
|---|---|
| Inventory mismatch | Retailer confirmation, stock timestamp and integration where available |
| Slow store preparation | Preparation metrics, retailer readiness commitments and dispatch only when ready |
| Retailer declines pickup model | Recruit willing pilot stores; standard merchant agreement and portal |
| Multi-store route complexity | Route optimization, stop caps, customer-approved split delivery |
| Partner shortage | Controlled operating hours, service area and partner supply planning |
| Negative unit economics | Scenario analysis and sensitivity testing before expansion |
| Payment compliance / reconciliation | Marketplace provider, finance/legal review, auditable ledger |
| Excessive customer promise | Show realistic ETA and fees before checkout |

## 15. Pilot recommendation
Start with a small cohort of willing UTC / La Jolla retailers and a limited partner pool. Include categories only where inventory can be confirmed and packages can be prepared reliably. Cap route complexity and operating hours. Measure completion, inventory accuracy, preparation/wait times, on-time delivery, partner earnings, refunds, repeat use and contribution before expansion.

## 16. Open validation items
Actual retailer commission/transaction rates; payment provider and fund-flow structure; partner payout rates and minimum earning safeguards; instant withdrawal provider fee; exact membership thresholds; retailer prep SLAs and integration feasibility; customer demand/willingness to pay; service-level definitions; insurance, worker classification, consumer protection, privacy and local legal requirements.

## 17. Portfolio limitations
Synthetic data is for demonstrating analysis only, not real company performance. Retailer names are prospects, not confirmed partners. Pricing and financial scenarios are assumptions, not forecasts. Contribution proxy excludes taxes, fixed overhead, support labor, insurance, marketing, chargebacks and other costs; it is not profit.
