generic
   type Index is (<>);
   type Grid is array(Index range<>,Index range<>) of Natural;

function less_than(G: Grid;Max: Positive) return Boolean;
