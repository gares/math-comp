{
  format = "1.0.0";
  coq-attribute = "mathcomp-single";
  pname = "mathcomp";
  namespace = "mathcomp";
  realpath = "mathcomp";
  select = "coq-8.13";
  inputs."coq-8.13".coqPackages = {
    coq.override.version = "8.13";
    hierarchy-builder.override.version = "exports";
    # /home/cyril/git/hierarchy-builder/master;
  };
  inputs."coq-8.12".coqPackages = {
    coq.override.version = "8.12";
    hierarchy-builder.override.version = "exports";
    # /home/cyril/git/hierarchy-builder/master;
  };
}
