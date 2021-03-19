%dw 2.0
output application/java
type SMString = String {format:"dd MMM yyyy"}
---
{
	location: payload.city,
	hotelGroup: payload.hotelGroup,
	startDate: now() as SMString,
	endDate: (now() + |P1D|) as SMString
} as Object {class:"java.util.HashMap"}