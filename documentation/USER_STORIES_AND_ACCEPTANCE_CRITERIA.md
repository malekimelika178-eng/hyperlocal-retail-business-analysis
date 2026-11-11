# User Stories and Acceptance Criteria

## US-01
As a customer, I want to search by product, brand, size and color so I can find a specific item nearby.

**Acceptance criteria:** Results show participating retailers, variants, price, availability state and last-confirmed time.

## US-02
As a customer, I want products from multiple retailers in one cart so I can check out once.

**Acceptance criteria:** Cart groups line items by retailer; checkout creates one parent order and separate retailer sub-orders.

## US-03
As a retailer, I want to confirm inventory and accept/reject an order so unavailable products are not promised.

**Acceptance criteria:** Retailer response and timestamp are recorded; unconfirmed inventory cannot be represented as guaranteed.

## US-04
As a retailer, I want to mark a labeled package ready so a driver is not dispatched prematurely.

**Acceptance criteria:** Ready status records package count, pickup instructions, actor and timestamp.

## US-05
As a partner, I want to see payout, stops, route and estimated time before accepting.

**Acceptance criteria:** Offer card displays all fields; partner can accept or decline; decline alone does not count as cancellation.

## US-06
As a customer, I want to approve substitutions so I receive only items I agree to.

**Acceptance criteria:** No replacement is finalized without recorded customer approval.

## US-07
As a customer, I want per-store order status so I understand delays.

**Acceptance criteria:** Parent order displays each retailer sub-order and its status/exception.

## US-08
As a customer, I want every fee shown before payment.

**Acceptance criteria:** Checkout itemizes merchandise, delivery, extra stops, distance surcharge, discounts, tax and total.

## US-09
As a partner, I want to choose instant or standard withdrawal.

**Acceptance criteria:** Available balance, fee, estimated timing and confirmation are displayed before withdrawal.

## US-10
As operations, I want to monitor readiness, cancellations and delivery performance.

**Acceptance criteria:** Dashboard provides KPI definitions, filters, and trend views.

