select name
from Customer
where coalesce(referee_id,'') != 2
