%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:08:12 EST 2020

% Result     : Theorem 11.70s
% Output     : CNFRefutation 11.70s
% Verified   : 
% Statistics : Number of formulae       :  175 ( 960 expanded)
%              Number of clauses        :   98 ( 319 expanded)
%              Number of leaves         :   23 ( 243 expanded)
%              Depth                    :   25
%              Number of atoms          :  623 (5833 expanded)
%              Number of equality atoms :  225 (1754 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   26 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f22,conjecture,(
    ! [X0,X1,X2] :
      ( r2_hidden(X2,k1_funct_2(X0,X1))
     => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r2_hidden(X2,k1_funct_2(X0,X1))
       => ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f44,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        | ~ v1_funct_2(X2,X0,X1)
        | ~ v1_funct_1(X2) )
      & r2_hidden(X2,k1_funct_2(X0,X1)) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f66,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2) )
        & r2_hidden(X2,k1_funct_2(X0,X1)) )
   => ( ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
        | ~ v1_funct_2(sK9,sK7,sK8)
        | ~ v1_funct_1(sK9) )
      & r2_hidden(sK9,k1_funct_2(sK7,sK8)) ) ),
    introduced(choice_axiom,[])).

fof(f67,plain,
    ( ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
      | ~ v1_funct_2(sK9,sK7,sK8)
      | ~ v1_funct_1(sK9) )
    & r2_hidden(sK9,k1_funct_2(sK7,sK8)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8,sK9])],[f44,f66])).

fof(f113,plain,(
    r2_hidden(sK9,k1_funct_2(sK7,sK8)) ),
    inference(cnf_transformation,[],[f67])).

fof(f20,axiom,(
    ! [X0,X1,X2] :
      ( k1_funct_2(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r1_tarski(k2_relat_1(X4),X1)
              & k1_relat_1(X4) = X0
              & X3 = X4
              & v1_funct_1(X4)
              & v1_relat_1(X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X1,X0,X2] :
      ( sP0(X1,X0,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4] :
              ( r1_tarski(k2_relat_1(X4),X1)
              & k1_relat_1(X4) = X0
              & X3 = X4
              & v1_funct_1(X4)
              & v1_relat_1(X4) ) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f46,plain,(
    ! [X0,X1,X2] :
      ( k1_funct_2(X0,X1) = X2
    <=> sP0(X1,X0,X2) ) ),
    inference(definition_folding,[],[f20,f45])).

fof(f65,plain,(
    ! [X0,X1,X2] :
      ( ( k1_funct_2(X0,X1) = X2
        | ~ sP0(X1,X0,X2) )
      & ( sP0(X1,X0,X2)
        | k1_funct_2(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f46])).

fof(f108,plain,(
    ! [X2,X0,X1] :
      ( sP0(X1,X0,X2)
      | k1_funct_2(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f65])).

fof(f120,plain,(
    ! [X0,X1] : sP0(X1,X0,k1_funct_2(X0,X1)) ),
    inference(equality_resolution,[],[f108])).

fof(f59,plain,(
    ! [X1,X0,X2] :
      ( ( sP0(X1,X0,X2)
        | ? [X3] :
            ( ( ! [X4] :
                  ( ~ r1_tarski(k2_relat_1(X4),X1)
                  | k1_relat_1(X4) != X0
                  | X3 != X4
                  | ~ v1_funct_1(X4)
                  | ~ v1_relat_1(X4) )
              | ~ r2_hidden(X3,X2) )
            & ( ? [X4] :
                  ( r1_tarski(k2_relat_1(X4),X1)
                  & k1_relat_1(X4) = X0
                  & X3 = X4
                  & v1_funct_1(X4)
                  & v1_relat_1(X4) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ! [X4] :
                  ( ~ r1_tarski(k2_relat_1(X4),X1)
                  | k1_relat_1(X4) != X0
                  | X3 != X4
                  | ~ v1_funct_1(X4)
                  | ~ v1_relat_1(X4) ) )
            & ( ? [X4] :
                  ( r1_tarski(k2_relat_1(X4),X1)
                  & k1_relat_1(X4) = X0
                  & X3 = X4
                  & v1_funct_1(X4)
                  & v1_relat_1(X4) )
              | ~ r2_hidden(X3,X2) ) )
        | ~ sP0(X1,X0,X2) ) ) ),
    inference(nnf_transformation,[],[f45])).

fof(f60,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ? [X3] :
            ( ( ! [X4] :
                  ( ~ r1_tarski(k2_relat_1(X4),X0)
                  | k1_relat_1(X4) != X1
                  | X3 != X4
                  | ~ v1_funct_1(X4)
                  | ~ v1_relat_1(X4) )
              | ~ r2_hidden(X3,X2) )
            & ( ? [X5] :
                  ( r1_tarski(k2_relat_1(X5),X0)
                  & k1_relat_1(X5) = X1
                  & X3 = X5
                  & v1_funct_1(X5)
                  & v1_relat_1(X5) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X2)
              | ! [X7] :
                  ( ~ r1_tarski(k2_relat_1(X7),X0)
                  | k1_relat_1(X7) != X1
                  | X6 != X7
                  | ~ v1_funct_1(X7)
                  | ~ v1_relat_1(X7) ) )
            & ( ? [X8] :
                  ( r1_tarski(k2_relat_1(X8),X0)
                  & k1_relat_1(X8) = X1
                  & X6 = X8
                  & v1_funct_1(X8)
                  & v1_relat_1(X8) )
              | ~ r2_hidden(X6,X2) ) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(rectify,[],[f59])).

fof(f63,plain,(
    ! [X6,X1,X0] :
      ( ? [X8] :
          ( r1_tarski(k2_relat_1(X8),X0)
          & k1_relat_1(X8) = X1
          & X6 = X8
          & v1_funct_1(X8)
          & v1_relat_1(X8) )
     => ( r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0)
        & k1_relat_1(sK6(X0,X1,X6)) = X1
        & sK6(X0,X1,X6) = X6
        & v1_funct_1(sK6(X0,X1,X6))
        & v1_relat_1(sK6(X0,X1,X6)) ) ) ),
    introduced(choice_axiom,[])).

fof(f62,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X5] :
          ( r1_tarski(k2_relat_1(X5),X0)
          & k1_relat_1(X5) = X1
          & X3 = X5
          & v1_funct_1(X5)
          & v1_relat_1(X5) )
     => ( r1_tarski(k2_relat_1(sK5(X0,X1,X2)),X0)
        & k1_relat_1(sK5(X0,X1,X2)) = X1
        & sK5(X0,X1,X2) = X3
        & v1_funct_1(sK5(X0,X1,X2))
        & v1_relat_1(sK5(X0,X1,X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f61,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ! [X4] :
                ( ~ r1_tarski(k2_relat_1(X4),X0)
                | k1_relat_1(X4) != X1
                | X3 != X4
                | ~ v1_funct_1(X4)
                | ~ v1_relat_1(X4) )
            | ~ r2_hidden(X3,X2) )
          & ( ? [X5] :
                ( r1_tarski(k2_relat_1(X5),X0)
                & k1_relat_1(X5) = X1
                & X3 = X5
                & v1_funct_1(X5)
                & v1_relat_1(X5) )
            | r2_hidden(X3,X2) ) )
     => ( ( ! [X4] :
              ( ~ r1_tarski(k2_relat_1(X4),X0)
              | k1_relat_1(X4) != X1
              | sK4(X0,X1,X2) != X4
              | ~ v1_funct_1(X4)
              | ~ v1_relat_1(X4) )
          | ~ r2_hidden(sK4(X0,X1,X2),X2) )
        & ( ? [X5] :
              ( r1_tarski(k2_relat_1(X5),X0)
              & k1_relat_1(X5) = X1
              & sK4(X0,X1,X2) = X5
              & v1_funct_1(X5)
              & v1_relat_1(X5) )
          | r2_hidden(sK4(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f64,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ( ( ! [X4] :
                ( ~ r1_tarski(k2_relat_1(X4),X0)
                | k1_relat_1(X4) != X1
                | sK4(X0,X1,X2) != X4
                | ~ v1_funct_1(X4)
                | ~ v1_relat_1(X4) )
            | ~ r2_hidden(sK4(X0,X1,X2),X2) )
          & ( ( r1_tarski(k2_relat_1(sK5(X0,X1,X2)),X0)
              & k1_relat_1(sK5(X0,X1,X2)) = X1
              & sK4(X0,X1,X2) = sK5(X0,X1,X2)
              & v1_funct_1(sK5(X0,X1,X2))
              & v1_relat_1(sK5(X0,X1,X2)) )
            | r2_hidden(sK4(X0,X1,X2),X2) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X2)
              | ! [X7] :
                  ( ~ r1_tarski(k2_relat_1(X7),X0)
                  | k1_relat_1(X7) != X1
                  | X6 != X7
                  | ~ v1_funct_1(X7)
                  | ~ v1_relat_1(X7) ) )
            & ( ( r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0)
                & k1_relat_1(sK6(X0,X1,X6)) = X1
                & sK6(X0,X1,X6) = X6
                & v1_funct_1(sK6(X0,X1,X6))
                & v1_relat_1(sK6(X0,X1,X6)) )
              | ~ r2_hidden(X6,X2) ) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f60,f63,f62,f61])).

fof(f98,plain,(
    ! [X6,X2,X0,X1] :
      ( sK6(X0,X1,X6) = X6
      | ~ r2_hidden(X6,X2)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f100,plain,(
    ! [X6,X2,X0,X1] :
      ( r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0)
      | ~ r2_hidden(X6,X2)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(k2_relat_1(X2),X1)
          & r1_tarski(k1_relat_1(X2),X0) )
       => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f35])).

fof(f90,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f99,plain,(
    ! [X6,X2,X0,X1] :
      ( k1_relat_1(sK6(X0,X1,X6)) = X1
      | ~ r2_hidden(X6,X2)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f40])).

fof(f95,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f21,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f43,plain,(
    ! [X0] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
        & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
        & v1_funct_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f42])).

fof(f111,plain,(
    ! [X0] :
      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f112,plain,(
    ! [X0] :
      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v1_partfun1(X2,X0)
          & v1_funct_1(X2) )
       => ( v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f37])).

fof(f92,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f114,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_2(sK9,sK7,sK8)
    | ~ v1_funct_1(sK9) ),
    inference(cnf_transformation,[],[f67])).

fof(f96,plain,(
    ! [X6,X2,X0,X1] :
      ( v1_relat_1(sK6(X0,X1,X6))
      | ~ r2_hidden(X6,X2)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f97,plain,(
    ! [X6,X2,X0,X1] :
      ( v1_funct_1(sK6(X0,X1,X6))
      | ~ r2_hidden(X6,X2)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f64])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f53])).

fof(f72,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f54])).

fof(f116,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f72])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f51,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f51])).

fof(f71,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f52])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f80,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f79,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f57])).

fof(f14,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f58,plain,(
    ! [X0] :
      ( ( ( k1_xboole_0 = k1_relat_1(X0)
          | k1_xboole_0 != k2_relat_1(X0) )
        & ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 != k1_relat_1(X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f88,plain,(
    ! [X0] :
      ( k1_xboole_0 = k1_relat_1(X0)
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => v1_partfun1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_partfun1(X2,X0)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f93,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f75,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0] :
    ? [X1] : m1_subset_1(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] :
      ( ? [X1] : m1_subset_1(X1,X0)
     => m1_subset_1(sK3(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,(
    ! [X0] : m1_subset_1(sK3(X0),X0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f5,f55])).

fof(f76,plain,(
    ! [X0] : m1_subset_1(sK3(X0),X0) ),
    inference(cnf_transformation,[],[f56])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f26])).

fof(f77,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f15,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f89,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_46,negated_conjecture,
    ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) ),
    inference(cnf_transformation,[],[f113])).

cnf(c_5130,plain,
    ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_46])).

cnf(c_41,plain,
    ( sP0(X0,X1,k1_funct_2(X1,X0)) ),
    inference(cnf_transformation,[],[f120])).

cnf(c_5132,plain,
    ( sP0(X0,X1,k1_funct_2(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_41])).

cnf(c_37,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r2_hidden(X3,X2)
    | sK6(X0,X1,X3) = X3 ),
    inference(cnf_transformation,[],[f98])).

cnf(c_5136,plain,
    ( sK6(X0,X1,X2) = X2
    | sP0(X0,X1,X3) != iProver_top
    | r2_hidden(X2,X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_7688,plain,
    ( sK6(X0,X1,X2) = X2
    | r2_hidden(X2,k1_funct_2(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5132,c_5136])).

cnf(c_11037,plain,
    ( sK6(sK8,sK7,sK9) = sK9 ),
    inference(superposition,[status(thm)],[c_5130,c_7688])).

cnf(c_35,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r2_hidden(X3,X2)
    | r1_tarski(k2_relat_1(sK6(X0,X1,X3)),X0) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_5138,plain,
    ( sP0(X0,X1,X2) != iProver_top
    | r2_hidden(X3,X2) != iProver_top
    | r1_tarski(k2_relat_1(sK6(X0,X1,X3)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_8985,plain,
    ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
    | r1_tarski(k2_relat_1(sK6(X2,X1,X0)),X2) = iProver_top ),
    inference(superposition,[status(thm)],[c_5132,c_5138])).

cnf(c_18079,plain,
    ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) != iProver_top
    | r1_tarski(k2_relat_1(sK9),sK8) = iProver_top ),
    inference(superposition,[status(thm)],[c_11037,c_8985])).

cnf(c_47,plain,
    ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_46])).

cnf(c_18348,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_18079,c_47])).

cnf(c_22,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_5146,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) = iProver_top
    | r1_tarski(k1_relat_1(X0),X1) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_36,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r2_hidden(X3,X2)
    | k1_relat_1(sK6(X0,X1,X3)) = X1 ),
    inference(cnf_transformation,[],[f99])).

cnf(c_5137,plain,
    ( k1_relat_1(sK6(X0,X1,X2)) = X1
    | sP0(X0,X1,X3) != iProver_top
    | r2_hidden(X2,X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_8030,plain,
    ( k1_relat_1(sK6(X0,X1,X2)) = X1
    | r2_hidden(X2,k1_funct_2(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5132,c_5137])).

cnf(c_13557,plain,
    ( k1_relat_1(sK6(sK8,sK7,sK9)) = sK7 ),
    inference(superposition,[status(thm)],[c_5130,c_8030])).

cnf(c_13564,plain,
    ( k1_relat_1(sK9) = sK7 ),
    inference(light_normalisation,[status(thm)],[c_13557,c_11037])).

cnf(c_26,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_43,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_743,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X3)
    | v1_xboole_0(X2)
    | X3 != X0
    | k1_relat_1(X3) != X1
    | k2_relat_1(X3) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_26,c_43])).

cnf(c_744,plain,
    ( v1_partfun1(X0,k1_relat_1(X0))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_xboole_0(k2_relat_1(X0)) ),
    inference(unflattening,[status(thm)],[c_743])).

cnf(c_42,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_748,plain,
    ( v1_partfun1(X0,k1_relat_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_xboole_0(k2_relat_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_744,c_42])).

cnf(c_23,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_45,negated_conjecture,
    ( ~ v1_funct_2(sK9,sK7,sK8)
    | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9) ),
    inference(cnf_transformation,[],[f114])).

cnf(c_767,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK9)
    | sK8 != X2
    | sK7 != X1
    | sK9 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_45])).

cnf(c_768,plain,
    ( ~ v1_partfun1(sK9,sK7)
    | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9) ),
    inference(unflattening,[status(thm)],[c_767])).

cnf(c_832,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK9)
    | ~ v1_relat_1(X0)
    | v1_xboole_0(k2_relat_1(X0))
    | k1_relat_1(X0) != sK7
    | sK9 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_748,c_768])).

cnf(c_833,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9)
    | ~ v1_relat_1(sK9)
    | v1_xboole_0(k2_relat_1(sK9))
    | k1_relat_1(sK9) != sK7 ),
    inference(unflattening,[status(thm)],[c_832])).

cnf(c_5122,plain,
    ( k1_relat_1(sK9) != sK7
    | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_833])).

cnf(c_13850,plain,
    ( sK7 != sK7
    | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_13564,c_5122])).

cnf(c_13861,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_13850])).

cnf(c_834,plain,
    ( k1_relat_1(sK9) != sK7
    | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_833])).

cnf(c_39,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r2_hidden(X3,X2)
    | v1_relat_1(sK6(X0,X1,X3)) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_5134,plain,
    ( sP0(X0,X1,X2) != iProver_top
    | r2_hidden(X3,X2) != iProver_top
    | v1_relat_1(sK6(X0,X1,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_7363,plain,
    ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
    | v1_relat_1(sK6(X2,X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5132,c_5134])).

cnf(c_12011,plain,
    ( v1_relat_1(sK6(sK8,sK7,sK9)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5130,c_7363])).

cnf(c_12018,plain,
    ( v1_relat_1(sK9) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_12011,c_11037])).

cnf(c_38,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r2_hidden(X3,X2)
    | v1_funct_1(sK6(X0,X1,X3)) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_5135,plain,
    ( sP0(X0,X1,X2) != iProver_top
    | r2_hidden(X3,X2) != iProver_top
    | v1_funct_1(sK6(X0,X1,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_8007,plain,
    ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
    | v1_funct_1(sK6(X2,X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5132,c_5135])).

cnf(c_13485,plain,
    ( v1_funct_1(sK6(sK8,sK7,sK9)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5130,c_8007])).

cnf(c_13492,plain,
    ( v1_funct_1(sK9) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_13485,c_11037])).

cnf(c_15611,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_13861,c_834,c_12018,c_13492,c_13564])).

cnf(c_15618,plain,
    ( r1_tarski(k1_relat_1(sK9),sK7) != iProver_top
    | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5146,c_15611])).

cnf(c_15623,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | r1_tarski(sK7,sK7) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_15618,c_13564])).

cnf(c_16026,plain,
    ( r1_tarski(sK7,sK7) != iProver_top
    | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_15623,c_12018])).

cnf(c_16027,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | r1_tarski(sK7,sK7) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(renaming,[status(thm)],[c_16026])).

cnf(c_6,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f116])).

cnf(c_5158,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_16033,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_16027,c_5158])).

cnf(c_18358,plain,
    ( v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
    inference(superposition,[status(thm)],[c_18348,c_16033])).

cnf(c_3,plain,
    ( r2_hidden(sK2(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_5160,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK2(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_10,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_365,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_10])).

cnf(c_366,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_365])).

cnf(c_441,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X2)
    | ~ v1_xboole_0(X2) ),
    inference(bin_hyper_res,[status(thm)],[c_12,c_366])).

cnf(c_5127,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X2) != iProver_top
    | v1_xboole_0(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_441])).

cnf(c_5807,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_5160,c_5127])).

cnf(c_12077,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_5158,c_5807])).

cnf(c_18404,plain,
    ( k2_relat_1(sK9) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_18358,c_12077])).

cnf(c_19,plain,
    ( ~ v1_relat_1(X0)
    | k1_relat_1(X0) = k1_xboole_0
    | k2_relat_1(X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f88])).

cnf(c_5149,plain,
    ( k1_relat_1(X0) = k1_xboole_0
    | k2_relat_1(X0) != k1_xboole_0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_20228,plain,
    ( k1_relat_1(sK9) = k1_xboole_0
    | v1_relat_1(sK9) != iProver_top ),
    inference(superposition,[status(thm)],[c_18404,c_5149])).

cnf(c_20240,plain,
    ( sK7 = k1_xboole_0
    | v1_relat_1(sK9) != iProver_top ),
    inference(demodulation,[status(thm)],[c_20228,c_13564])).

cnf(c_20326,plain,
    ( sK7 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_20240,c_12018])).

cnf(c_25,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_814,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9)
    | ~ v1_xboole_0(X1)
    | sK7 != X1
    | sK9 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_768])).

cnf(c_815,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0)))
    | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9)
    | ~ v1_xboole_0(sK7) ),
    inference(unflattening,[status(thm)],[c_814])).

cnf(c_4192,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
    | ~ v1_funct_1(sK9)
    | ~ v1_xboole_0(sK7)
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_815])).

cnf(c_5123,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_xboole_0(sK7) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4192])).

cnf(c_4191,plain,
    ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0)))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_815])).

cnf(c_5124,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0))) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4191])).

cnf(c_5326,plain,
    ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_xboole_0(sK7) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5123,c_5124])).

cnf(c_9136,plain,
    ( r1_tarski(k1_relat_1(sK9),sK7) != iProver_top
    | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_5146,c_5326])).

cnf(c_13848,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | r1_tarski(sK7,sK7) != iProver_top
    | v1_funct_1(sK9) != iProver_top
    | v1_relat_1(sK9) != iProver_top
    | v1_xboole_0(sK7) != iProver_top ),
    inference(demodulation,[status(thm)],[c_13564,c_9136])).

cnf(c_14635,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | r1_tarski(sK7,sK7) != iProver_top
    | v1_xboole_0(sK7) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_13848,c_12018,c_13492])).

cnf(c_14642,plain,
    ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
    | v1_xboole_0(sK7) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_14635,c_5158])).

cnf(c_18359,plain,
    ( v1_xboole_0(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_18348,c_14642])).

cnf(c_20330,plain,
    ( v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_20326,c_18359])).

cnf(c_7,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_5157,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_8,plain,
    ( m1_subset_1(sK3(X0),X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_5156,plain,
    ( m1_subset_1(sK3(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_5155,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_7369,plain,
    ( r2_hidden(sK3(X0),X0) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_5156,c_5155])).

cnf(c_21,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_5147,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_10112,plain,
    ( r1_tarski(X0,sK3(X0)) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_7369,c_5147])).

cnf(c_10140,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_5157,c_10112])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_20330,c_10140])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n019.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 20:52:52 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 11.70/2.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 11.70/2.00  
% 11.70/2.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.70/2.00  
% 11.70/2.00  ------  iProver source info
% 11.70/2.00  
% 11.70/2.00  git: date: 2020-06-30 10:37:57 +0100
% 11.70/2.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.70/2.00  git: non_committed_changes: false
% 11.70/2.00  git: last_make_outside_of_git: false
% 11.70/2.00  
% 11.70/2.00  ------ 
% 11.70/2.00  
% 11.70/2.00  ------ Input Options
% 11.70/2.00  
% 11.70/2.00  --out_options                           all
% 11.70/2.00  --tptp_safe_out                         true
% 11.70/2.00  --problem_path                          ""
% 11.70/2.00  --include_path                          ""
% 11.70/2.00  --clausifier                            res/vclausify_rel
% 11.70/2.00  --clausifier_options                    --mode clausify
% 11.70/2.00  --stdin                                 false
% 11.70/2.00  --stats_out                             all
% 11.70/2.00  
% 11.70/2.00  ------ General Options
% 11.70/2.00  
% 11.70/2.00  --fof                                   false
% 11.70/2.00  --time_out_real                         305.
% 11.70/2.00  --time_out_virtual                      -1.
% 11.70/2.00  --symbol_type_check                     false
% 11.70/2.00  --clausify_out                          false
% 11.70/2.00  --sig_cnt_out                           false
% 11.70/2.00  --trig_cnt_out                          false
% 11.70/2.00  --trig_cnt_out_tolerance                1.
% 11.70/2.00  --trig_cnt_out_sk_spl                   false
% 11.70/2.00  --abstr_cl_out                          false
% 11.70/2.00  
% 11.70/2.00  ------ Global Options
% 11.70/2.00  
% 11.70/2.00  --schedule                              default
% 11.70/2.00  --add_important_lit                     false
% 11.70/2.00  --prop_solver_per_cl                    1000
% 11.70/2.00  --min_unsat_core                        false
% 11.70/2.00  --soft_assumptions                      false
% 11.70/2.00  --soft_lemma_size                       3
% 11.70/2.00  --prop_impl_unit_size                   0
% 11.70/2.00  --prop_impl_unit                        []
% 11.70/2.00  --share_sel_clauses                     true
% 11.70/2.00  --reset_solvers                         false
% 11.70/2.00  --bc_imp_inh                            [conj_cone]
% 11.70/2.00  --conj_cone_tolerance                   3.
% 11.70/2.00  --extra_neg_conj                        none
% 11.70/2.00  --large_theory_mode                     true
% 11.70/2.00  --prolific_symb_bound                   200
% 11.70/2.00  --lt_threshold                          2000
% 11.70/2.00  --clause_weak_htbl                      true
% 11.70/2.00  --gc_record_bc_elim                     false
% 11.70/2.00  
% 11.70/2.00  ------ Preprocessing Options
% 11.70/2.00  
% 11.70/2.00  --preprocessing_flag                    true
% 11.70/2.00  --time_out_prep_mult                    0.1
% 11.70/2.00  --splitting_mode                        input
% 11.70/2.00  --splitting_grd                         true
% 11.70/2.00  --splitting_cvd                         false
% 11.70/2.00  --splitting_cvd_svl                     false
% 11.70/2.00  --splitting_nvd                         32
% 11.70/2.00  --sub_typing                            true
% 11.70/2.00  --prep_gs_sim                           true
% 11.70/2.00  --prep_unflatten                        true
% 11.70/2.00  --prep_res_sim                          true
% 11.70/2.00  --prep_upred                            true
% 11.70/2.00  --prep_sem_filter                       exhaustive
% 11.70/2.00  --prep_sem_filter_out                   false
% 11.70/2.00  --pred_elim                             true
% 11.70/2.00  --res_sim_input                         true
% 11.70/2.00  --eq_ax_congr_red                       true
% 11.70/2.00  --pure_diseq_elim                       true
% 11.70/2.00  --brand_transform                       false
% 11.70/2.00  --non_eq_to_eq                          false
% 11.70/2.00  --prep_def_merge                        true
% 11.70/2.00  --prep_def_merge_prop_impl              false
% 11.70/2.00  --prep_def_merge_mbd                    true
% 11.70/2.00  --prep_def_merge_tr_red                 false
% 11.70/2.00  --prep_def_merge_tr_cl                  false
% 11.70/2.00  --smt_preprocessing                     true
% 11.70/2.00  --smt_ac_axioms                         fast
% 11.70/2.00  --preprocessed_out                      false
% 11.70/2.00  --preprocessed_stats                    false
% 11.70/2.00  
% 11.70/2.00  ------ Abstraction refinement Options
% 11.70/2.00  
% 11.70/2.00  --abstr_ref                             []
% 11.70/2.00  --abstr_ref_prep                        false
% 11.70/2.00  --abstr_ref_until_sat                   false
% 11.70/2.00  --abstr_ref_sig_restrict                funpre
% 11.70/2.00  --abstr_ref_af_restrict_to_split_sk     false
% 11.70/2.00  --abstr_ref_under                       []
% 11.70/2.00  
% 11.70/2.00  ------ SAT Options
% 11.70/2.00  
% 11.70/2.00  --sat_mode                              false
% 11.70/2.00  --sat_fm_restart_options                ""
% 11.70/2.00  --sat_gr_def                            false
% 11.70/2.00  --sat_epr_types                         true
% 11.70/2.00  --sat_non_cyclic_types                  false
% 11.70/2.00  --sat_finite_models                     false
% 11.70/2.00  --sat_fm_lemmas                         false
% 11.70/2.00  --sat_fm_prep                           false
% 11.70/2.00  --sat_fm_uc_incr                        true
% 11.70/2.00  --sat_out_model                         small
% 11.70/2.00  --sat_out_clauses                       false
% 11.70/2.00  
% 11.70/2.00  ------ QBF Options
% 11.70/2.00  
% 11.70/2.00  --qbf_mode                              false
% 11.70/2.00  --qbf_elim_univ                         false
% 11.70/2.00  --qbf_dom_inst                          none
% 11.70/2.00  --qbf_dom_pre_inst                      false
% 11.70/2.00  --qbf_sk_in                             false
% 11.70/2.00  --qbf_pred_elim                         true
% 11.70/2.00  --qbf_split                             512
% 11.70/2.00  
% 11.70/2.00  ------ BMC1 Options
% 11.70/2.00  
% 11.70/2.00  --bmc1_incremental                      false
% 11.70/2.00  --bmc1_axioms                           reachable_all
% 11.70/2.00  --bmc1_min_bound                        0
% 11.70/2.00  --bmc1_max_bound                        -1
% 11.70/2.00  --bmc1_max_bound_default                -1
% 11.70/2.00  --bmc1_symbol_reachability              true
% 11.70/2.00  --bmc1_property_lemmas                  false
% 11.70/2.00  --bmc1_k_induction                      false
% 11.70/2.00  --bmc1_non_equiv_states                 false
% 11.70/2.00  --bmc1_deadlock                         false
% 11.70/2.00  --bmc1_ucm                              false
% 11.70/2.00  --bmc1_add_unsat_core                   none
% 11.70/2.00  --bmc1_unsat_core_children              false
% 11.70/2.00  --bmc1_unsat_core_extrapolate_axioms    false
% 11.70/2.00  --bmc1_out_stat                         full
% 11.70/2.00  --bmc1_ground_init                      false
% 11.70/2.00  --bmc1_pre_inst_next_state              false
% 11.70/2.00  --bmc1_pre_inst_state                   false
% 11.70/2.00  --bmc1_pre_inst_reach_state             false
% 11.70/2.00  --bmc1_out_unsat_core                   false
% 11.70/2.00  --bmc1_aig_witness_out                  false
% 11.70/2.00  --bmc1_verbose                          false
% 11.70/2.00  --bmc1_dump_clauses_tptp                false
% 11.70/2.00  --bmc1_dump_unsat_core_tptp             false
% 11.70/2.00  --bmc1_dump_file                        -
% 11.70/2.00  --bmc1_ucm_expand_uc_limit              128
% 11.70/2.00  --bmc1_ucm_n_expand_iterations          6
% 11.70/2.00  --bmc1_ucm_extend_mode                  1
% 11.70/2.00  --bmc1_ucm_init_mode                    2
% 11.70/2.00  --bmc1_ucm_cone_mode                    none
% 11.70/2.00  --bmc1_ucm_reduced_relation_type        0
% 11.70/2.00  --bmc1_ucm_relax_model                  4
% 11.70/2.00  --bmc1_ucm_full_tr_after_sat            true
% 11.70/2.00  --bmc1_ucm_expand_neg_assumptions       false
% 11.70/2.00  --bmc1_ucm_layered_model                none
% 11.70/2.00  --bmc1_ucm_max_lemma_size               10
% 11.70/2.00  
% 11.70/2.00  ------ AIG Options
% 11.70/2.00  
% 11.70/2.00  --aig_mode                              false
% 11.70/2.00  
% 11.70/2.00  ------ Instantiation Options
% 11.70/2.00  
% 11.70/2.00  --instantiation_flag                    true
% 11.70/2.00  --inst_sos_flag                         false
% 11.70/2.00  --inst_sos_phase                        true
% 11.70/2.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.70/2.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.70/2.00  --inst_lit_sel_side                     num_symb
% 11.70/2.00  --inst_solver_per_active                1400
% 11.70/2.00  --inst_solver_calls_frac                1.
% 11.70/2.00  --inst_passive_queue_type               priority_queues
% 11.70/2.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.70/2.00  --inst_passive_queues_freq              [25;2]
% 11.70/2.00  --inst_dismatching                      true
% 11.70/2.00  --inst_eager_unprocessed_to_passive     true
% 11.70/2.00  --inst_prop_sim_given                   true
% 11.70/2.00  --inst_prop_sim_new                     false
% 11.70/2.00  --inst_subs_new                         false
% 11.70/2.00  --inst_eq_res_simp                      false
% 11.70/2.00  --inst_subs_given                       false
% 11.70/2.00  --inst_orphan_elimination               true
% 11.70/2.00  --inst_learning_loop_flag               true
% 11.70/2.00  --inst_learning_start                   3000
% 11.70/2.00  --inst_learning_factor                  2
% 11.70/2.00  --inst_start_prop_sim_after_learn       3
% 11.70/2.00  --inst_sel_renew                        solver
% 11.70/2.00  --inst_lit_activity_flag                true
% 11.70/2.00  --inst_restr_to_given                   false
% 11.70/2.00  --inst_activity_threshold               500
% 11.70/2.00  --inst_out_proof                        true
% 11.70/2.00  
% 11.70/2.00  ------ Resolution Options
% 11.70/2.00  
% 11.70/2.00  --resolution_flag                       true
% 11.70/2.00  --res_lit_sel                           adaptive
% 11.70/2.00  --res_lit_sel_side                      none
% 11.70/2.00  --res_ordering                          kbo
% 11.70/2.00  --res_to_prop_solver                    active
% 11.70/2.00  --res_prop_simpl_new                    false
% 11.70/2.00  --res_prop_simpl_given                  true
% 11.70/2.00  --res_passive_queue_type                priority_queues
% 11.70/2.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.70/2.00  --res_passive_queues_freq               [15;5]
% 11.70/2.00  --res_forward_subs                      full
% 11.70/2.00  --res_backward_subs                     full
% 11.70/2.00  --res_forward_subs_resolution           true
% 11.70/2.00  --res_backward_subs_resolution          true
% 11.70/2.00  --res_orphan_elimination                true
% 11.70/2.00  --res_time_limit                        2.
% 11.70/2.00  --res_out_proof                         true
% 11.70/2.00  
% 11.70/2.00  ------ Superposition Options
% 11.70/2.00  
% 11.70/2.00  --superposition_flag                    true
% 11.70/2.00  --sup_passive_queue_type                priority_queues
% 11.70/2.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.70/2.00  --sup_passive_queues_freq               [8;1;4]
% 11.70/2.00  --demod_completeness_check              fast
% 11.70/2.00  --demod_use_ground                      true
% 11.70/2.00  --sup_to_prop_solver                    passive
% 11.70/2.00  --sup_prop_simpl_new                    true
% 11.70/2.00  --sup_prop_simpl_given                  true
% 11.70/2.00  --sup_fun_splitting                     false
% 11.70/2.00  --sup_smt_interval                      50000
% 11.70/2.00  
% 11.70/2.00  ------ Superposition Simplification Setup
% 11.70/2.00  
% 11.70/2.00  --sup_indices_passive                   []
% 11.70/2.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.00  --sup_full_triv                         [TrivRules;PropSubs]
% 11.70/2.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.00  --sup_full_bw                           [BwDemod]
% 11.70/2.00  --sup_immed_triv                        [TrivRules]
% 11.70/2.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.70/2.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.00  --sup_immed_bw_main                     []
% 11.70/2.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.70/2.00  --sup_input_triv                        [Unflattening;TrivRules]
% 11.70/2.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.70/2.00  
% 11.70/2.00  ------ Combination Options
% 11.70/2.00  
% 11.70/2.00  --comb_res_mult                         3
% 11.70/2.00  --comb_sup_mult                         2
% 11.70/2.00  --comb_inst_mult                        10
% 11.70/2.00  
% 11.70/2.00  ------ Debug Options
% 11.70/2.00  
% 11.70/2.00  --dbg_backtrace                         false
% 11.70/2.00  --dbg_dump_prop_clauses                 false
% 11.70/2.00  --dbg_dump_prop_clauses_file            -
% 11.70/2.00  --dbg_out_stat                          false
% 11.70/2.00  ------ Parsing...
% 11.70/2.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.70/2.00  
% 11.70/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 11.70/2.00  
% 11.70/2.00  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.70/2.00  
% 11.70/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 11.70/2.00  ------ Proving...
% 11.70/2.00  ------ Problem Properties 
% 11.70/2.00  
% 11.70/2.00  
% 11.70/2.00  clauses                                 42
% 11.70/2.00  conjectures                             1
% 11.70/2.00  EPR                                     8
% 11.70/2.00  Horn                                    34
% 11.70/2.00  unary                                   7
% 11.70/2.00  binary                                  9
% 11.70/2.00  lits                                    114
% 11.70/2.00  lits eq                                 15
% 11.70/2.00  fd_pure                                 0
% 11.70/2.00  fd_pseudo                               0
% 11.70/2.00  fd_cond                                 1
% 11.70/2.00  fd_pseudo_cond                          2
% 11.70/2.00  AC symbols                              0
% 11.70/2.00  
% 11.70/2.00  ------ Schedule dynamic 5 is on 
% 11.70/2.00  
% 11.70/2.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.70/2.00  
% 11.70/2.00  
% 11.70/2.00  ------ 
% 11.70/2.00  Current options:
% 11.70/2.00  ------ 
% 11.70/2.00  
% 11.70/2.00  ------ Input Options
% 11.70/2.00  
% 11.70/2.00  --out_options                           all
% 11.70/2.00  --tptp_safe_out                         true
% 11.70/2.00  --problem_path                          ""
% 11.70/2.00  --include_path                          ""
% 11.70/2.00  --clausifier                            res/vclausify_rel
% 11.70/2.00  --clausifier_options                    --mode clausify
% 11.70/2.00  --stdin                                 false
% 11.70/2.00  --stats_out                             all
% 11.70/2.00  
% 11.70/2.00  ------ General Options
% 11.70/2.00  
% 11.70/2.00  --fof                                   false
% 11.70/2.00  --time_out_real                         305.
% 11.70/2.00  --time_out_virtual                      -1.
% 11.70/2.00  --symbol_type_check                     false
% 11.70/2.00  --clausify_out                          false
% 11.70/2.00  --sig_cnt_out                           false
% 11.70/2.00  --trig_cnt_out                          false
% 11.70/2.00  --trig_cnt_out_tolerance                1.
% 11.70/2.00  --trig_cnt_out_sk_spl                   false
% 11.70/2.00  --abstr_cl_out                          false
% 11.70/2.00  
% 11.70/2.00  ------ Global Options
% 11.70/2.00  
% 11.70/2.00  --schedule                              default
% 11.70/2.00  --add_important_lit                     false
% 11.70/2.00  --prop_solver_per_cl                    1000
% 11.70/2.00  --min_unsat_core                        false
% 11.70/2.00  --soft_assumptions                      false
% 11.70/2.00  --soft_lemma_size                       3
% 11.70/2.00  --prop_impl_unit_size                   0
% 11.70/2.00  --prop_impl_unit                        []
% 11.70/2.00  --share_sel_clauses                     true
% 11.70/2.00  --reset_solvers                         false
% 11.70/2.00  --bc_imp_inh                            [conj_cone]
% 11.70/2.00  --conj_cone_tolerance                   3.
% 11.70/2.01  --extra_neg_conj                        none
% 11.70/2.01  --large_theory_mode                     true
% 11.70/2.01  --prolific_symb_bound                   200
% 11.70/2.01  --lt_threshold                          2000
% 11.70/2.01  --clause_weak_htbl                      true
% 11.70/2.01  --gc_record_bc_elim                     false
% 11.70/2.01  
% 11.70/2.01  ------ Preprocessing Options
% 11.70/2.01  
% 11.70/2.01  --preprocessing_flag                    true
% 11.70/2.01  --time_out_prep_mult                    0.1
% 11.70/2.01  --splitting_mode                        input
% 11.70/2.01  --splitting_grd                         true
% 11.70/2.01  --splitting_cvd                         false
% 11.70/2.01  --splitting_cvd_svl                     false
% 11.70/2.01  --splitting_nvd                         32
% 11.70/2.01  --sub_typing                            true
% 11.70/2.01  --prep_gs_sim                           true
% 11.70/2.01  --prep_unflatten                        true
% 11.70/2.01  --prep_res_sim                          true
% 11.70/2.01  --prep_upred                            true
% 11.70/2.01  --prep_sem_filter                       exhaustive
% 11.70/2.01  --prep_sem_filter_out                   false
% 11.70/2.01  --pred_elim                             true
% 11.70/2.01  --res_sim_input                         true
% 11.70/2.01  --eq_ax_congr_red                       true
% 11.70/2.01  --pure_diseq_elim                       true
% 11.70/2.01  --brand_transform                       false
% 11.70/2.01  --non_eq_to_eq                          false
% 11.70/2.01  --prep_def_merge                        true
% 11.70/2.01  --prep_def_merge_prop_impl              false
% 11.70/2.01  --prep_def_merge_mbd                    true
% 11.70/2.01  --prep_def_merge_tr_red                 false
% 11.70/2.01  --prep_def_merge_tr_cl                  false
% 11.70/2.01  --smt_preprocessing                     true
% 11.70/2.01  --smt_ac_axioms                         fast
% 11.70/2.01  --preprocessed_out                      false
% 11.70/2.01  --preprocessed_stats                    false
% 11.70/2.01  
% 11.70/2.01  ------ Abstraction refinement Options
% 11.70/2.01  
% 11.70/2.01  --abstr_ref                             []
% 11.70/2.01  --abstr_ref_prep                        false
% 11.70/2.01  --abstr_ref_until_sat                   false
% 11.70/2.01  --abstr_ref_sig_restrict                funpre
% 11.70/2.01  --abstr_ref_af_restrict_to_split_sk     false
% 11.70/2.01  --abstr_ref_under                       []
% 11.70/2.01  
% 11.70/2.01  ------ SAT Options
% 11.70/2.01  
% 11.70/2.01  --sat_mode                              false
% 11.70/2.01  --sat_fm_restart_options                ""
% 11.70/2.01  --sat_gr_def                            false
% 11.70/2.01  --sat_epr_types                         true
% 11.70/2.01  --sat_non_cyclic_types                  false
% 11.70/2.01  --sat_finite_models                     false
% 11.70/2.01  --sat_fm_lemmas                         false
% 11.70/2.01  --sat_fm_prep                           false
% 11.70/2.01  --sat_fm_uc_incr                        true
% 11.70/2.01  --sat_out_model                         small
% 11.70/2.01  --sat_out_clauses                       false
% 11.70/2.01  
% 11.70/2.01  ------ QBF Options
% 11.70/2.01  
% 11.70/2.01  --qbf_mode                              false
% 11.70/2.01  --qbf_elim_univ                         false
% 11.70/2.01  --qbf_dom_inst                          none
% 11.70/2.01  --qbf_dom_pre_inst                      false
% 11.70/2.01  --qbf_sk_in                             false
% 11.70/2.01  --qbf_pred_elim                         true
% 11.70/2.01  --qbf_split                             512
% 11.70/2.01  
% 11.70/2.01  ------ BMC1 Options
% 11.70/2.01  
% 11.70/2.01  --bmc1_incremental                      false
% 11.70/2.01  --bmc1_axioms                           reachable_all
% 11.70/2.01  --bmc1_min_bound                        0
% 11.70/2.01  --bmc1_max_bound                        -1
% 11.70/2.01  --bmc1_max_bound_default                -1
% 11.70/2.01  --bmc1_symbol_reachability              true
% 11.70/2.01  --bmc1_property_lemmas                  false
% 11.70/2.01  --bmc1_k_induction                      false
% 11.70/2.01  --bmc1_non_equiv_states                 false
% 11.70/2.01  --bmc1_deadlock                         false
% 11.70/2.01  --bmc1_ucm                              false
% 11.70/2.01  --bmc1_add_unsat_core                   none
% 11.70/2.01  --bmc1_unsat_core_children              false
% 11.70/2.01  --bmc1_unsat_core_extrapolate_axioms    false
% 11.70/2.01  --bmc1_out_stat                         full
% 11.70/2.01  --bmc1_ground_init                      false
% 11.70/2.01  --bmc1_pre_inst_next_state              false
% 11.70/2.01  --bmc1_pre_inst_state                   false
% 11.70/2.01  --bmc1_pre_inst_reach_state             false
% 11.70/2.01  --bmc1_out_unsat_core                   false
% 11.70/2.01  --bmc1_aig_witness_out                  false
% 11.70/2.01  --bmc1_verbose                          false
% 11.70/2.01  --bmc1_dump_clauses_tptp                false
% 11.70/2.01  --bmc1_dump_unsat_core_tptp             false
% 11.70/2.01  --bmc1_dump_file                        -
% 11.70/2.01  --bmc1_ucm_expand_uc_limit              128
% 11.70/2.01  --bmc1_ucm_n_expand_iterations          6
% 11.70/2.01  --bmc1_ucm_extend_mode                  1
% 11.70/2.01  --bmc1_ucm_init_mode                    2
% 11.70/2.01  --bmc1_ucm_cone_mode                    none
% 11.70/2.01  --bmc1_ucm_reduced_relation_type        0
% 11.70/2.01  --bmc1_ucm_relax_model                  4
% 11.70/2.01  --bmc1_ucm_full_tr_after_sat            true
% 11.70/2.01  --bmc1_ucm_expand_neg_assumptions       false
% 11.70/2.01  --bmc1_ucm_layered_model                none
% 11.70/2.01  --bmc1_ucm_max_lemma_size               10
% 11.70/2.01  
% 11.70/2.01  ------ AIG Options
% 11.70/2.01  
% 11.70/2.01  --aig_mode                              false
% 11.70/2.01  
% 11.70/2.01  ------ Instantiation Options
% 11.70/2.01  
% 11.70/2.01  --instantiation_flag                    true
% 11.70/2.01  --inst_sos_flag                         false
% 11.70/2.01  --inst_sos_phase                        true
% 11.70/2.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.70/2.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.70/2.01  --inst_lit_sel_side                     none
% 11.70/2.01  --inst_solver_per_active                1400
% 11.70/2.01  --inst_solver_calls_frac                1.
% 11.70/2.01  --inst_passive_queue_type               priority_queues
% 11.70/2.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.70/2.01  --inst_passive_queues_freq              [25;2]
% 11.70/2.01  --inst_dismatching                      true
% 11.70/2.01  --inst_eager_unprocessed_to_passive     true
% 11.70/2.01  --inst_prop_sim_given                   true
% 11.70/2.01  --inst_prop_sim_new                     false
% 11.70/2.01  --inst_subs_new                         false
% 11.70/2.01  --inst_eq_res_simp                      false
% 11.70/2.01  --inst_subs_given                       false
% 11.70/2.01  --inst_orphan_elimination               true
% 11.70/2.01  --inst_learning_loop_flag               true
% 11.70/2.01  --inst_learning_start                   3000
% 11.70/2.01  --inst_learning_factor                  2
% 11.70/2.01  --inst_start_prop_sim_after_learn       3
% 11.70/2.01  --inst_sel_renew                        solver
% 11.70/2.01  --inst_lit_activity_flag                true
% 11.70/2.01  --inst_restr_to_given                   false
% 11.70/2.01  --inst_activity_threshold               500
% 11.70/2.01  --inst_out_proof                        true
% 11.70/2.01  
% 11.70/2.01  ------ Resolution Options
% 11.70/2.01  
% 11.70/2.01  --resolution_flag                       false
% 11.70/2.01  --res_lit_sel                           adaptive
% 11.70/2.01  --res_lit_sel_side                      none
% 11.70/2.01  --res_ordering                          kbo
% 11.70/2.01  --res_to_prop_solver                    active
% 11.70/2.01  --res_prop_simpl_new                    false
% 11.70/2.01  --res_prop_simpl_given                  true
% 11.70/2.01  --res_passive_queue_type                priority_queues
% 11.70/2.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.70/2.01  --res_passive_queues_freq               [15;5]
% 11.70/2.01  --res_forward_subs                      full
% 11.70/2.01  --res_backward_subs                     full
% 11.70/2.01  --res_forward_subs_resolution           true
% 11.70/2.01  --res_backward_subs_resolution          true
% 11.70/2.01  --res_orphan_elimination                true
% 11.70/2.01  --res_time_limit                        2.
% 11.70/2.01  --res_out_proof                         true
% 11.70/2.01  
% 11.70/2.01  ------ Superposition Options
% 11.70/2.01  
% 11.70/2.01  --superposition_flag                    true
% 11.70/2.01  --sup_passive_queue_type                priority_queues
% 11.70/2.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.70/2.01  --sup_passive_queues_freq               [8;1;4]
% 11.70/2.01  --demod_completeness_check              fast
% 11.70/2.01  --demod_use_ground                      true
% 11.70/2.01  --sup_to_prop_solver                    passive
% 11.70/2.01  --sup_prop_simpl_new                    true
% 11.70/2.01  --sup_prop_simpl_given                  true
% 11.70/2.01  --sup_fun_splitting                     false
% 11.70/2.01  --sup_smt_interval                      50000
% 11.70/2.01  
% 11.70/2.01  ------ Superposition Simplification Setup
% 11.70/2.01  
% 11.70/2.01  --sup_indices_passive                   []
% 11.70/2.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.70/2.01  --sup_full_triv                         [TrivRules;PropSubs]
% 11.70/2.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.01  --sup_full_bw                           [BwDemod]
% 11.70/2.01  --sup_immed_triv                        [TrivRules]
% 11.70/2.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.70/2.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.01  --sup_immed_bw_main                     []
% 11.70/2.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.70/2.01  --sup_input_triv                        [Unflattening;TrivRules]
% 11.70/2.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.70/2.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.70/2.01  
% 11.70/2.01  ------ Combination Options
% 11.70/2.01  
% 11.70/2.01  --comb_res_mult                         3
% 11.70/2.01  --comb_sup_mult                         2
% 11.70/2.01  --comb_inst_mult                        10
% 11.70/2.01  
% 11.70/2.01  ------ Debug Options
% 11.70/2.01  
% 11.70/2.01  --dbg_backtrace                         false
% 11.70/2.01  --dbg_dump_prop_clauses                 false
% 11.70/2.01  --dbg_dump_prop_clauses_file            -
% 11.70/2.01  --dbg_out_stat                          false
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  ------ Proving...
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  % SZS status Theorem for theBenchmark.p
% 11.70/2.01  
% 11.70/2.01  % SZS output start CNFRefutation for theBenchmark.p
% 11.70/2.01  
% 11.70/2.01  fof(f22,conjecture,(
% 11.70/2.01    ! [X0,X1,X2] : (r2_hidden(X2,k1_funct_2(X0,X1)) => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f23,negated_conjecture,(
% 11.70/2.01    ~! [X0,X1,X2] : (r2_hidden(X2,k1_funct_2(X0,X1)) => (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 11.70/2.01    inference(negated_conjecture,[],[f22])).
% 11.70/2.01  
% 11.70/2.01  fof(f44,plain,(
% 11.70/2.01    ? [X0,X1,X2] : ((~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) & r2_hidden(X2,k1_funct_2(X0,X1)))),
% 11.70/2.01    inference(ennf_transformation,[],[f23])).
% 11.70/2.01  
% 11.70/2.01  fof(f66,plain,(
% 11.70/2.01    ? [X0,X1,X2] : ((~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) & r2_hidden(X2,k1_funct_2(X0,X1))) => ((~m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) | ~v1_funct_2(sK9,sK7,sK8) | ~v1_funct_1(sK9)) & r2_hidden(sK9,k1_funct_2(sK7,sK8)))),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f67,plain,(
% 11.70/2.01    (~m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) | ~v1_funct_2(sK9,sK7,sK8) | ~v1_funct_1(sK9)) & r2_hidden(sK9,k1_funct_2(sK7,sK8))),
% 11.70/2.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8,sK9])],[f44,f66])).
% 11.70/2.01  
% 11.70/2.01  fof(f113,plain,(
% 11.70/2.01    r2_hidden(sK9,k1_funct_2(sK7,sK8))),
% 11.70/2.01    inference(cnf_transformation,[],[f67])).
% 11.70/2.01  
% 11.70/2.01  fof(f20,axiom,(
% 11.70/2.01    ! [X0,X1,X2] : (k1_funct_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (r1_tarski(k2_relat_1(X4),X1) & k1_relat_1(X4) = X0 & X3 = X4 & v1_funct_1(X4) & v1_relat_1(X4))))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f45,plain,(
% 11.70/2.01    ! [X1,X0,X2] : (sP0(X1,X0,X2) <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4] : (r1_tarski(k2_relat_1(X4),X1) & k1_relat_1(X4) = X0 & X3 = X4 & v1_funct_1(X4) & v1_relat_1(X4))))),
% 11.70/2.01    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 11.70/2.01  
% 11.70/2.01  fof(f46,plain,(
% 11.70/2.01    ! [X0,X1,X2] : (k1_funct_2(X0,X1) = X2 <=> sP0(X1,X0,X2))),
% 11.70/2.01    inference(definition_folding,[],[f20,f45])).
% 11.70/2.01  
% 11.70/2.01  fof(f65,plain,(
% 11.70/2.01    ! [X0,X1,X2] : ((k1_funct_2(X0,X1) = X2 | ~sP0(X1,X0,X2)) & (sP0(X1,X0,X2) | k1_funct_2(X0,X1) != X2))),
% 11.70/2.01    inference(nnf_transformation,[],[f46])).
% 11.70/2.01  
% 11.70/2.01  fof(f108,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (sP0(X1,X0,X2) | k1_funct_2(X0,X1) != X2) )),
% 11.70/2.01    inference(cnf_transformation,[],[f65])).
% 11.70/2.01  
% 11.70/2.01  fof(f120,plain,(
% 11.70/2.01    ( ! [X0,X1] : (sP0(X1,X0,k1_funct_2(X0,X1))) )),
% 11.70/2.01    inference(equality_resolution,[],[f108])).
% 11.70/2.01  
% 11.70/2.01  fof(f59,plain,(
% 11.70/2.01    ! [X1,X0,X2] : ((sP0(X1,X0,X2) | ? [X3] : ((! [X4] : (~r1_tarski(k2_relat_1(X4),X1) | k1_relat_1(X4) != X0 | X3 != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~r2_hidden(X3,X2)) & (? [X4] : (r1_tarski(k2_relat_1(X4),X1) & k1_relat_1(X4) = X0 & X3 = X4 & v1_funct_1(X4) & v1_relat_1(X4)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ! [X4] : (~r1_tarski(k2_relat_1(X4),X1) | k1_relat_1(X4) != X0 | X3 != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4))) & (? [X4] : (r1_tarski(k2_relat_1(X4),X1) & k1_relat_1(X4) = X0 & X3 = X4 & v1_funct_1(X4) & v1_relat_1(X4)) | ~r2_hidden(X3,X2))) | ~sP0(X1,X0,X2)))),
% 11.70/2.01    inference(nnf_transformation,[],[f45])).
% 11.70/2.01  
% 11.70/2.01  fof(f60,plain,(
% 11.70/2.01    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | ? [X3] : ((! [X4] : (~r1_tarski(k2_relat_1(X4),X0) | k1_relat_1(X4) != X1 | X3 != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~r2_hidden(X3,X2)) & (? [X5] : (r1_tarski(k2_relat_1(X5),X0) & k1_relat_1(X5) = X1 & X3 = X5 & v1_funct_1(X5) & v1_relat_1(X5)) | r2_hidden(X3,X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (~r1_tarski(k2_relat_1(X7),X0) | k1_relat_1(X7) != X1 | X6 != X7 | ~v1_funct_1(X7) | ~v1_relat_1(X7))) & (? [X8] : (r1_tarski(k2_relat_1(X8),X0) & k1_relat_1(X8) = X1 & X6 = X8 & v1_funct_1(X8) & v1_relat_1(X8)) | ~r2_hidden(X6,X2))) | ~sP0(X0,X1,X2)))),
% 11.70/2.01    inference(rectify,[],[f59])).
% 11.70/2.01  
% 11.70/2.01  fof(f63,plain,(
% 11.70/2.01    ! [X6,X1,X0] : (? [X8] : (r1_tarski(k2_relat_1(X8),X0) & k1_relat_1(X8) = X1 & X6 = X8 & v1_funct_1(X8) & v1_relat_1(X8)) => (r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0) & k1_relat_1(sK6(X0,X1,X6)) = X1 & sK6(X0,X1,X6) = X6 & v1_funct_1(sK6(X0,X1,X6)) & v1_relat_1(sK6(X0,X1,X6))))),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f62,plain,(
% 11.70/2.01    ( ! [X3] : (! [X2,X1,X0] : (? [X5] : (r1_tarski(k2_relat_1(X5),X0) & k1_relat_1(X5) = X1 & X3 = X5 & v1_funct_1(X5) & v1_relat_1(X5)) => (r1_tarski(k2_relat_1(sK5(X0,X1,X2)),X0) & k1_relat_1(sK5(X0,X1,X2)) = X1 & sK5(X0,X1,X2) = X3 & v1_funct_1(sK5(X0,X1,X2)) & v1_relat_1(sK5(X0,X1,X2))))) )),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f61,plain,(
% 11.70/2.01    ! [X2,X1,X0] : (? [X3] : ((! [X4] : (~r1_tarski(k2_relat_1(X4),X0) | k1_relat_1(X4) != X1 | X3 != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~r2_hidden(X3,X2)) & (? [X5] : (r1_tarski(k2_relat_1(X5),X0) & k1_relat_1(X5) = X1 & X3 = X5 & v1_funct_1(X5) & v1_relat_1(X5)) | r2_hidden(X3,X2))) => ((! [X4] : (~r1_tarski(k2_relat_1(X4),X0) | k1_relat_1(X4) != X1 | sK4(X0,X1,X2) != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~r2_hidden(sK4(X0,X1,X2),X2)) & (? [X5] : (r1_tarski(k2_relat_1(X5),X0) & k1_relat_1(X5) = X1 & sK4(X0,X1,X2) = X5 & v1_funct_1(X5) & v1_relat_1(X5)) | r2_hidden(sK4(X0,X1,X2),X2))))),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f64,plain,(
% 11.70/2.01    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | ((! [X4] : (~r1_tarski(k2_relat_1(X4),X0) | k1_relat_1(X4) != X1 | sK4(X0,X1,X2) != X4 | ~v1_funct_1(X4) | ~v1_relat_1(X4)) | ~r2_hidden(sK4(X0,X1,X2),X2)) & ((r1_tarski(k2_relat_1(sK5(X0,X1,X2)),X0) & k1_relat_1(sK5(X0,X1,X2)) = X1 & sK4(X0,X1,X2) = sK5(X0,X1,X2) & v1_funct_1(sK5(X0,X1,X2)) & v1_relat_1(sK5(X0,X1,X2))) | r2_hidden(sK4(X0,X1,X2),X2)))) & (! [X6] : ((r2_hidden(X6,X2) | ! [X7] : (~r1_tarski(k2_relat_1(X7),X0) | k1_relat_1(X7) != X1 | X6 != X7 | ~v1_funct_1(X7) | ~v1_relat_1(X7))) & ((r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0) & k1_relat_1(sK6(X0,X1,X6)) = X1 & sK6(X0,X1,X6) = X6 & v1_funct_1(sK6(X0,X1,X6)) & v1_relat_1(sK6(X0,X1,X6))) | ~r2_hidden(X6,X2))) | ~sP0(X0,X1,X2)))),
% 11.70/2.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f60,f63,f62,f61])).
% 11.70/2.01  
% 11.70/2.01  fof(f98,plain,(
% 11.70/2.01    ( ! [X6,X2,X0,X1] : (sK6(X0,X1,X6) = X6 | ~r2_hidden(X6,X2) | ~sP0(X0,X1,X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f64])).
% 11.70/2.01  
% 11.70/2.01  fof(f100,plain,(
% 11.70/2.01    ( ! [X6,X2,X0,X1] : (r1_tarski(k2_relat_1(sK6(X0,X1,X6)),X0) | ~r2_hidden(X6,X2) | ~sP0(X0,X1,X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f64])).
% 11.70/2.01  
% 11.70/2.01  fof(f16,axiom,(
% 11.70/2.01    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(k2_relat_1(X2),X1) & r1_tarski(k1_relat_1(X2),X0)) => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f35,plain,(
% 11.70/2.01    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | (~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0))) | ~v1_relat_1(X2))),
% 11.70/2.01    inference(ennf_transformation,[],[f16])).
% 11.70/2.01  
% 11.70/2.01  fof(f36,plain,(
% 11.70/2.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2))),
% 11.70/2.01    inference(flattening,[],[f35])).
% 11.70/2.01  
% 11.70/2.01  fof(f90,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f36])).
% 11.70/2.01  
% 11.70/2.01  fof(f99,plain,(
% 11.70/2.01    ( ! [X6,X2,X0,X1] : (k1_relat_1(sK6(X0,X1,X6)) = X1 | ~r2_hidden(X6,X2) | ~sP0(X0,X1,X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f64])).
% 11.70/2.01  
% 11.70/2.01  fof(f19,axiom,(
% 11.70/2.01    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f40,plain,(
% 11.70/2.01    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 11.70/2.01    inference(ennf_transformation,[],[f19])).
% 11.70/2.01  
% 11.70/2.01  fof(f41,plain,(
% 11.70/2.01    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 11.70/2.01    inference(flattening,[],[f40])).
% 11.70/2.01  
% 11.70/2.01  fof(f95,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f41])).
% 11.70/2.01  
% 11.70/2.01  fof(f21,axiom,(
% 11.70/2.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f42,plain,(
% 11.70/2.01    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 11.70/2.01    inference(ennf_transformation,[],[f21])).
% 11.70/2.01  
% 11.70/2.01  fof(f43,plain,(
% 11.70/2.01    ! [X0] : ((m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) & v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) & v1_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 11.70/2.01    inference(flattening,[],[f42])).
% 11.70/2.01  
% 11.70/2.01  fof(f111,plain,(
% 11.70/2.01    ( ! [X0] : (v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f43])).
% 11.70/2.01  
% 11.70/2.01  fof(f112,plain,(
% 11.70/2.01    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f43])).
% 11.70/2.01  
% 11.70/2.01  fof(f17,axiom,(
% 11.70/2.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_partfun1(X2,X0) & v1_funct_1(X2)) => (v1_funct_2(X2,X0,X1) & v1_funct_1(X2))))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f37,plain,(
% 11.70/2.01    ! [X0,X1,X2] : (((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | (~v1_partfun1(X2,X0) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 11.70/2.01    inference(ennf_transformation,[],[f17])).
% 11.70/2.01  
% 11.70/2.01  fof(f38,plain,(
% 11.70/2.01    ! [X0,X1,X2] : ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 11.70/2.01    inference(flattening,[],[f37])).
% 11.70/2.01  
% 11.70/2.01  fof(f92,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 11.70/2.01    inference(cnf_transformation,[],[f38])).
% 11.70/2.01  
% 11.70/2.01  fof(f114,plain,(
% 11.70/2.01    ~m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) | ~v1_funct_2(sK9,sK7,sK8) | ~v1_funct_1(sK9)),
% 11.70/2.01    inference(cnf_transformation,[],[f67])).
% 11.70/2.01  
% 11.70/2.01  fof(f96,plain,(
% 11.70/2.01    ( ! [X6,X2,X0,X1] : (v1_relat_1(sK6(X0,X1,X6)) | ~r2_hidden(X6,X2) | ~sP0(X0,X1,X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f64])).
% 11.70/2.01  
% 11.70/2.01  fof(f97,plain,(
% 11.70/2.01    ( ! [X6,X2,X0,X1] : (v1_funct_1(sK6(X0,X1,X6)) | ~r2_hidden(X6,X2) | ~sP0(X0,X1,X2)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f64])).
% 11.70/2.01  
% 11.70/2.01  fof(f3,axiom,(
% 11.70/2.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f53,plain,(
% 11.70/2.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 11.70/2.01    inference(nnf_transformation,[],[f3])).
% 11.70/2.01  
% 11.70/2.01  fof(f54,plain,(
% 11.70/2.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 11.70/2.01    inference(flattening,[],[f53])).
% 11.70/2.01  
% 11.70/2.01  fof(f72,plain,(
% 11.70/2.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 11.70/2.01    inference(cnf_transformation,[],[f54])).
% 11.70/2.01  
% 11.70/2.01  fof(f116,plain,(
% 11.70/2.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 11.70/2.01    inference(equality_resolution,[],[f72])).
% 11.70/2.01  
% 11.70/2.01  fof(f2,axiom,(
% 11.70/2.01    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f25,plain,(
% 11.70/2.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 11.70/2.01    inference(ennf_transformation,[],[f2])).
% 11.70/2.01  
% 11.70/2.01  fof(f51,plain,(
% 11.70/2.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f52,plain,(
% 11.70/2.01    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 11.70/2.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f51])).
% 11.70/2.01  
% 11.70/2.01  fof(f71,plain,(
% 11.70/2.01    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 11.70/2.01    inference(cnf_transformation,[],[f52])).
% 11.70/2.01  
% 11.70/2.01  fof(f8,axiom,(
% 11.70/2.01    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f28,plain,(
% 11.70/2.01    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 11.70/2.01    inference(ennf_transformation,[],[f8])).
% 11.70/2.01  
% 11.70/2.01  fof(f80,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f28])).
% 11.70/2.01  
% 11.70/2.01  fof(f7,axiom,(
% 11.70/2.01    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f57,plain,(
% 11.70/2.01    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 11.70/2.01    inference(nnf_transformation,[],[f7])).
% 11.70/2.01  
% 11.70/2.01  fof(f79,plain,(
% 11.70/2.01    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f57])).
% 11.70/2.01  
% 11.70/2.01  fof(f14,axiom,(
% 11.70/2.01    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f33,plain,(
% 11.70/2.01    ! [X0] : ((k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 11.70/2.01    inference(ennf_transformation,[],[f14])).
% 11.70/2.01  
% 11.70/2.01  fof(f58,plain,(
% 11.70/2.01    ! [X0] : (((k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0)) & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 11.70/2.01    inference(nnf_transformation,[],[f33])).
% 11.70/2.01  
% 11.70/2.01  fof(f88,plain,(
% 11.70/2.01    ( ! [X0] : (k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f58])).
% 11.70/2.01  
% 11.70/2.01  fof(f18,axiom,(
% 11.70/2.01    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_partfun1(X2,X0)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f39,plain,(
% 11.70/2.01    ! [X0,X1] : (! [X2] : (v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X0))),
% 11.70/2.01    inference(ennf_transformation,[],[f18])).
% 11.70/2.01  
% 11.70/2.01  fof(f93,plain,(
% 11.70/2.01    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f39])).
% 11.70/2.01  
% 11.70/2.01  fof(f4,axiom,(
% 11.70/2.01    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f75,plain,(
% 11.70/2.01    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f4])).
% 11.70/2.01  
% 11.70/2.01  fof(f5,axiom,(
% 11.70/2.01    ! [X0] : ? [X1] : m1_subset_1(X1,X0)),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f55,plain,(
% 11.70/2.01    ! [X0] : (? [X1] : m1_subset_1(X1,X0) => m1_subset_1(sK3(X0),X0))),
% 11.70/2.01    introduced(choice_axiom,[])).
% 11.70/2.01  
% 11.70/2.01  fof(f56,plain,(
% 11.70/2.01    ! [X0] : m1_subset_1(sK3(X0),X0)),
% 11.70/2.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f5,f55])).
% 11.70/2.01  
% 11.70/2.01  fof(f76,plain,(
% 11.70/2.01    ( ! [X0] : (m1_subset_1(sK3(X0),X0)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f56])).
% 11.70/2.01  
% 11.70/2.01  fof(f6,axiom,(
% 11.70/2.01    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f26,plain,(
% 11.70/2.01    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 11.70/2.01    inference(ennf_transformation,[],[f6])).
% 11.70/2.01  
% 11.70/2.01  fof(f27,plain,(
% 11.70/2.01    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 11.70/2.01    inference(flattening,[],[f26])).
% 11.70/2.01  
% 11.70/2.01  fof(f77,plain,(
% 11.70/2.01    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f27])).
% 11.70/2.01  
% 11.70/2.01  fof(f15,axiom,(
% 11.70/2.01    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 11.70/2.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 11.70/2.01  
% 11.70/2.01  fof(f34,plain,(
% 11.70/2.01    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 11.70/2.01    inference(ennf_transformation,[],[f15])).
% 11.70/2.01  
% 11.70/2.01  fof(f89,plain,(
% 11.70/2.01    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 11.70/2.01    inference(cnf_transformation,[],[f34])).
% 11.70/2.01  
% 11.70/2.01  cnf(c_46,negated_conjecture,
% 11.70/2.01      ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) ),
% 11.70/2.01      inference(cnf_transformation,[],[f113]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5130,plain,
% 11.70/2.01      ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_46]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_41,plain,
% 11.70/2.01      ( sP0(X0,X1,k1_funct_2(X1,X0)) ),
% 11.70/2.01      inference(cnf_transformation,[],[f120]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5132,plain,
% 11.70/2.01      ( sP0(X0,X1,k1_funct_2(X1,X0)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_41]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_37,plain,
% 11.70/2.01      ( ~ sP0(X0,X1,X2) | ~ r2_hidden(X3,X2) | sK6(X0,X1,X3) = X3 ),
% 11.70/2.01      inference(cnf_transformation,[],[f98]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5136,plain,
% 11.70/2.01      ( sK6(X0,X1,X2) = X2
% 11.70/2.01      | sP0(X0,X1,X3) != iProver_top
% 11.70/2.01      | r2_hidden(X2,X3) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_7688,plain,
% 11.70/2.01      ( sK6(X0,X1,X2) = X2
% 11.70/2.01      | r2_hidden(X2,k1_funct_2(X1,X0)) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5132,c_5136]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_11037,plain,
% 11.70/2.01      ( sK6(sK8,sK7,sK9) = sK9 ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5130,c_7688]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_35,plain,
% 11.70/2.01      ( ~ sP0(X0,X1,X2)
% 11.70/2.01      | ~ r2_hidden(X3,X2)
% 11.70/2.01      | r1_tarski(k2_relat_1(sK6(X0,X1,X3)),X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f100]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5138,plain,
% 11.70/2.01      ( sP0(X0,X1,X2) != iProver_top
% 11.70/2.01      | r2_hidden(X3,X2) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK6(X0,X1,X3)),X0) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_8985,plain,
% 11.70/2.01      ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK6(X2,X1,X0)),X2) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5132,c_5138]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_18079,plain,
% 11.70/2.01      ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK9),sK8) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_11037,c_8985]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_47,plain,
% 11.70/2.01      ( r2_hidden(sK9,k1_funct_2(sK7,sK8)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_46]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_18348,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) = iProver_top ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_18079,c_47]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_22,plain,
% 11.70/2.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ r1_tarski(k1_relat_1(X0),X1)
% 11.70/2.01      | ~ r1_tarski(k2_relat_1(X0),X2)
% 11.70/2.01      | ~ v1_relat_1(X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f90]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5146,plain,
% 11.70/2.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) = iProver_top
% 11.70/2.01      | r1_tarski(k1_relat_1(X0),X1) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(X0),X2) != iProver_top
% 11.70/2.01      | v1_relat_1(X0) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_36,plain,
% 11.70/2.01      ( ~ sP0(X0,X1,X2)
% 11.70/2.01      | ~ r2_hidden(X3,X2)
% 11.70/2.01      | k1_relat_1(sK6(X0,X1,X3)) = X1 ),
% 11.70/2.01      inference(cnf_transformation,[],[f99]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5137,plain,
% 11.70/2.01      ( k1_relat_1(sK6(X0,X1,X2)) = X1
% 11.70/2.01      | sP0(X0,X1,X3) != iProver_top
% 11.70/2.01      | r2_hidden(X2,X3) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_8030,plain,
% 11.70/2.01      ( k1_relat_1(sK6(X0,X1,X2)) = X1
% 11.70/2.01      | r2_hidden(X2,k1_funct_2(X1,X0)) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5132,c_5137]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13557,plain,
% 11.70/2.01      ( k1_relat_1(sK6(sK8,sK7,sK9)) = sK7 ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5130,c_8030]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13564,plain,
% 11.70/2.01      ( k1_relat_1(sK9) = sK7 ),
% 11.70/2.01      inference(light_normalisation,[status(thm)],[c_13557,c_11037]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_26,plain,
% 11.70/2.01      ( ~ v1_funct_2(X0,X1,X2)
% 11.70/2.01      | v1_partfun1(X0,X1)
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | v1_xboole_0(X2) ),
% 11.70/2.01      inference(cnf_transformation,[],[f95]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_43,plain,
% 11.70/2.01      ( v1_funct_2(X0,k1_relat_1(X0),k2_relat_1(X0))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_relat_1(X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f111]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_743,plain,
% 11.70/2.01      ( v1_partfun1(X0,X1)
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ v1_funct_1(X3)
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_relat_1(X3)
% 11.70/2.01      | v1_xboole_0(X2)
% 11.70/2.01      | X3 != X0
% 11.70/2.01      | k1_relat_1(X3) != X1
% 11.70/2.01      | k2_relat_1(X3) != X2 ),
% 11.70/2.01      inference(resolution_lifted,[status(thm)],[c_26,c_43]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_744,plain,
% 11.70/2.01      ( v1_partfun1(X0,k1_relat_1(X0))
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_relat_1(X0)
% 11.70/2.01      | v1_xboole_0(k2_relat_1(X0)) ),
% 11.70/2.01      inference(unflattening,[status(thm)],[c_743]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_42,plain,
% 11.70/2.01      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_relat_1(X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f112]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_748,plain,
% 11.70/2.01      ( v1_partfun1(X0,k1_relat_1(X0))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_relat_1(X0)
% 11.70/2.01      | v1_xboole_0(k2_relat_1(X0)) ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_744,c_42]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_23,plain,
% 11.70/2.01      ( v1_funct_2(X0,X1,X2)
% 11.70/2.01      | ~ v1_partfun1(X0,X1)
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ v1_funct_1(X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f92]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_45,negated_conjecture,
% 11.70/2.01      ( ~ v1_funct_2(sK9,sK7,sK8)
% 11.70/2.01      | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9) ),
% 11.70/2.01      inference(cnf_transformation,[],[f114]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_767,plain,
% 11.70/2.01      ( ~ v1_partfun1(X0,X1)
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | sK8 != X2
% 11.70/2.01      | sK7 != X1
% 11.70/2.01      | sK9 != X0 ),
% 11.70/2.01      inference(resolution_lifted,[status(thm)],[c_23,c_45]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_768,plain,
% 11.70/2.01      ( ~ v1_partfun1(sK9,sK7)
% 11.70/2.01      | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9) ),
% 11.70/2.01      inference(unflattening,[status(thm)],[c_767]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_832,plain,
% 11.70/2.01      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(X0)
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | ~ v1_relat_1(X0)
% 11.70/2.01      | v1_xboole_0(k2_relat_1(X0))
% 11.70/2.01      | k1_relat_1(X0) != sK7
% 11.70/2.01      | sK9 != X0 ),
% 11.70/2.01      inference(resolution_lifted,[status(thm)],[c_748,c_768]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_833,plain,
% 11.70/2.01      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | ~ v1_relat_1(sK9)
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9))
% 11.70/2.01      | k1_relat_1(sK9) != sK7 ),
% 11.70/2.01      inference(unflattening,[status(thm)],[c_832]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5122,plain,
% 11.70/2.01      ( k1_relat_1(sK9) != sK7
% 11.70/2.01      | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_833]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13850,plain,
% 11.70/2.01      ( sK7 != sK7
% 11.70/2.01      | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(demodulation,[status(thm)],[c_13564,c_5122]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13861,plain,
% 11.70/2.01      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(equality_resolution_simp,[status(thm)],[c_13850]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_834,plain,
% 11.70/2.01      ( k1_relat_1(sK9) != sK7
% 11.70/2.01      | m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_833]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_39,plain,
% 11.70/2.01      ( ~ sP0(X0,X1,X2)
% 11.70/2.01      | ~ r2_hidden(X3,X2)
% 11.70/2.01      | v1_relat_1(sK6(X0,X1,X3)) ),
% 11.70/2.01      inference(cnf_transformation,[],[f96]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5134,plain,
% 11.70/2.01      ( sP0(X0,X1,X2) != iProver_top
% 11.70/2.01      | r2_hidden(X3,X2) != iProver_top
% 11.70/2.01      | v1_relat_1(sK6(X0,X1,X3)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_7363,plain,
% 11.70/2.01      ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
% 11.70/2.01      | v1_relat_1(sK6(X2,X1,X0)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5132,c_5134]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_12011,plain,
% 11.70/2.01      ( v1_relat_1(sK6(sK8,sK7,sK9)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5130,c_7363]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_12018,plain,
% 11.70/2.01      ( v1_relat_1(sK9) = iProver_top ),
% 11.70/2.01      inference(light_normalisation,[status(thm)],[c_12011,c_11037]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_38,plain,
% 11.70/2.01      ( ~ sP0(X0,X1,X2)
% 11.70/2.01      | ~ r2_hidden(X3,X2)
% 11.70/2.01      | v1_funct_1(sK6(X0,X1,X3)) ),
% 11.70/2.01      inference(cnf_transformation,[],[f97]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5135,plain,
% 11.70/2.01      ( sP0(X0,X1,X2) != iProver_top
% 11.70/2.01      | r2_hidden(X3,X2) != iProver_top
% 11.70/2.01      | v1_funct_1(sK6(X0,X1,X3)) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_8007,plain,
% 11.70/2.01      ( r2_hidden(X0,k1_funct_2(X1,X2)) != iProver_top
% 11.70/2.01      | v1_funct_1(sK6(X2,X1,X0)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5132,c_5135]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13485,plain,
% 11.70/2.01      ( v1_funct_1(sK6(sK8,sK7,sK9)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5130,c_8007]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13492,plain,
% 11.70/2.01      ( v1_funct_1(sK9) = iProver_top ),
% 11.70/2.01      inference(light_normalisation,[status(thm)],[c_13485,c_11037]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_15611,plain,
% 11.70/2.01      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_13861,c_834,c_12018,c_13492,c_13564]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_15618,plain,
% 11.70/2.01      ( r1_tarski(k1_relat_1(sK9),sK7) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5146,c_15611]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_15623,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | r1_tarski(sK7,sK7) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(light_normalisation,[status(thm)],[c_15618,c_13564]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_16026,plain,
% 11.70/2.01      ( r1_tarski(sK7,sK7) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_15623,c_12018]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_16027,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | r1_tarski(sK7,sK7) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(renaming,[status(thm)],[c_16026]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_6,plain,
% 11.70/2.01      ( r1_tarski(X0,X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f116]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5158,plain,
% 11.70/2.01      ( r1_tarski(X0,X0) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_16033,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(forward_subsumption_resolution,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_16027,c_5158]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_18358,plain,
% 11.70/2.01      ( v1_xboole_0(k2_relat_1(sK9)) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_18348,c_16033]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_3,plain,
% 11.70/2.01      ( r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0 ),
% 11.70/2.01      inference(cnf_transformation,[],[f71]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5160,plain,
% 11.70/2.01      ( k1_xboole_0 = X0 | r2_hidden(sK2(X0),X0) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_12,plain,
% 11.70/2.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 11.70/2.01      | ~ r2_hidden(X2,X0)
% 11.70/2.01      | ~ v1_xboole_0(X1) ),
% 11.70/2.01      inference(cnf_transformation,[],[f80]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_10,plain,
% 11.70/2.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 11.70/2.01      inference(cnf_transformation,[],[f79]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_365,plain,
% 11.70/2.01      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 11.70/2.01      inference(prop_impl,[status(thm)],[c_10]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_366,plain,
% 11.70/2.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 11.70/2.01      inference(renaming,[status(thm)],[c_365]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_441,plain,
% 11.70/2.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X2) | ~ v1_xboole_0(X2) ),
% 11.70/2.01      inference(bin_hyper_res,[status(thm)],[c_12,c_366]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5127,plain,
% 11.70/2.01      ( r2_hidden(X0,X1) != iProver_top
% 11.70/2.01      | r1_tarski(X1,X2) != iProver_top
% 11.70/2.01      | v1_xboole_0(X2) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_441]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5807,plain,
% 11.70/2.01      ( k1_xboole_0 = X0
% 11.70/2.01      | r1_tarski(X0,X1) != iProver_top
% 11.70/2.01      | v1_xboole_0(X1) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5160,c_5127]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_12077,plain,
% 11.70/2.01      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5158,c_5807]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_18404,plain,
% 11.70/2.01      ( k2_relat_1(sK9) = k1_xboole_0 ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_18358,c_12077]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_19,plain,
% 11.70/2.01      ( ~ v1_relat_1(X0)
% 11.70/2.01      | k1_relat_1(X0) = k1_xboole_0
% 11.70/2.01      | k2_relat_1(X0) != k1_xboole_0 ),
% 11.70/2.01      inference(cnf_transformation,[],[f88]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5149,plain,
% 11.70/2.01      ( k1_relat_1(X0) = k1_xboole_0
% 11.70/2.01      | k2_relat_1(X0) != k1_xboole_0
% 11.70/2.01      | v1_relat_1(X0) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_20228,plain,
% 11.70/2.01      ( k1_relat_1(sK9) = k1_xboole_0 | v1_relat_1(sK9) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_18404,c_5149]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_20240,plain,
% 11.70/2.01      ( sK7 = k1_xboole_0 | v1_relat_1(sK9) != iProver_top ),
% 11.70/2.01      inference(demodulation,[status(thm)],[c_20228,c_13564]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_20326,plain,
% 11.70/2.01      ( sK7 = k1_xboole_0 ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_20240,c_12018]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_25,plain,
% 11.70/2.01      ( v1_partfun1(X0,X1)
% 11.70/2.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ v1_xboole_0(X1) ),
% 11.70/2.01      inference(cnf_transformation,[],[f93]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_814,plain,
% 11.70/2.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 11.70/2.01      | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | ~ v1_xboole_0(X1)
% 11.70/2.01      | sK7 != X1
% 11.70/2.01      | sK9 != X0 ),
% 11.70/2.01      inference(resolution_lifted,[status(thm)],[c_25,c_768]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_815,plain,
% 11.70/2.01      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0)))
% 11.70/2.01      | ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | ~ v1_xboole_0(sK7) ),
% 11.70/2.01      inference(unflattening,[status(thm)],[c_814]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_4192,plain,
% 11.70/2.01      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8)))
% 11.70/2.01      | ~ v1_funct_1(sK9)
% 11.70/2.01      | ~ v1_xboole_0(sK7)
% 11.70/2.01      | sP0_iProver_split ),
% 11.70/2.01      inference(splitting,
% 11.70/2.01                [splitting(split),new_symbols(definition,[])],
% 11.70/2.01                [c_815]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5123,plain,
% 11.70/2.01      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top
% 11.70/2.01      | sP0_iProver_split = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_4192]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_4191,plain,
% 11.70/2.01      ( ~ m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0)))
% 11.70/2.01      | ~ sP0_iProver_split ),
% 11.70/2.01      inference(splitting,
% 11.70/2.01                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 11.70/2.01                [c_815]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5124,plain,
% 11.70/2.01      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,X0))) != iProver_top
% 11.70/2.01      | sP0_iProver_split != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_4191]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5326,plain,
% 11.70/2.01      ( m1_subset_1(sK9,k1_zfmisc_1(k2_zfmisc_1(sK7,sK8))) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(forward_subsumption_resolution,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_5123,c_5124]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_9136,plain,
% 11.70/2.01      ( r1_tarski(k1_relat_1(sK9),sK7) != iProver_top
% 11.70/2.01      | r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5146,c_5326]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_13848,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | r1_tarski(sK7,sK7) != iProver_top
% 11.70/2.01      | v1_funct_1(sK9) != iProver_top
% 11.70/2.01      | v1_relat_1(sK9) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(demodulation,[status(thm)],[c_13564,c_9136]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_14635,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | r1_tarski(sK7,sK7) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(global_propositional_subsumption,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_13848,c_12018,c_13492]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_14642,plain,
% 11.70/2.01      ( r1_tarski(k2_relat_1(sK9),sK8) != iProver_top
% 11.70/2.01      | v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(forward_subsumption_resolution,
% 11.70/2.01                [status(thm)],
% 11.70/2.01                [c_14635,c_5158]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_18359,plain,
% 11.70/2.01      ( v1_xboole_0(sK7) != iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_18348,c_14642]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_20330,plain,
% 11.70/2.01      ( v1_xboole_0(k1_xboole_0) != iProver_top ),
% 11.70/2.01      inference(demodulation,[status(thm)],[c_20326,c_18359]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_7,plain,
% 11.70/2.01      ( r1_tarski(k1_xboole_0,X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f75]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5157,plain,
% 11.70/2.01      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_8,plain,
% 11.70/2.01      ( m1_subset_1(sK3(X0),X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f76]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5156,plain,
% 11.70/2.01      ( m1_subset_1(sK3(X0),X0) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_9,plain,
% 11.70/2.01      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 11.70/2.01      inference(cnf_transformation,[],[f77]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5155,plain,
% 11.70/2.01      ( m1_subset_1(X0,X1) != iProver_top
% 11.70/2.01      | r2_hidden(X0,X1) = iProver_top
% 11.70/2.01      | v1_xboole_0(X1) = iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_7369,plain,
% 11.70/2.01      ( r2_hidden(sK3(X0),X0) = iProver_top
% 11.70/2.01      | v1_xboole_0(X0) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5156,c_5155]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_21,plain,
% 11.70/2.01      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 11.70/2.01      inference(cnf_transformation,[],[f89]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_5147,plain,
% 11.70/2.01      ( r2_hidden(X0,X1) != iProver_top
% 11.70/2.01      | r1_tarski(X1,X0) != iProver_top ),
% 11.70/2.01      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_10112,plain,
% 11.70/2.01      ( r1_tarski(X0,sK3(X0)) != iProver_top
% 11.70/2.01      | v1_xboole_0(X0) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_7369,c_5147]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(c_10140,plain,
% 11.70/2.01      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 11.70/2.01      inference(superposition,[status(thm)],[c_5157,c_10112]) ).
% 11.70/2.01  
% 11.70/2.01  cnf(contradiction,plain,
% 11.70/2.01      ( $false ),
% 11.70/2.01      inference(minisat,[status(thm)],[c_20330,c_10140]) ).
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  % SZS output end CNFRefutation for theBenchmark.p
% 11.70/2.01  
% 11.70/2.01  ------                               Statistics
% 11.70/2.01  
% 11.70/2.01  ------ General
% 11.70/2.01  
% 11.70/2.01  abstr_ref_over_cycles:                  0
% 11.70/2.01  abstr_ref_under_cycles:                 0
% 11.70/2.01  gc_basic_clause_elim:                   0
% 11.70/2.01  forced_gc_time:                         0
% 11.70/2.01  parsing_time:                           0.013
% 11.70/2.01  unif_index_cands_time:                  0.
% 11.70/2.01  unif_index_add_time:                    0.
% 11.70/2.01  orderings_time:                         0.
% 11.70/2.01  out_proof_time:                         0.014
% 11.70/2.01  total_time:                             1.399
% 11.70/2.01  num_of_symbols:                         56
% 11.70/2.01  num_of_terms:                           16223
% 11.70/2.01  
% 11.70/2.01  ------ Preprocessing
% 11.70/2.01  
% 11.70/2.01  num_of_splits:                          1
% 11.70/2.01  num_of_split_atoms:                     1
% 11.70/2.01  num_of_reused_defs:                     0
% 11.70/2.01  num_eq_ax_congr_red:                    42
% 11.70/2.01  num_of_sem_filtered_clauses:            1
% 11.70/2.01  num_of_subtypes:                        0
% 11.70/2.01  monotx_restored_types:                  0
% 11.70/2.01  sat_num_of_epr_types:                   0
% 11.70/2.01  sat_num_of_non_cyclic_types:            0
% 11.70/2.01  sat_guarded_non_collapsed_types:        0
% 11.70/2.01  num_pure_diseq_elim:                    0
% 11.70/2.01  simp_replaced_by:                       0
% 11.70/2.01  res_preprocessed:                       199
% 11.70/2.01  prep_upred:                             0
% 11.70/2.01  prep_unflattend:                        138
% 11.70/2.01  smt_new_axioms:                         0
% 11.70/2.01  pred_elim_cands:                        7
% 11.70/2.01  pred_elim:                              2
% 11.70/2.01  pred_elim_cl:                           2
% 11.70/2.01  pred_elim_cycles:                       10
% 11.70/2.01  merged_defs:                            8
% 11.70/2.01  merged_defs_ncl:                        0
% 11.70/2.01  bin_hyper_res:                          10
% 11.70/2.01  prep_cycles:                            4
% 11.70/2.01  pred_elim_time:                         0.07
% 11.70/2.01  splitting_time:                         0.
% 11.70/2.01  sem_filter_time:                        0.
% 11.70/2.01  monotx_time:                            0.001
% 11.70/2.01  subtype_inf_time:                       0.
% 11.70/2.01  
% 11.70/2.01  ------ Problem properties
% 11.70/2.01  
% 11.70/2.01  clauses:                                42
% 11.70/2.01  conjectures:                            1
% 11.70/2.01  epr:                                    8
% 11.70/2.01  horn:                                   34
% 11.70/2.01  ground:                                 4
% 11.70/2.01  unary:                                  7
% 11.70/2.01  binary:                                 9
% 11.70/2.01  lits:                                   114
% 11.70/2.01  lits_eq:                                15
% 11.70/2.01  fd_pure:                                0
% 11.70/2.01  fd_pseudo:                              0
% 11.70/2.01  fd_cond:                                1
% 11.70/2.01  fd_pseudo_cond:                         2
% 11.70/2.01  ac_symbols:                             0
% 11.70/2.01  
% 11.70/2.01  ------ Propositional Solver
% 11.70/2.01  
% 11.70/2.01  prop_solver_calls:                      27
% 11.70/2.01  prop_fast_solver_calls:                 2329
% 11.70/2.01  smt_solver_calls:                       0
% 11.70/2.01  smt_fast_solver_calls:                  0
% 11.70/2.01  prop_num_of_clauses:                    6445
% 11.70/2.01  prop_preprocess_simplified:             16018
% 11.70/2.01  prop_fo_subsumed:                       39
% 11.70/2.01  prop_solver_time:                       0.
% 11.70/2.01  smt_solver_time:                        0.
% 11.70/2.01  smt_fast_solver_time:                   0.
% 11.70/2.01  prop_fast_solver_time:                  0.
% 11.70/2.01  prop_unsat_core_time:                   0.001
% 11.70/2.01  
% 11.70/2.01  ------ QBF
% 11.70/2.01  
% 11.70/2.01  qbf_q_res:                              0
% 11.70/2.01  qbf_num_tautologies:                    0
% 11.70/2.01  qbf_prep_cycles:                        0
% 11.70/2.01  
% 11.70/2.01  ------ BMC1
% 11.70/2.01  
% 11.70/2.01  bmc1_current_bound:                     -1
% 11.70/2.01  bmc1_last_solved_bound:                 -1
% 11.70/2.01  bmc1_unsat_core_size:                   -1
% 11.70/2.01  bmc1_unsat_core_parents_size:           -1
% 11.70/2.01  bmc1_merge_next_fun:                    0
% 11.70/2.01  bmc1_unsat_core_clauses_time:           0.
% 11.70/2.01  
% 11.70/2.01  ------ Instantiation
% 11.70/2.01  
% 11.70/2.01  inst_num_of_clauses:                    1584
% 11.70/2.01  inst_num_in_passive:                    318
% 11.70/2.01  inst_num_in_active:                     701
% 11.70/2.01  inst_num_in_unprocessed:                565
% 11.70/2.01  inst_num_of_loops:                      900
% 11.70/2.01  inst_num_of_learning_restarts:          0
% 11.70/2.01  inst_num_moves_active_passive:          198
% 11.70/2.01  inst_lit_activity:                      0
% 11.70/2.01  inst_lit_activity_moves:                0
% 11.70/2.01  inst_num_tautologies:                   0
% 11.70/2.01  inst_num_prop_implied:                  0
% 11.70/2.01  inst_num_existing_simplified:           0
% 11.70/2.01  inst_num_eq_res_simplified:             0
% 11.70/2.01  inst_num_child_elim:                    0
% 11.70/2.01  inst_num_of_dismatching_blockings:      817
% 11.70/2.01  inst_num_of_non_proper_insts:           1556
% 11.70/2.01  inst_num_of_duplicates:                 0
% 11.70/2.01  inst_inst_num_from_inst_to_res:         0
% 11.70/2.01  inst_dismatching_checking_time:         0.
% 11.70/2.01  
% 11.70/2.01  ------ Resolution
% 11.70/2.01  
% 11.70/2.01  res_num_of_clauses:                     0
% 11.70/2.01  res_num_in_passive:                     0
% 11.70/2.01  res_num_in_active:                      0
% 11.70/2.01  res_num_of_loops:                       203
% 11.70/2.01  res_forward_subset_subsumed:            85
% 11.70/2.01  res_backward_subset_subsumed:           2
% 11.70/2.01  res_forward_subsumed:                   0
% 11.70/2.01  res_backward_subsumed:                  0
% 11.70/2.01  res_forward_subsumption_resolution:     2
% 11.70/2.01  res_backward_subsumption_resolution:    0
% 11.70/2.01  res_clause_to_clause_subsumption:       1817
% 11.70/2.01  res_orphan_elimination:                 0
% 11.70/2.01  res_tautology_del:                      119
% 11.70/2.01  res_num_eq_res_simplified:              0
% 11.70/2.01  res_num_sel_changes:                    0
% 11.70/2.01  res_moves_from_active_to_pass:          0
% 11.70/2.01  
% 11.70/2.01  ------ Superposition
% 11.70/2.01  
% 11.70/2.01  sup_time_total:                         0.
% 11.70/2.01  sup_time_generating:                    0.
% 11.70/2.01  sup_time_sim_full:                      0.
% 11.70/2.01  sup_time_sim_immed:                     0.
% 11.70/2.01  
% 11.70/2.01  sup_num_of_clauses:                     281
% 11.70/2.01  sup_num_in_active:                      78
% 11.70/2.01  sup_num_in_passive:                     203
% 11.70/2.01  sup_num_of_loops:                       178
% 11.70/2.01  sup_fw_superposition:                   189
% 11.70/2.01  sup_bw_superposition:                   256
% 11.70/2.01  sup_immediate_simplified:               74
% 11.70/2.01  sup_given_eliminated:                   1
% 11.70/2.01  comparisons_done:                       0
% 11.70/2.01  comparisons_avoided:                    6
% 11.70/2.01  
% 11.70/2.01  ------ Simplifications
% 11.70/2.01  
% 11.70/2.01  
% 11.70/2.01  sim_fw_subset_subsumed:                 35
% 11.70/2.01  sim_bw_subset_subsumed:                 8
% 11.70/2.01  sim_fw_subsumed:                        19
% 11.70/2.01  sim_bw_subsumed:                        2
% 11.70/2.01  sim_fw_subsumption_res:                 20
% 11.70/2.01  sim_bw_subsumption_res:                 0
% 11.70/2.01  sim_tautology_del:                      10
% 11.70/2.01  sim_eq_tautology_del:                   7
% 11.70/2.01  sim_eq_res_simp:                        2
% 11.70/2.01  sim_fw_demodulated:                     3
% 11.70/2.01  sim_bw_demodulated:                     96
% 11.70/2.01  sim_light_normalised:                   20
% 11.70/2.01  sim_joinable_taut:                      0
% 11.70/2.01  sim_joinable_simp:                      0
% 11.70/2.01  sim_ac_normalised:                      0
% 11.70/2.01  sim_smt_subsumption:                    0
% 11.70/2.01  
%------------------------------------------------------------------------------
