;;; STATE.scm - Stateful Context Tracking Engine
;;; Project: obli-transpiler-framework
;;; Author: Jonathan D.A. Jewell (@Hyperpolymath)
;;; Format: Guile Scheme S-expressions
;;; Reference: https://github.com/hyperpolymath/state.scm

;;;============================================================================
;;; METADATA
;;;============================================================================

(define-module (state obli-transpiler-framework)
  #:export (state))

(define state
  `((metadata
     (format-version . "1.0.0")
     (project-name . "obli-transpiler-framework")
     (repository . "https://github.com/hyperpolymath/obli-transpiler-framework")
     (created . "2025-12-04")
     (last-updated . "2025-12-08")
     (state-author . "Claude (Opus 4)"))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

    (current-position
     (phase . "initialization")
     (completion-percentage . 5)
     (summary . "Project scaffolding complete. Infrastructure and CI/CD configured.
                 No implementation code exists yet - awaiting specification clarity.")

     (what-exists
      ((infrastructure
        (status . "complete")
        (items
         (".gitignore" . "configured")
         (".github/workflows/codeql.yml" . "security scanning enabled")
         (".github/workflows/jekyll-gh-pages.yml" . "docs deployment ready")
         (".github/dependabot.yml" . "dependency management placeholder")
         (".github/ISSUE_TEMPLATE/*" . "issue templates configured"))))

      ((source-code
        (status . "not-started")
        (items . none)))

      ((documentation
        (status . "not-started")
        (items . none)))

      ((tests
        (status . "not-started")
        (items . none)))))

;;;============================================================================
;;; ROUTE TO MVP v1
;;;============================================================================

    (mvp-v1-roadmap
     (target-completion . "TBD - pending specification")
     (definition . "Minimal viable transpiler framework capable of parsing a source
                    language, transforming AST, and emitting valid target code")

     (phases

      ;; Phase 1: Foundation
      ((phase-1
        (name . "Foundation & Specification")
        (status . "not-started")
        (completion . 0)
        (deliverables
         ("SPECIFICATION.md" . "Formal definition of obli semantics and goals")
         ("ARCHITECTURE.md" . "System design and component relationships")
         ("README.md" . "Project overview, installation, and quick start")
         ("Language selection" . "Choose implementation language (Rust/OCaml/Haskell?)")
         ("Package manifest" . "Cargo.toml / dune-project / cabal file")))

      ;; Phase 2: Lexer & Parser
      ((phase-2
        (name . "Lexer & Parser Infrastructure")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-1))
        (deliverables
         ("Token definitions" . "Complete token set for source language")
         ("Lexer implementation" . "Tokenization of source input")
         ("Grammar specification" . "BNF/EBNF grammar for source language")
         ("Parser implementation" . "Recursive descent or parser combinator")
         ("Error recovery" . "Graceful handling of syntax errors")))

      ;; Phase 3: AST & IR
      ((phase-3
        (name . "AST & Intermediate Representation")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-2))
        (deliverables
         ("AST node types" . "Complete AST type hierarchy")
         ("AST builder" . "Construction from parse results")
         ("AST visitor pattern" . "Traversal infrastructure")
         ("IR definition" . "Intermediate representation for transforms")
         ("AST pretty-printer" . "Debug output and visualization")))

      ;; Phase 4: Transform Pipeline
      ((phase-4
        (name . "Transformation Pipeline")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-3))
        (deliverables
         ("Pass infrastructure" . "Composable transformation passes")
         ("Semantic analysis" . "Type checking, scope resolution")
         ("Core transforms" . "Essential AST-to-IR transformations")
         ("Optimization passes" . "Basic optimizations (constant folding, DCE)")
         ("Pass ordering" . "Dependency-aware pass scheduling")))

      ;; Phase 5: Code Generation
      ((phase-5
        (name . "Code Generation")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-4))
        (deliverables
         ("Target language spec" . "Define initial target language")
         ("Code emitter" . "IR-to-target code generation")
         ("Source maps" . "Debug mapping to original source")
         ("Output formatting" . "Pretty-printed output code")))

      ;; Phase 6: Testing & Validation
      ((phase-6
        (name . "Testing & Validation")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-5))
        (deliverables
         ("Unit test suite" . "Component-level tests")
         ("Integration tests" . "End-to-end transpilation tests")
         ("Golden tests" . "Expected output comparison")
         ("Fuzzing harness" . "Property-based testing")
         ("CI integration" . "Automated test runs on PR")))

      ;; Phase 7: MVP Polish
      ((phase-7
        (name . "MVP Polish & Release")
        (status . "not-started")
        (completion . 0)
        (depends-on . (phase-6))
        (deliverables
         ("CLI interface" . "User-friendly command-line tool")
         ("Error messages" . "Helpful, actionable diagnostics")
         ("Documentation" . "API docs, user guide, examples")
         ("Release packaging" . "Binary distribution, crates.io/npm/etc")
         ("CHANGELOG.md" . "Version history"))))))))

;;;============================================================================
;;; ISSUES & BLOCKERS
;;;============================================================================

    (issues
     (critical
      ((issue-1
        (title . "No specification document")
        (description . "The purpose and semantics of 'obli' are undefined. Cannot
                        proceed with implementation without understanding what
                        obli-transpiler-framework is meant to transpile.")
        (impact . "blocks-all-development")
        (resolution . "Create SPECIFICATION.md defining obli language/framework goals"))

      ((issue-2
        (title . "Implementation language not chosen")
        (description . "No decision on what language to implement the framework in.
                        This affects architecture, tooling, and contributor ecosystem.")
        (impact . "blocks-phase-1")
        (options
         ("Rust" . "Memory safe, fast, good parser ecosystem (nom, pest, lalrpop)")
         ("OCaml" . "Strong typing, pattern matching, traditional for compilers")
         ("Haskell" . "Pure FP, excellent for AST manipulation (parsec, megaparsec)")
         ("TypeScript" . "Accessible, good for JS ecosystem targeting")))))

     (high
      ((issue-3
        (title . "Source language undefined")
        (description . "What language(s) will obli-transpiler-framework parse as input?
                        Is 'obli' itself a language? Or does this transpile existing
                        languages with oblivious computing extensions?")
        (impact . "blocks-phase-2"))

      ((issue-4
        (title . "Target language undefined")
        (description . "What language(s) will obli-transpiler-framework emit?
                        JavaScript? WebAssembly? Native code? Multiple targets?")
        (impact . "blocks-phase-5"))))

     (medium
      ((issue-5
        (title . "CodeQL configuration incomplete")
        (description . "CodeQL workflow only configured for 'actions' analysis.
                        Should be updated once implementation language is chosen.")
        (file . ".github/workflows/codeql.yml"))

      ((issue-6
        (title . "Dependabot not configured")
        (description . "Package ecosystem not specified in dependabot.yml.
                        Needs updating once package manager is determined.")
        (file . ".github/dependabot.yml")))))

;;;============================================================================
;;; QUESTIONS FOR PROJECT OWNER
;;;============================================================================

    (questions
     (specification
      ("Q1" . "What does 'obli' stand for? Oblivious computing? Oblique types?
               Something else entirely?")
      ("Q2" . "What is the primary use case for this transpiler framework?")
      ("Q3" . "Is this a general-purpose transpiler framework, or specific to a
               particular domain (e.g., privacy-preserving computation)?")
      ("Q4" . "Are there existing tools or languages this should be compatible with?"))

     (technical
      ("Q5" . "What implementation language do you prefer? Rust, OCaml, Haskell,
               TypeScript, or something else?")
      ("Q6" . "What source language(s) should the transpiler accept?")
      ("Q7" . "What target language(s) should the transpiler emit?")
      ("Q8" . "Should the framework support plugins/extensions for custom transforms?")
      ("Q9" . "What level of error recovery and diagnostics is required?"))

     (project
      ("Q10" . "What is the target timeline for MVP v1?")
      ("Q11" . "Who is the intended user? Researchers? Developers? Both?")
      ("Q12" . "Should this integrate with existing build tools (webpack, cargo, etc)?")
      ("Q13" . "Is there a specific application or project driving this development?")))

;;;============================================================================
;;; LONG-TERM ROADMAP
;;;============================================================================

    (long-term-roadmap

     ;; v1.x - Foundation
     ((version . "v1.x")
      (codename . "Foundation")
      (goals
       ("Core transpilation pipeline working end-to-end")
       ("Single source language support")
       ("Single target language support")
       ("Comprehensive test suite")
       ("Basic CLI tool")
       ("Initial documentation")))

     ;; v2.x - Expansion
     ((version . "v2.x")
      (codename . "Expansion")
      (goals
       ("Plugin architecture for custom transforms")
       ("Multiple source language frontends")
       ("Multiple target language backends")
       ("Language Server Protocol (LSP) support")
       ("IDE integration (VS Code extension)")
       ("Improved error messages and diagnostics")))

     ;; v3.x - Optimization
     ((version . "v3.x")
      (codename . "Optimization")
      (goals
       ("Advanced optimization passes")
       ("Incremental compilation")
       ("Parallel compilation")
       ("Build caching")
       ("Performance benchmarking suite")
       ("Memory usage optimization")))

     ;; v4.x - Ecosystem
     ((version . "v4.x")
      (codename . "Ecosystem")
      (goals
       ("Package registry for transforms/plugins")
       ("Community plugin marketplace")
       ("Integration with major build systems")
       ("Cloud/serverless deployment options")
       ("Commercial support tier")
       ("Enterprise features (audit logs, compliance)")))

     ;; Future Vision
     ((version . "future")
      (codename . "Vision")
      (goals
       ("Self-hosting (transpiler written in obli)")
       ("Formal verification of transforms")
       ("AI-assisted code transformation suggestions")
       ("Visual transform pipeline editor")
       ("Cross-platform native compilation")
       ("WebAssembly-first architecture"))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

    (next-actions
     (priority-1
      ((action . "Answer specification questions")
       (owner . "project-owner")
       (description . "Provide answers to Q1-Q13 to unblock development")
       (deadline . "ASAP"))

      ((action . "Create SPECIFICATION.md")
       (owner . "project-owner + claude")
       (description . "Document what obli is and what the framework should do")
       (depends-on . "specification questions answered")))

     (priority-2
      ((action . "Choose implementation language")
       (owner . "project-owner")
       (description . "Decide on Rust/OCaml/Haskell/TypeScript/other"))

      ((action . "Create README.md")
       (owner . "claude")
       (description . "Basic project overview and vision statement")
       (depends-on . "specification exists")))

     (priority-3
      ((action . "Initialize project structure")
       (owner . "claude")
       (description . "Set up package manifest, directory structure, basic modules")
       (depends-on . "language chosen"))

      ((action . "Update CI configuration")
       (owner . "claude")
       (description . "Configure CodeQL and Dependabot for chosen language")
       (depends-on . "language chosen"))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

    (history
     ((session . "2025-12-08-001")
      (summary . "Initial STATE.scm creation. Explored repository structure,
                  identified that project is in scaffolding phase with no code.
                  Documented MVP roadmap, issues, questions, and long-term vision.")
      (artifacts-created . ("STATE.scm"))
      (decisions-made . none)
      (blockers-identified . ("No specification" "No language choice"
                              "No source/target definition"))))))

;;; END STATE.scm
