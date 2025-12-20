{ makeGrammar, source }:

makeGrammar ({
  language = source.language or source.name;
  version = source.version or source.rev;
  src = source.src;
} // (if source ? location then { inherit (source) location; } else {}))
