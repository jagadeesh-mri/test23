%dw 2.0
output application/xml
type SMString = String {format:"dd MMM yyyy"}
ns tns http://soap.mule.training.jagadeesh.com/
---
tns#hotelSearchData @(priceUnder:2000, minPrice:1000)    : {
	location: payload.city,
	hotelGroup: payload.hotelGroup,
	startDate: now() as SMString,
	endDate: (now() + |P1D|) as SMString
}