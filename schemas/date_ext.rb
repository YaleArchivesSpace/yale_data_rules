#Limit characters in structured date fields to 10, must match pattern YYYY-MM-DD or YYYY-MM or YYYY
#the only thing this doesn't do is check for dates with the wrong number of days in the month i.e. 2019-09-31 would be valid
#It will also accept future dates...but that would be harder to enforce without continually updating this file.

{
	"begin" => {"type" => "string", "maxLength" => 10, "pattern" => "^\\d{4}$|^\\d{4}[-]{1}(0[1-9]|1[012])$|^\\d{4}[-]{1}(0[1-9]|1[012])[-]{1}(0[1-9]|[12][0-9]|3[01])$"},
    "end" => {"type" => "string", "maxLength" => 10, "pattern" => "^\\d{4}$|^\\d{4}[-]{1}(0[1-9]|1[012])$|^\\d{4}[-]{1}(0[1-9]|1[012])[-]{1}(0[1-9]|[12][0-9]|3[01])$"},
}