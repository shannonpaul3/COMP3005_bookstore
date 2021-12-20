-- Lowers book stock by one when a book is ordered
create function reduceStock(book_isbn varchar(13))
returns void
language plpgsql
as
$$
begin
	update stock
	set quantity = (quantity-1)
	where stock.ISBN like book_isbn;
end;
$$;

-- Places order for number of books equal to how many books were sold in the previous month
-- if book stock hits below 10
create function updateStock(book_isbn varchar(13))
returns void
language plpgsql
as
$$
begin
	update stock
	set quantity = quantity + prev_quantity
	where stock.ISBN like book_isbn and quantity < 10;
end;
$$;

--Tried creating the following triggers that would call the functions above
--any time there was a new order added

--CREATE TRIGGER stock_down AFTER INSERT ON book_order 
--FOR EACH ROW EXECUTE FUNCTION removeStock();

--CREATE TRIGGER stock_up AFTER INSERT ON book_order 
--FOR EACH ROW EXECUTE FUNCTION updateStock();
