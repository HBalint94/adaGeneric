generic
    type Index is (<>);
    type Grid is array ( Index range <>,Index range <> ) of Natural;


function count(G: in Grid) return Natural;
