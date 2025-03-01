%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:50:26 EST 2020

% Result     : Theorem 2.38s
% Output     : CNFRefutation 2.38s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 241 expanded)
%              Number of clauses        :   56 (  74 expanded)
%              Number of leaves         :   11 (  47 expanded)
%              Depth                    :   17
%              Number of atoms          :  545 (1467 expanded)
%              Number of equality atoms :  156 ( 439 expanded)
%              Maximal formula depth    :   14 (   6 average)
%              Maximal clause size      :   19 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( ( v1_funct_1(X2)
            & v1_relat_1(X2) )
         => ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
           => k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
          | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
          | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f11])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0)
      | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ! [X2] :
          ( ( v1_funct_1(X2)
            & v1_relat_1(X2) )
         => ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
          <=> ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              & r2_hidden(X0,k1_relat_1(X2)) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f9])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
              | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              | ~ r2_hidden(X0,k1_relat_1(X2)) )
            & ( ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
                & r2_hidden(X0,k1_relat_1(X2)) )
              | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
              | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
              | ~ r2_hidden(X0,k1_relat_1(X2)) )
            & ( ( r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
                & r2_hidden(X0,k1_relat_1(X2)) )
              | ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) ) )
          | ~ v1_funct_1(X2)
          | ~ v1_relat_1(X2) )
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f19])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))
      | ~ r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1))
      | ~ r2_hidden(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f17,plain,(
    ! [X2,X3,X0,X1] :
      ( sP0(X2,X3,X0,X1)
    <=> ( ( k1_funct_1(X0,X3) = X2
          & r2_hidden(X3,k1_relat_1(X0)) )
        | k1_funct_1(X1,X2) != X3
        | ~ r2_hidden(X2,k2_relat_1(X0)) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f21,plain,(
    ! [X2,X3,X0,X1] :
      ( ( sP0(X2,X3,X0,X1)
        | ( ( k1_funct_1(X0,X3) != X2
            | ~ r2_hidden(X3,k1_relat_1(X0)) )
          & k1_funct_1(X1,X2) = X3
          & r2_hidden(X2,k2_relat_1(X0)) ) )
      & ( ( k1_funct_1(X0,X3) = X2
          & r2_hidden(X3,k1_relat_1(X0)) )
        | k1_funct_1(X1,X2) != X3
        | ~ r2_hidden(X2,k2_relat_1(X0))
        | ~ sP0(X2,X3,X0,X1) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f22,plain,(
    ! [X2,X3,X0,X1] :
      ( ( sP0(X2,X3,X0,X1)
        | ( ( k1_funct_1(X0,X3) != X2
            | ~ r2_hidden(X3,k1_relat_1(X0)) )
          & k1_funct_1(X1,X2) = X3
          & r2_hidden(X2,k2_relat_1(X0)) ) )
      & ( ( k1_funct_1(X0,X3) = X2
          & r2_hidden(X3,k1_relat_1(X0)) )
        | k1_funct_1(X1,X2) != X3
        | ~ r2_hidden(X2,k2_relat_1(X0))
        | ~ sP0(X2,X3,X0,X1) ) ) ),
    inference(flattening,[],[f21])).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( ( sP0(X0,X1,X2,X3)
        | ( ( k1_funct_1(X2,X1) != X0
            | ~ r2_hidden(X1,k1_relat_1(X2)) )
          & k1_funct_1(X3,X0) = X1
          & r2_hidden(X0,k2_relat_1(X2)) ) )
      & ( ( k1_funct_1(X2,X1) = X0
          & r2_hidden(X1,k1_relat_1(X2)) )
        | k1_funct_1(X3,X0) != X1
        | ~ r2_hidden(X0,k2_relat_1(X2))
        | ~ sP0(X0,X1,X2,X3) ) ) ),
    inference(rectify,[],[f22])).

fof(f38,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_funct_1(X2,X1) = X0
      | k1_funct_1(X3,X0) != X1
      | ~ r2_hidden(X0,k2_relat_1(X2))
      | ~ sP0(X0,X1,X2,X3) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f55,plain,(
    ! [X2,X0,X3] :
      ( k1_funct_1(X2,k1_funct_1(X3,X0)) = X0
      | ~ r2_hidden(X0,k2_relat_1(X2))
      | ~ sP0(X0,k1_funct_1(X3,X0),X2,X3) ) ),
    inference(equality_resolution,[],[f38])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ! [X1] :
            ( ( v1_funct_1(X1)
              & v1_relat_1(X1) )
           => ( k2_funct_1(X0) = X1
            <=> ( ! [X2,X3] :
                    ( ( ( k1_funct_1(X0,X3) = X2
                        & r2_hidden(X3,k1_relat_1(X0)) )
                     => ( k1_funct_1(X1,X2) = X3
                        & r2_hidden(X2,k2_relat_1(X0)) ) )
                    & ( ( k1_funct_1(X1,X2) = X3
                        & r2_hidden(X2,k2_relat_1(X0)) )
                     => ( k1_funct_1(X0,X3) = X2
                        & r2_hidden(X3,k1_relat_1(X0)) ) ) )
                & k1_relat_1(X1) = k2_relat_1(X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_funct_1(X0) = X1
          <=> ( ! [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) = X3
                      & r2_hidden(X2,k2_relat_1(X0)) )
                    | k1_funct_1(X0,X3) != X2
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  & ( ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                    | k1_funct_1(X1,X2) != X3
                    | ~ r2_hidden(X2,k2_relat_1(X0)) ) )
              & k1_relat_1(X1) = k2_relat_1(X0) ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_funct_1(X0) = X1
          <=> ( ! [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) = X3
                      & r2_hidden(X2,k2_relat_1(X0)) )
                    | k1_funct_1(X0,X3) != X2
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  & ( ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                    | k1_funct_1(X1,X2) != X3
                    | ~ r2_hidden(X2,k2_relat_1(X0)) ) )
              & k1_relat_1(X1) = k2_relat_1(X0) ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f13])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_funct_1(X0) = X1
          <=> ( ! [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) = X3
                      & r2_hidden(X2,k2_relat_1(X0)) )
                    | k1_funct_1(X0,X3) != X2
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  & sP0(X2,X3,X0,X1) )
              & k1_relat_1(X1) = k2_relat_1(X0) ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_folding,[],[f14,f17])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k2_funct_1(X0) = X1
              | ? [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) != X3
                      | ~ r2_hidden(X2,k2_relat_1(X0)) )
                    & k1_funct_1(X0,X3) = X2
                    & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ sP0(X2,X3,X0,X1) )
              | k1_relat_1(X1) != k2_relat_1(X0) )
            & ( ( ! [X2,X3] :
                    ( ( ( k1_funct_1(X1,X2) = X3
                        & r2_hidden(X2,k2_relat_1(X0)) )
                      | k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                    & sP0(X2,X3,X0,X1) )
                & k1_relat_1(X1) = k2_relat_1(X0) )
              | k2_funct_1(X0) != X1 ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k2_funct_1(X0) = X1
              | ? [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) != X3
                      | ~ r2_hidden(X2,k2_relat_1(X0)) )
                    & k1_funct_1(X0,X3) = X2
                    & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ sP0(X2,X3,X0,X1) )
              | k1_relat_1(X1) != k2_relat_1(X0) )
            & ( ( ! [X2,X3] :
                    ( ( ( k1_funct_1(X1,X2) = X3
                        & r2_hidden(X2,k2_relat_1(X0)) )
                      | k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                    & sP0(X2,X3,X0,X1) )
                & k1_relat_1(X1) = k2_relat_1(X0) )
              | k2_funct_1(X0) != X1 ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k2_funct_1(X0) = X1
              | ? [X2,X3] :
                  ( ( ( k1_funct_1(X1,X2) != X3
                      | ~ r2_hidden(X2,k2_relat_1(X0)) )
                    & k1_funct_1(X0,X3) = X2
                    & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ sP0(X2,X3,X0,X1) )
              | k1_relat_1(X1) != k2_relat_1(X0) )
            & ( ( ! [X4,X5] :
                    ( ( ( k1_funct_1(X1,X4) = X5
                        & r2_hidden(X4,k2_relat_1(X0)) )
                      | k1_funct_1(X0,X5) != X4
                      | ~ r2_hidden(X5,k1_relat_1(X0)) )
                    & sP0(X4,X5,X0,X1) )
                & k1_relat_1(X1) = k2_relat_1(X0) )
              | k2_funct_1(X0) != X1 ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f25])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ? [X2,X3] :
          ( ( ( k1_funct_1(X1,X2) != X3
              | ~ r2_hidden(X2,k2_relat_1(X0)) )
            & k1_funct_1(X0,X3) = X2
            & r2_hidden(X3,k1_relat_1(X0)) )
          | ~ sP0(X2,X3,X0,X1) )
     => ( ( ( k1_funct_1(X1,sK1(X0,X1)) != sK2(X0,X1)
            | ~ r2_hidden(sK1(X0,X1),k2_relat_1(X0)) )
          & k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1)
          & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) )
        | ~ sP0(sK1(X0,X1),sK2(X0,X1),X0,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( k2_funct_1(X0) = X1
              | ( ( k1_funct_1(X1,sK1(X0,X1)) != sK2(X0,X1)
                  | ~ r2_hidden(sK1(X0,X1),k2_relat_1(X0)) )
                & k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1)
                & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) )
              | ~ sP0(sK1(X0,X1),sK2(X0,X1),X0,X1)
              | k1_relat_1(X1) != k2_relat_1(X0) )
            & ( ( ! [X4,X5] :
                    ( ( ( k1_funct_1(X1,X4) = X5
                        & r2_hidden(X4,k2_relat_1(X0)) )
                      | k1_funct_1(X0,X5) != X4
                      | ~ r2_hidden(X5,k1_relat_1(X0)) )
                    & sP0(X4,X5,X0,X1) )
                & k1_relat_1(X1) = k2_relat_1(X0) )
              | k2_funct_1(X0) != X1 ) )
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f26,f27])).

fof(f43,plain,(
    ! [X4,X0,X5,X1] :
      ( sP0(X4,X5,X0,X1)
      | k2_funct_1(X0) != X1
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f61,plain,(
    ! [X4,X0,X5] :
      ( sP0(X4,X5,X0,k2_funct_1(X0))
      | ~ v1_funct_1(k2_funct_1(X0))
      | ~ v1_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f43])).

fof(f5,conjecture,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( ( r2_hidden(X0,k2_relat_1(X1))
          & v2_funct_1(X1) )
       => ( k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) = X0
          & k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) = X0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( v1_funct_1(X1)
          & v1_relat_1(X1) )
       => ( ( r2_hidden(X0,k2_relat_1(X1))
            & v2_funct_1(X1) )
         => ( k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) = X0
            & k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) = X0 ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ( k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0
        | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0 )
      & r2_hidden(X0,k2_relat_1(X1))
      & v2_funct_1(X1)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f16,plain,(
    ? [X0,X1] :
      ( ( k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0
        | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0 )
      & r2_hidden(X0,k2_relat_1(X1))
      & v2_funct_1(X1)
      & v1_funct_1(X1)
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f15])).

fof(f29,plain,
    ( ? [X0,X1] :
        ( ( k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0
          | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0 )
        & r2_hidden(X0,k2_relat_1(X1))
        & v2_funct_1(X1)
        & v1_funct_1(X1)
        & v1_relat_1(X1) )
   => ( ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
        | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 )
      & r2_hidden(sK3,k2_relat_1(sK4))
      & v2_funct_1(sK4)
      & v1_funct_1(sK4)
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
      | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 )
    & r2_hidden(sK3,k2_relat_1(sK4))
    & v2_funct_1(sK4)
    & v1_funct_1(sK4)
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f16,f29])).

fof(f51,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f49,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f50,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f30])).

fof(f1,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f8,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f7])).

fof(f31,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f32,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X1,k1_relat_1(X2))
      | k1_funct_1(X3,X0) != X1
      | ~ r2_hidden(X0,k2_relat_1(X2))
      | ~ sP0(X0,X1,X2,X3) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f56,plain,(
    ! [X2,X0,X3] :
      ( r2_hidden(k1_funct_1(X3,X0),k1_relat_1(X2))
      | ~ r2_hidden(X0,k2_relat_1(X2))
      | ~ sP0(X0,k1_funct_1(X3,X0),X2,X3) ) ),
    inference(equality_resolution,[],[f37])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = k2_relat_1(X0)
      | k2_funct_1(X0) != X1
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f62,plain,(
    ! [X0] :
      ( k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
      | ~ v1_funct_1(k2_funct_1(X0))
      | ~ v1_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f42])).

fof(f53,plain,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
    | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 ),
    inference(cnf_transformation,[],[f30])).

fof(f52,plain,(
    r2_hidden(sK3,k2_relat_1(sK4)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1085,plain,
    ( X0_42 != X1_42
    | X2_42 != X1_42
    | X2_42 = X0_42 ),
    theory(equality)).

cnf(c_1706,plain,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != X0_42
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
    | sK3 != X0_42 ),
    inference(instantiation,[status(thm)],[c_1085])).

cnf(c_1753,plain,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(X0_43,X0_42)
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
    | sK3 != k1_funct_1(X0_43,X0_42) ),
    inference(instantiation,[status(thm)],[c_1706])).

cnf(c_2785,plain,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42))
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
    | sK3 != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
    inference(instantiation,[status(thm)],[c_1753])).

cnf(c_2786,plain,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3))
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
    | sK3 != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) ),
    inference(instantiation,[status(thm)],[c_2785])).

cnf(c_1892,plain,
    ( k1_funct_1(X0_43,X0_42) != X1_42
    | sK3 != X1_42
    | sK3 = k1_funct_1(X0_43,X0_42) ),
    inference(instantiation,[status(thm)],[c_1085])).

cnf(c_2254,plain,
    ( k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) != X0_42
    | sK3 != X0_42
    | sK3 = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
    inference(instantiation,[status(thm)],[c_1892])).

cnf(c_2255,plain,
    ( k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3
    | sK3 = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3))
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2254])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X2)
    | k1_funct_1(k5_relat_1(X1,X2),X0) = k1_funct_1(X2,k1_funct_1(X1,X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1075,plain,
    ( ~ r2_hidden(X0_42,k1_relat_1(k5_relat_1(X0_43,X1_43)))
    | ~ v1_relat_1(X0_43)
    | ~ v1_relat_1(X1_43)
    | ~ v1_funct_1(X0_43)
    | ~ v1_funct_1(X1_43)
    | k1_funct_1(k5_relat_1(X0_43,X1_43),X0_42) = k1_funct_1(X1_43,k1_funct_1(X0_43,X0_42)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1996,plain,
    ( ~ r2_hidden(X0_42,k1_relat_1(k5_relat_1(k2_funct_1(sK4),X0_43)))
    | ~ v1_relat_1(X0_43)
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_funct_1(X0_43)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),X0_43),X0_42) = k1_funct_1(X0_43,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
    inference(instantiation,[status(thm)],[c_1075])).

cnf(c_2008,plain,
    ( ~ r2_hidden(sK3,k1_relat_1(k5_relat_1(k2_funct_1(sK4),sK4)))
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4)
    | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) ),
    inference(instantiation,[status(thm)],[c_1996])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
    | ~ r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_1078,plain,
    ( ~ r2_hidden(X0_42,k1_relat_1(X0_43))
    | r2_hidden(X0_42,k1_relat_1(k5_relat_1(X0_43,X1_43)))
    | ~ r2_hidden(k1_funct_1(X0_43,X0_42),k1_relat_1(X1_43))
    | ~ v1_relat_1(X0_43)
    | ~ v1_relat_1(X1_43)
    | ~ v1_funct_1(X0_43)
    | ~ v1_funct_1(X1_43) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1852,plain,
    ( r2_hidden(X0_42,k1_relat_1(k5_relat_1(k2_funct_1(sK4),X0_43)))
    | ~ r2_hidden(X0_42,k1_relat_1(k2_funct_1(sK4)))
    | ~ r2_hidden(k1_funct_1(k2_funct_1(sK4),X0_42),k1_relat_1(X0_43))
    | ~ v1_relat_1(X0_43)
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_funct_1(X0_43)
    | ~ v1_funct_1(k2_funct_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_1078])).

cnf(c_1859,plain,
    ( ~ r2_hidden(k1_funct_1(k2_funct_1(sK4),sK3),k1_relat_1(sK4))
    | r2_hidden(sK3,k1_relat_1(k5_relat_1(k2_funct_1(sK4),sK4)))
    | ~ r2_hidden(sK3,k1_relat_1(k2_funct_1(sK4)))
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1852])).

cnf(c_9,plain,
    ( ~ sP0(X0,k1_funct_1(X1,X0),X2,X1)
    | ~ r2_hidden(X0,k2_relat_1(X2))
    | k1_funct_1(X2,k1_funct_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1071,plain,
    ( ~ sP0(X0_42,k1_funct_1(X0_43,X0_42),X1_43,X0_43)
    | ~ r2_hidden(X0_42,k2_relat_1(X1_43))
    | k1_funct_1(X1_43,k1_funct_1(X0_43,X0_42)) = X0_42 ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1772,plain,
    ( ~ sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4))
    | ~ r2_hidden(X0_42,k2_relat_1(sK4))
    | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) = X0_42 ),
    inference(instantiation,[status(thm)],[c_1071])).

cnf(c_1775,plain,
    ( ~ sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4))
    | ~ r2_hidden(sK3,k2_relat_1(sK4))
    | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) = sK3 ),
    inference(instantiation,[status(thm)],[c_1772])).

cnf(c_1093,plain,
    ( ~ r2_hidden(X0_42,X0_44)
    | r2_hidden(X1_42,X1_44)
    | X1_44 != X0_44
    | X1_42 != X0_42 ),
    theory(equality)).

cnf(c_1713,plain,
    ( r2_hidden(X0_42,X0_44)
    | ~ r2_hidden(sK3,k2_relat_1(sK4))
    | X0_44 != k2_relat_1(sK4)
    | X0_42 != sK3 ),
    inference(instantiation,[status(thm)],[c_1093])).

cnf(c_1757,plain,
    ( r2_hidden(X0_42,k1_relat_1(k2_funct_1(sK4)))
    | ~ r2_hidden(sK3,k2_relat_1(sK4))
    | k1_relat_1(k2_funct_1(sK4)) != k2_relat_1(sK4)
    | X0_42 != sK3 ),
    inference(instantiation,[status(thm)],[c_1713])).

cnf(c_1759,plain,
    ( ~ r2_hidden(sK3,k2_relat_1(sK4))
    | r2_hidden(sK3,k1_relat_1(k2_funct_1(sK4)))
    | k1_relat_1(k2_funct_1(sK4)) != k2_relat_1(sK4)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1757])).

cnf(c_16,plain,
    ( sP0(X0,X1,X2,k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_20,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_388,plain,
    ( sP0(X0,X1,X2,k2_funct_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_20])).

cnf(c_389,plain,
    ( sP0(X0,X1,sK4,k2_funct_1(sK4))
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4) ),
    inference(unflattening,[status(thm)],[c_388])).

cnf(c_22,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_76,plain,
    ( v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_79,plain,
    ( ~ v1_relat_1(sK4)
    | v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_393,plain,
    ( sP0(X0,X1,sK4,k2_funct_1(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_389,c_22,c_21,c_76,c_79])).

cnf(c_1059,plain,
    ( sP0(X0_42,X1_42,sK4,k2_funct_1(sK4)) ),
    inference(subtyping,[status(esa)],[c_393])).

cnf(c_1722,plain,
    ( sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_1059])).

cnf(c_1728,plain,
    ( sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_1722])).

cnf(c_10,plain,
    ( ~ sP0(X0,k1_funct_1(X1,X0),X2,X1)
    | ~ r2_hidden(X0,k2_relat_1(X2))
    | r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1070,plain,
    ( ~ sP0(X0_42,k1_funct_1(X0_43,X0_42),X1_43,X0_43)
    | ~ r2_hidden(X0_42,k2_relat_1(X1_43))
    | r2_hidden(k1_funct_1(X0_43,X0_42),k1_relat_1(X1_43)) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_1721,plain,
    ( ~ sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4))
    | ~ r2_hidden(X0_42,k2_relat_1(sK4))
    | r2_hidden(k1_funct_1(k2_funct_1(sK4),X0_42),k1_relat_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_1070])).

cnf(c_1724,plain,
    ( ~ sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4))
    | r2_hidden(k1_funct_1(k2_funct_1(sK4),sK3),k1_relat_1(sK4))
    | ~ r2_hidden(sK3,k2_relat_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_1721])).

cnf(c_17,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(k2_funct_1(X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(X0))
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_130,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_17,c_1,c_0])).

cnf(c_131,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(renaming,[status(thm)],[c_130])).

cnf(c_257,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_131,c_20])).

cnf(c_258,plain,
    ( ~ v1_relat_1(sK4)
    | ~ v1_funct_1(sK4)
    | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(unflattening,[status(thm)],[c_257])).

cnf(c_28,plain,
    ( ~ v2_funct_1(sK4)
    | ~ v1_relat_1(k2_funct_1(sK4))
    | ~ v1_relat_1(sK4)
    | ~ v1_funct_1(k2_funct_1(sK4))
    | ~ v1_funct_1(sK4)
    | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_260,plain,
    ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_258,c_22,c_21,c_20,c_28,c_76,c_79])).

cnf(c_1065,plain,
    ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
    inference(subtyping,[status(esa)],[c_260])).

cnf(c_18,negated_conjecture,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
    | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1069,negated_conjecture,
    ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
    | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_1082,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_1111,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1082])).

cnf(c_19,negated_conjecture,
    ( r2_hidden(sK3,k2_relat_1(sK4)) ),
    inference(cnf_transformation,[],[f52])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2786,c_2255,c_2008,c_1859,c_1775,c_1759,c_1728,c_1724,c_1065,c_1069,c_1111,c_79,c_76,c_19,c_21,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:26:38 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.38/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.38/1.00  
% 2.38/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.38/1.00  
% 2.38/1.00  ------  iProver source info
% 2.38/1.00  
% 2.38/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.38/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.38/1.00  git: non_committed_changes: false
% 2.38/1.00  git: last_make_outside_of_git: false
% 2.38/1.00  
% 2.38/1.00  ------ 
% 2.38/1.00  
% 2.38/1.00  ------ Input Options
% 2.38/1.00  
% 2.38/1.00  --out_options                           all
% 2.38/1.00  --tptp_safe_out                         true
% 2.38/1.00  --problem_path                          ""
% 2.38/1.00  --include_path                          ""
% 2.38/1.00  --clausifier                            res/vclausify_rel
% 2.38/1.00  --clausifier_options                    --mode clausify
% 2.38/1.00  --stdin                                 false
% 2.38/1.00  --stats_out                             all
% 2.38/1.00  
% 2.38/1.00  ------ General Options
% 2.38/1.00  
% 2.38/1.00  --fof                                   false
% 2.38/1.00  --time_out_real                         305.
% 2.38/1.00  --time_out_virtual                      -1.
% 2.38/1.00  --symbol_type_check                     false
% 2.38/1.00  --clausify_out                          false
% 2.38/1.00  --sig_cnt_out                           false
% 2.38/1.00  --trig_cnt_out                          false
% 2.38/1.00  --trig_cnt_out_tolerance                1.
% 2.38/1.00  --trig_cnt_out_sk_spl                   false
% 2.38/1.00  --abstr_cl_out                          false
% 2.38/1.00  
% 2.38/1.00  ------ Global Options
% 2.38/1.00  
% 2.38/1.00  --schedule                              default
% 2.38/1.00  --add_important_lit                     false
% 2.38/1.00  --prop_solver_per_cl                    1000
% 2.38/1.00  --min_unsat_core                        false
% 2.38/1.00  --soft_assumptions                      false
% 2.38/1.00  --soft_lemma_size                       3
% 2.38/1.00  --prop_impl_unit_size                   0
% 2.38/1.00  --prop_impl_unit                        []
% 2.38/1.00  --share_sel_clauses                     true
% 2.38/1.00  --reset_solvers                         false
% 2.38/1.00  --bc_imp_inh                            [conj_cone]
% 2.38/1.00  --conj_cone_tolerance                   3.
% 2.38/1.00  --extra_neg_conj                        none
% 2.38/1.00  --large_theory_mode                     true
% 2.38/1.00  --prolific_symb_bound                   200
% 2.38/1.00  --lt_threshold                          2000
% 2.38/1.00  --clause_weak_htbl                      true
% 2.38/1.00  --gc_record_bc_elim                     false
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing Options
% 2.38/1.00  
% 2.38/1.00  --preprocessing_flag                    true
% 2.38/1.00  --time_out_prep_mult                    0.1
% 2.38/1.00  --splitting_mode                        input
% 2.38/1.00  --splitting_grd                         true
% 2.38/1.00  --splitting_cvd                         false
% 2.38/1.00  --splitting_cvd_svl                     false
% 2.38/1.00  --splitting_nvd                         32
% 2.38/1.00  --sub_typing                            true
% 2.38/1.00  --prep_gs_sim                           true
% 2.38/1.00  --prep_unflatten                        true
% 2.38/1.00  --prep_res_sim                          true
% 2.38/1.00  --prep_upred                            true
% 2.38/1.00  --prep_sem_filter                       exhaustive
% 2.38/1.00  --prep_sem_filter_out                   false
% 2.38/1.00  --pred_elim                             true
% 2.38/1.00  --res_sim_input                         true
% 2.38/1.00  --eq_ax_congr_red                       true
% 2.38/1.00  --pure_diseq_elim                       true
% 2.38/1.00  --brand_transform                       false
% 2.38/1.00  --non_eq_to_eq                          false
% 2.38/1.00  --prep_def_merge                        true
% 2.38/1.00  --prep_def_merge_prop_impl              false
% 2.38/1.00  --prep_def_merge_mbd                    true
% 2.38/1.00  --prep_def_merge_tr_red                 false
% 2.38/1.00  --prep_def_merge_tr_cl                  false
% 2.38/1.00  --smt_preprocessing                     true
% 2.38/1.00  --smt_ac_axioms                         fast
% 2.38/1.00  --preprocessed_out                      false
% 2.38/1.00  --preprocessed_stats                    false
% 2.38/1.00  
% 2.38/1.00  ------ Abstraction refinement Options
% 2.38/1.00  
% 2.38/1.00  --abstr_ref                             []
% 2.38/1.00  --abstr_ref_prep                        false
% 2.38/1.00  --abstr_ref_until_sat                   false
% 2.38/1.00  --abstr_ref_sig_restrict                funpre
% 2.38/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.38/1.00  --abstr_ref_under                       []
% 2.38/1.00  
% 2.38/1.00  ------ SAT Options
% 2.38/1.00  
% 2.38/1.00  --sat_mode                              false
% 2.38/1.00  --sat_fm_restart_options                ""
% 2.38/1.00  --sat_gr_def                            false
% 2.38/1.00  --sat_epr_types                         true
% 2.38/1.00  --sat_non_cyclic_types                  false
% 2.38/1.00  --sat_finite_models                     false
% 2.38/1.00  --sat_fm_lemmas                         false
% 2.38/1.00  --sat_fm_prep                           false
% 2.38/1.00  --sat_fm_uc_incr                        true
% 2.38/1.00  --sat_out_model                         small
% 2.38/1.00  --sat_out_clauses                       false
% 2.38/1.00  
% 2.38/1.00  ------ QBF Options
% 2.38/1.00  
% 2.38/1.00  --qbf_mode                              false
% 2.38/1.00  --qbf_elim_univ                         false
% 2.38/1.00  --qbf_dom_inst                          none
% 2.38/1.00  --qbf_dom_pre_inst                      false
% 2.38/1.00  --qbf_sk_in                             false
% 2.38/1.00  --qbf_pred_elim                         true
% 2.38/1.00  --qbf_split                             512
% 2.38/1.00  
% 2.38/1.00  ------ BMC1 Options
% 2.38/1.00  
% 2.38/1.00  --bmc1_incremental                      false
% 2.38/1.00  --bmc1_axioms                           reachable_all
% 2.38/1.00  --bmc1_min_bound                        0
% 2.38/1.00  --bmc1_max_bound                        -1
% 2.38/1.00  --bmc1_max_bound_default                -1
% 2.38/1.00  --bmc1_symbol_reachability              true
% 2.38/1.00  --bmc1_property_lemmas                  false
% 2.38/1.00  --bmc1_k_induction                      false
% 2.38/1.00  --bmc1_non_equiv_states                 false
% 2.38/1.00  --bmc1_deadlock                         false
% 2.38/1.00  --bmc1_ucm                              false
% 2.38/1.00  --bmc1_add_unsat_core                   none
% 2.38/1.00  --bmc1_unsat_core_children              false
% 2.38/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.38/1.00  --bmc1_out_stat                         full
% 2.38/1.00  --bmc1_ground_init                      false
% 2.38/1.00  --bmc1_pre_inst_next_state              false
% 2.38/1.00  --bmc1_pre_inst_state                   false
% 2.38/1.00  --bmc1_pre_inst_reach_state             false
% 2.38/1.00  --bmc1_out_unsat_core                   false
% 2.38/1.00  --bmc1_aig_witness_out                  false
% 2.38/1.00  --bmc1_verbose                          false
% 2.38/1.00  --bmc1_dump_clauses_tptp                false
% 2.38/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.38/1.00  --bmc1_dump_file                        -
% 2.38/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.38/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.38/1.00  --bmc1_ucm_extend_mode                  1
% 2.38/1.00  --bmc1_ucm_init_mode                    2
% 2.38/1.00  --bmc1_ucm_cone_mode                    none
% 2.38/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.38/1.00  --bmc1_ucm_relax_model                  4
% 2.38/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.38/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.38/1.00  --bmc1_ucm_layered_model                none
% 2.38/1.00  --bmc1_ucm_max_lemma_size               10
% 2.38/1.00  
% 2.38/1.00  ------ AIG Options
% 2.38/1.00  
% 2.38/1.00  --aig_mode                              false
% 2.38/1.00  
% 2.38/1.00  ------ Instantiation Options
% 2.38/1.00  
% 2.38/1.00  --instantiation_flag                    true
% 2.38/1.00  --inst_sos_flag                         false
% 2.38/1.00  --inst_sos_phase                        true
% 2.38/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.38/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.38/1.00  --inst_lit_sel_side                     num_symb
% 2.38/1.00  --inst_solver_per_active                1400
% 2.38/1.00  --inst_solver_calls_frac                1.
% 2.38/1.00  --inst_passive_queue_type               priority_queues
% 2.38/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.38/1.00  --inst_passive_queues_freq              [25;2]
% 2.38/1.00  --inst_dismatching                      true
% 2.38/1.00  --inst_eager_unprocessed_to_passive     true
% 2.38/1.00  --inst_prop_sim_given                   true
% 2.38/1.00  --inst_prop_sim_new                     false
% 2.38/1.00  --inst_subs_new                         false
% 2.38/1.00  --inst_eq_res_simp                      false
% 2.38/1.00  --inst_subs_given                       false
% 2.38/1.00  --inst_orphan_elimination               true
% 2.38/1.00  --inst_learning_loop_flag               true
% 2.38/1.00  --inst_learning_start                   3000
% 2.38/1.00  --inst_learning_factor                  2
% 2.38/1.00  --inst_start_prop_sim_after_learn       3
% 2.38/1.00  --inst_sel_renew                        solver
% 2.38/1.00  --inst_lit_activity_flag                true
% 2.38/1.00  --inst_restr_to_given                   false
% 2.38/1.00  --inst_activity_threshold               500
% 2.38/1.00  --inst_out_proof                        true
% 2.38/1.00  
% 2.38/1.00  ------ Resolution Options
% 2.38/1.00  
% 2.38/1.00  --resolution_flag                       true
% 2.38/1.00  --res_lit_sel                           adaptive
% 2.38/1.00  --res_lit_sel_side                      none
% 2.38/1.00  --res_ordering                          kbo
% 2.38/1.00  --res_to_prop_solver                    active
% 2.38/1.00  --res_prop_simpl_new                    false
% 2.38/1.00  --res_prop_simpl_given                  true
% 2.38/1.00  --res_passive_queue_type                priority_queues
% 2.38/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.38/1.00  --res_passive_queues_freq               [15;5]
% 2.38/1.00  --res_forward_subs                      full
% 2.38/1.00  --res_backward_subs                     full
% 2.38/1.00  --res_forward_subs_resolution           true
% 2.38/1.00  --res_backward_subs_resolution          true
% 2.38/1.00  --res_orphan_elimination                true
% 2.38/1.00  --res_time_limit                        2.
% 2.38/1.00  --res_out_proof                         true
% 2.38/1.00  
% 2.38/1.00  ------ Superposition Options
% 2.38/1.00  
% 2.38/1.00  --superposition_flag                    true
% 2.38/1.00  --sup_passive_queue_type                priority_queues
% 2.38/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.38/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.38/1.00  --demod_completeness_check              fast
% 2.38/1.00  --demod_use_ground                      true
% 2.38/1.00  --sup_to_prop_solver                    passive
% 2.38/1.00  --sup_prop_simpl_new                    true
% 2.38/1.00  --sup_prop_simpl_given                  true
% 2.38/1.00  --sup_fun_splitting                     false
% 2.38/1.00  --sup_smt_interval                      50000
% 2.38/1.00  
% 2.38/1.00  ------ Superposition Simplification Setup
% 2.38/1.00  
% 2.38/1.00  --sup_indices_passive                   []
% 2.38/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.38/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_full_bw                           [BwDemod]
% 2.38/1.00  --sup_immed_triv                        [TrivRules]
% 2.38/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.38/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_immed_bw_main                     []
% 2.38/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.38/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.38/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.38/1.00  
% 2.38/1.00  ------ Combination Options
% 2.38/1.00  
% 2.38/1.00  --comb_res_mult                         3
% 2.38/1.00  --comb_sup_mult                         2
% 2.38/1.00  --comb_inst_mult                        10
% 2.38/1.00  
% 2.38/1.00  ------ Debug Options
% 2.38/1.00  
% 2.38/1.00  --dbg_backtrace                         false
% 2.38/1.00  --dbg_dump_prop_clauses                 false
% 2.38/1.00  --dbg_dump_prop_clauses_file            -
% 2.38/1.00  --dbg_out_stat                          false
% 2.38/1.00  ------ Parsing...
% 2.38/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.38/1.00  ------ Proving...
% 2.38/1.00  ------ Problem Properties 
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  clauses                                 22
% 2.38/1.00  conjectures                             4
% 2.38/1.00  EPR                                     2
% 2.38/1.00  Horn                                    18
% 2.38/1.00  unary                                   5
% 2.38/1.00  binary                                  6
% 2.38/1.00  lits                                    73
% 2.38/1.00  lits eq                                 15
% 2.38/1.00  fd_pure                                 0
% 2.38/1.00  fd_pseudo                               0
% 2.38/1.00  fd_cond                                 3
% 2.38/1.00  fd_pseudo_cond                          1
% 2.38/1.00  AC symbols                              0
% 2.38/1.00  
% 2.38/1.00  ------ Schedule dynamic 5 is on 
% 2.38/1.00  
% 2.38/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  ------ 
% 2.38/1.00  Current options:
% 2.38/1.00  ------ 
% 2.38/1.00  
% 2.38/1.00  ------ Input Options
% 2.38/1.00  
% 2.38/1.00  --out_options                           all
% 2.38/1.00  --tptp_safe_out                         true
% 2.38/1.00  --problem_path                          ""
% 2.38/1.00  --include_path                          ""
% 2.38/1.00  --clausifier                            res/vclausify_rel
% 2.38/1.00  --clausifier_options                    --mode clausify
% 2.38/1.00  --stdin                                 false
% 2.38/1.00  --stats_out                             all
% 2.38/1.00  
% 2.38/1.00  ------ General Options
% 2.38/1.00  
% 2.38/1.00  --fof                                   false
% 2.38/1.00  --time_out_real                         305.
% 2.38/1.00  --time_out_virtual                      -1.
% 2.38/1.00  --symbol_type_check                     false
% 2.38/1.00  --clausify_out                          false
% 2.38/1.00  --sig_cnt_out                           false
% 2.38/1.00  --trig_cnt_out                          false
% 2.38/1.00  --trig_cnt_out_tolerance                1.
% 2.38/1.00  --trig_cnt_out_sk_spl                   false
% 2.38/1.00  --abstr_cl_out                          false
% 2.38/1.00  
% 2.38/1.00  ------ Global Options
% 2.38/1.00  
% 2.38/1.00  --schedule                              default
% 2.38/1.00  --add_important_lit                     false
% 2.38/1.00  --prop_solver_per_cl                    1000
% 2.38/1.00  --min_unsat_core                        false
% 2.38/1.00  --soft_assumptions                      false
% 2.38/1.00  --soft_lemma_size                       3
% 2.38/1.00  --prop_impl_unit_size                   0
% 2.38/1.00  --prop_impl_unit                        []
% 2.38/1.00  --share_sel_clauses                     true
% 2.38/1.00  --reset_solvers                         false
% 2.38/1.00  --bc_imp_inh                            [conj_cone]
% 2.38/1.00  --conj_cone_tolerance                   3.
% 2.38/1.00  --extra_neg_conj                        none
% 2.38/1.00  --large_theory_mode                     true
% 2.38/1.00  --prolific_symb_bound                   200
% 2.38/1.00  --lt_threshold                          2000
% 2.38/1.00  --clause_weak_htbl                      true
% 2.38/1.00  --gc_record_bc_elim                     false
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing Options
% 2.38/1.00  
% 2.38/1.00  --preprocessing_flag                    true
% 2.38/1.00  --time_out_prep_mult                    0.1
% 2.38/1.00  --splitting_mode                        input
% 2.38/1.00  --splitting_grd                         true
% 2.38/1.00  --splitting_cvd                         false
% 2.38/1.00  --splitting_cvd_svl                     false
% 2.38/1.00  --splitting_nvd                         32
% 2.38/1.00  --sub_typing                            true
% 2.38/1.00  --prep_gs_sim                           true
% 2.38/1.00  --prep_unflatten                        true
% 2.38/1.00  --prep_res_sim                          true
% 2.38/1.00  --prep_upred                            true
% 2.38/1.00  --prep_sem_filter                       exhaustive
% 2.38/1.00  --prep_sem_filter_out                   false
% 2.38/1.00  --pred_elim                             true
% 2.38/1.00  --res_sim_input                         true
% 2.38/1.00  --eq_ax_congr_red                       true
% 2.38/1.00  --pure_diseq_elim                       true
% 2.38/1.00  --brand_transform                       false
% 2.38/1.00  --non_eq_to_eq                          false
% 2.38/1.00  --prep_def_merge                        true
% 2.38/1.00  --prep_def_merge_prop_impl              false
% 2.38/1.00  --prep_def_merge_mbd                    true
% 2.38/1.00  --prep_def_merge_tr_red                 false
% 2.38/1.00  --prep_def_merge_tr_cl                  false
% 2.38/1.00  --smt_preprocessing                     true
% 2.38/1.00  --smt_ac_axioms                         fast
% 2.38/1.00  --preprocessed_out                      false
% 2.38/1.00  --preprocessed_stats                    false
% 2.38/1.00  
% 2.38/1.00  ------ Abstraction refinement Options
% 2.38/1.00  
% 2.38/1.00  --abstr_ref                             []
% 2.38/1.00  --abstr_ref_prep                        false
% 2.38/1.00  --abstr_ref_until_sat                   false
% 2.38/1.00  --abstr_ref_sig_restrict                funpre
% 2.38/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.38/1.00  --abstr_ref_under                       []
% 2.38/1.00  
% 2.38/1.00  ------ SAT Options
% 2.38/1.00  
% 2.38/1.00  --sat_mode                              false
% 2.38/1.00  --sat_fm_restart_options                ""
% 2.38/1.00  --sat_gr_def                            false
% 2.38/1.00  --sat_epr_types                         true
% 2.38/1.00  --sat_non_cyclic_types                  false
% 2.38/1.00  --sat_finite_models                     false
% 2.38/1.00  --sat_fm_lemmas                         false
% 2.38/1.00  --sat_fm_prep                           false
% 2.38/1.00  --sat_fm_uc_incr                        true
% 2.38/1.00  --sat_out_model                         small
% 2.38/1.00  --sat_out_clauses                       false
% 2.38/1.00  
% 2.38/1.00  ------ QBF Options
% 2.38/1.00  
% 2.38/1.00  --qbf_mode                              false
% 2.38/1.00  --qbf_elim_univ                         false
% 2.38/1.00  --qbf_dom_inst                          none
% 2.38/1.00  --qbf_dom_pre_inst                      false
% 2.38/1.00  --qbf_sk_in                             false
% 2.38/1.00  --qbf_pred_elim                         true
% 2.38/1.00  --qbf_split                             512
% 2.38/1.00  
% 2.38/1.00  ------ BMC1 Options
% 2.38/1.00  
% 2.38/1.00  --bmc1_incremental                      false
% 2.38/1.00  --bmc1_axioms                           reachable_all
% 2.38/1.00  --bmc1_min_bound                        0
% 2.38/1.00  --bmc1_max_bound                        -1
% 2.38/1.00  --bmc1_max_bound_default                -1
% 2.38/1.00  --bmc1_symbol_reachability              true
% 2.38/1.00  --bmc1_property_lemmas                  false
% 2.38/1.00  --bmc1_k_induction                      false
% 2.38/1.00  --bmc1_non_equiv_states                 false
% 2.38/1.00  --bmc1_deadlock                         false
% 2.38/1.00  --bmc1_ucm                              false
% 2.38/1.00  --bmc1_add_unsat_core                   none
% 2.38/1.00  --bmc1_unsat_core_children              false
% 2.38/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.38/1.00  --bmc1_out_stat                         full
% 2.38/1.00  --bmc1_ground_init                      false
% 2.38/1.00  --bmc1_pre_inst_next_state              false
% 2.38/1.00  --bmc1_pre_inst_state                   false
% 2.38/1.00  --bmc1_pre_inst_reach_state             false
% 2.38/1.00  --bmc1_out_unsat_core                   false
% 2.38/1.00  --bmc1_aig_witness_out                  false
% 2.38/1.00  --bmc1_verbose                          false
% 2.38/1.00  --bmc1_dump_clauses_tptp                false
% 2.38/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.38/1.00  --bmc1_dump_file                        -
% 2.38/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.38/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.38/1.00  --bmc1_ucm_extend_mode                  1
% 2.38/1.00  --bmc1_ucm_init_mode                    2
% 2.38/1.00  --bmc1_ucm_cone_mode                    none
% 2.38/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.38/1.00  --bmc1_ucm_relax_model                  4
% 2.38/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.38/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.38/1.00  --bmc1_ucm_layered_model                none
% 2.38/1.00  --bmc1_ucm_max_lemma_size               10
% 2.38/1.00  
% 2.38/1.00  ------ AIG Options
% 2.38/1.00  
% 2.38/1.00  --aig_mode                              false
% 2.38/1.00  
% 2.38/1.00  ------ Instantiation Options
% 2.38/1.00  
% 2.38/1.00  --instantiation_flag                    true
% 2.38/1.00  --inst_sos_flag                         false
% 2.38/1.00  --inst_sos_phase                        true
% 2.38/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.38/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.38/1.00  --inst_lit_sel_side                     none
% 2.38/1.00  --inst_solver_per_active                1400
% 2.38/1.00  --inst_solver_calls_frac                1.
% 2.38/1.00  --inst_passive_queue_type               priority_queues
% 2.38/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.38/1.00  --inst_passive_queues_freq              [25;2]
% 2.38/1.00  --inst_dismatching                      true
% 2.38/1.00  --inst_eager_unprocessed_to_passive     true
% 2.38/1.00  --inst_prop_sim_given                   true
% 2.38/1.00  --inst_prop_sim_new                     false
% 2.38/1.00  --inst_subs_new                         false
% 2.38/1.00  --inst_eq_res_simp                      false
% 2.38/1.00  --inst_subs_given                       false
% 2.38/1.00  --inst_orphan_elimination               true
% 2.38/1.00  --inst_learning_loop_flag               true
% 2.38/1.00  --inst_learning_start                   3000
% 2.38/1.00  --inst_learning_factor                  2
% 2.38/1.00  --inst_start_prop_sim_after_learn       3
% 2.38/1.00  --inst_sel_renew                        solver
% 2.38/1.00  --inst_lit_activity_flag                true
% 2.38/1.00  --inst_restr_to_given                   false
% 2.38/1.00  --inst_activity_threshold               500
% 2.38/1.00  --inst_out_proof                        true
% 2.38/1.00  
% 2.38/1.00  ------ Resolution Options
% 2.38/1.00  
% 2.38/1.00  --resolution_flag                       false
% 2.38/1.00  --res_lit_sel                           adaptive
% 2.38/1.00  --res_lit_sel_side                      none
% 2.38/1.00  --res_ordering                          kbo
% 2.38/1.00  --res_to_prop_solver                    active
% 2.38/1.00  --res_prop_simpl_new                    false
% 2.38/1.00  --res_prop_simpl_given                  true
% 2.38/1.00  --res_passive_queue_type                priority_queues
% 2.38/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.38/1.00  --res_passive_queues_freq               [15;5]
% 2.38/1.00  --res_forward_subs                      full
% 2.38/1.00  --res_backward_subs                     full
% 2.38/1.00  --res_forward_subs_resolution           true
% 2.38/1.00  --res_backward_subs_resolution          true
% 2.38/1.00  --res_orphan_elimination                true
% 2.38/1.00  --res_time_limit                        2.
% 2.38/1.00  --res_out_proof                         true
% 2.38/1.00  
% 2.38/1.00  ------ Superposition Options
% 2.38/1.00  
% 2.38/1.00  --superposition_flag                    true
% 2.38/1.00  --sup_passive_queue_type                priority_queues
% 2.38/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.38/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.38/1.00  --demod_completeness_check              fast
% 2.38/1.00  --demod_use_ground                      true
% 2.38/1.00  --sup_to_prop_solver                    passive
% 2.38/1.00  --sup_prop_simpl_new                    true
% 2.38/1.00  --sup_prop_simpl_given                  true
% 2.38/1.00  --sup_fun_splitting                     false
% 2.38/1.00  --sup_smt_interval                      50000
% 2.38/1.00  
% 2.38/1.00  ------ Superposition Simplification Setup
% 2.38/1.00  
% 2.38/1.00  --sup_indices_passive                   []
% 2.38/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.38/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.38/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_full_bw                           [BwDemod]
% 2.38/1.00  --sup_immed_triv                        [TrivRules]
% 2.38/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.38/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_immed_bw_main                     []
% 2.38/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.38/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.38/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.38/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.38/1.00  
% 2.38/1.00  ------ Combination Options
% 2.38/1.00  
% 2.38/1.00  --comb_res_mult                         3
% 2.38/1.00  --comb_sup_mult                         2
% 2.38/1.00  --comb_inst_mult                        10
% 2.38/1.00  
% 2.38/1.00  ------ Debug Options
% 2.38/1.00  
% 2.38/1.00  --dbg_backtrace                         false
% 2.38/1.00  --dbg_dump_prop_clauses                 false
% 2.38/1.00  --dbg_dump_prop_clauses_file            -
% 2.38/1.00  --dbg_out_stat                          false
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  ------ Proving...
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  % SZS status Theorem for theBenchmark.p
% 2.38/1.00  
% 2.38/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.38/1.00  
% 2.38/1.00  fof(f3,axiom,(
% 2.38/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) => k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0))))),
% 2.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.38/1.00  
% 2.38/1.00  fof(f11,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : ((k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.38/1.00    inference(ennf_transformation,[],[f3])).
% 2.38/1.00  
% 2.38/1.00  fof(f12,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : (k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.38/1.00    inference(flattening,[],[f11])).
% 2.38/1.00  
% 2.38/1.00  fof(f36,plain,(
% 2.38/1.00    ( ! [X2,X0,X1] : (k1_funct_1(X1,k1_funct_1(X2,X0)) = k1_funct_1(k5_relat_1(X2,X1),X0) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f12])).
% 2.38/1.00  
% 2.38/1.00  fof(f2,axiom,(
% 2.38/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))))))),
% 2.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.38/1.00  
% 2.38/1.00  fof(f9,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : ((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 2.38/1.00    inference(ennf_transformation,[],[f2])).
% 2.38/1.00  
% 2.38/1.00  fof(f10,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : ((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) <=> (r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2)))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.38/1.00    inference(flattening,[],[f9])).
% 2.38/1.00  
% 2.38/1.00  fof(f19,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : (((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | (~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2)))) & ((r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.38/1.00    inference(nnf_transformation,[],[f10])).
% 2.38/1.00  
% 2.38/1.00  fof(f20,plain,(
% 2.38/1.00    ! [X0,X1] : (! [X2] : (((r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2))) & ((r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) & r2_hidden(X0,k1_relat_1(X2))) | ~r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 2.38/1.00    inference(flattening,[],[f19])).
% 2.38/1.00  
% 2.38/1.00  fof(f35,plain,(
% 2.38/1.00    ( ! [X2,X0,X1] : (r2_hidden(X0,k1_relat_1(k5_relat_1(X2,X1))) | ~r2_hidden(k1_funct_1(X2,X0),k1_relat_1(X1)) | ~r2_hidden(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f20])).
% 2.38/1.00  
% 2.38/1.00  fof(f17,plain,(
% 2.38/1.00    ! [X2,X3,X0,X1] : (sP0(X2,X3,X0,X1) <=> ((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))))),
% 2.38/1.00    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 2.38/1.00  
% 2.38/1.00  fof(f21,plain,(
% 2.38/1.00    ! [X2,X3,X0,X1] : ((sP0(X2,X3,X0,X1) | ((k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0)))) & (((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))) | ~sP0(X2,X3,X0,X1)))),
% 2.38/1.00    inference(nnf_transformation,[],[f17])).
% 2.38/1.00  
% 2.38/1.00  fof(f22,plain,(
% 2.38/1.00    ! [X2,X3,X0,X1] : ((sP0(X2,X3,X0,X1) | ((k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0)))) & ((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0)) | ~sP0(X2,X3,X0,X1)))),
% 2.38/1.00    inference(flattening,[],[f21])).
% 2.38/1.00  
% 2.38/1.00  fof(f23,plain,(
% 2.38/1.00    ! [X0,X1,X2,X3] : ((sP0(X0,X1,X2,X3) | ((k1_funct_1(X2,X1) != X0 | ~r2_hidden(X1,k1_relat_1(X2))) & k1_funct_1(X3,X0) = X1 & r2_hidden(X0,k2_relat_1(X2)))) & ((k1_funct_1(X2,X1) = X0 & r2_hidden(X1,k1_relat_1(X2))) | k1_funct_1(X3,X0) != X1 | ~r2_hidden(X0,k2_relat_1(X2)) | ~sP0(X0,X1,X2,X3)))),
% 2.38/1.00    inference(rectify,[],[f22])).
% 2.38/1.00  
% 2.38/1.00  fof(f38,plain,(
% 2.38/1.00    ( ! [X2,X0,X3,X1] : (k1_funct_1(X2,X1) = X0 | k1_funct_1(X3,X0) != X1 | ~r2_hidden(X0,k2_relat_1(X2)) | ~sP0(X0,X1,X2,X3)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f23])).
% 2.38/1.00  
% 2.38/1.00  fof(f55,plain,(
% 2.38/1.00    ( ! [X2,X0,X3] : (k1_funct_1(X2,k1_funct_1(X3,X0)) = X0 | ~r2_hidden(X0,k2_relat_1(X2)) | ~sP0(X0,k1_funct_1(X3,X0),X2,X3)) )),
% 2.38/1.00    inference(equality_resolution,[],[f38])).
% 2.38/1.00  
% 2.38/1.00  fof(f4,axiom,(
% 2.38/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k2_funct_1(X0) = X1 <=> (! [X2,X3] : (((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) => (k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0)))) & ((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) => (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) & k1_relat_1(X1) = k2_relat_1(X0))))))),
% 2.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.38/1.00  
% 2.38/1.00  fof(f13,plain,(
% 2.38/1.00    ! [X0] : ((! [X1] : ((k2_funct_1(X0) = X1 <=> (! [X2,X3] : (((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) | (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0)))) & ((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | (k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))))) & k1_relat_1(X1) = k2_relat_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.38/1.00    inference(ennf_transformation,[],[f4])).
% 2.38/1.00  
% 2.38/1.00  fof(f14,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 <=> (! [X2,X3] : (((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) | k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & ((k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0)))) & k1_relat_1(X1) = k2_relat_1(X0))) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(flattening,[],[f13])).
% 2.38/1.00  
% 2.38/1.00  fof(f18,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 <=> (! [X2,X3] : (((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) | k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & sP0(X2,X3,X0,X1)) & k1_relat_1(X1) = k2_relat_1(X0))) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(definition_folding,[],[f14,f17])).
% 2.38/1.00  
% 2.38/1.00  fof(f24,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : (((k2_funct_1(X0) = X1 | (? [X2,X3] : (((k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))) & k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X2,X3,X0,X1)) | k1_relat_1(X1) != k2_relat_1(X0))) & ((! [X2,X3] : (((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) | k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & sP0(X2,X3,X0,X1)) & k1_relat_1(X1) = k2_relat_1(X0)) | k2_funct_1(X0) != X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(nnf_transformation,[],[f18])).
% 2.38/1.00  
% 2.38/1.00  fof(f25,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : (((k2_funct_1(X0) = X1 | ? [X2,X3] : (((k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))) & k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X2,X3,X0,X1)) | k1_relat_1(X1) != k2_relat_1(X0)) & ((! [X2,X3] : (((k1_funct_1(X1,X2) = X3 & r2_hidden(X2,k2_relat_1(X0))) | k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) & sP0(X2,X3,X0,X1)) & k1_relat_1(X1) = k2_relat_1(X0)) | k2_funct_1(X0) != X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(flattening,[],[f24])).
% 2.38/1.00  
% 2.38/1.00  fof(f26,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : (((k2_funct_1(X0) = X1 | ? [X2,X3] : (((k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))) & k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X2,X3,X0,X1)) | k1_relat_1(X1) != k2_relat_1(X0)) & ((! [X4,X5] : (((k1_funct_1(X1,X4) = X5 & r2_hidden(X4,k2_relat_1(X0))) | k1_funct_1(X0,X5) != X4 | ~r2_hidden(X5,k1_relat_1(X0))) & sP0(X4,X5,X0,X1)) & k1_relat_1(X1) = k2_relat_1(X0)) | k2_funct_1(X0) != X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(rectify,[],[f25])).
% 2.38/1.00  
% 2.38/1.00  fof(f27,plain,(
% 2.38/1.00    ! [X1,X0] : (? [X2,X3] : (((k1_funct_1(X1,X2) != X3 | ~r2_hidden(X2,k2_relat_1(X0))) & k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~sP0(X2,X3,X0,X1)) => (((k1_funct_1(X1,sK1(X0,X1)) != sK2(X0,X1) | ~r2_hidden(sK1(X0,X1),k2_relat_1(X0))) & k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1) & r2_hidden(sK2(X0,X1),k1_relat_1(X0))) | ~sP0(sK1(X0,X1),sK2(X0,X1),X0,X1)))),
% 2.38/1.00    introduced(choice_axiom,[])).
% 2.38/1.00  
% 2.38/1.00  fof(f28,plain,(
% 2.38/1.00    ! [X0] : (! [X1] : (((k2_funct_1(X0) = X1 | (((k1_funct_1(X1,sK1(X0,X1)) != sK2(X0,X1) | ~r2_hidden(sK1(X0,X1),k2_relat_1(X0))) & k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1) & r2_hidden(sK2(X0,X1),k1_relat_1(X0))) | ~sP0(sK1(X0,X1),sK2(X0,X1),X0,X1)) | k1_relat_1(X1) != k2_relat_1(X0)) & ((! [X4,X5] : (((k1_funct_1(X1,X4) = X5 & r2_hidden(X4,k2_relat_1(X0))) | k1_funct_1(X0,X5) != X4 | ~r2_hidden(X5,k1_relat_1(X0))) & sP0(X4,X5,X0,X1)) & k1_relat_1(X1) = k2_relat_1(X0)) | k2_funct_1(X0) != X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f26,f27])).
% 2.38/1.00  
% 2.38/1.00  fof(f43,plain,(
% 2.38/1.00    ( ! [X4,X0,X5,X1] : (sP0(X4,X5,X0,X1) | k2_funct_1(X0) != X1 | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f28])).
% 2.38/1.00  
% 2.38/1.00  fof(f61,plain,(
% 2.38/1.00    ( ! [X4,X0,X5] : (sP0(X4,X5,X0,k2_funct_1(X0)) | ~v1_funct_1(k2_funct_1(X0)) | ~v1_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(equality_resolution,[],[f43])).
% 2.38/1.00  
% 2.38/1.00  fof(f5,conjecture,(
% 2.38/1.00    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((r2_hidden(X0,k2_relat_1(X1)) & v2_funct_1(X1)) => (k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) = X0 & k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) = X0)))),
% 2.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.38/1.00  
% 2.38/1.00  fof(f6,negated_conjecture,(
% 2.38/1.00    ~! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((r2_hidden(X0,k2_relat_1(X1)) & v2_funct_1(X1)) => (k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) = X0 & k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) = X0)))),
% 2.38/1.00    inference(negated_conjecture,[],[f5])).
% 2.38/1.00  
% 2.38/1.00  fof(f15,plain,(
% 2.38/1.00    ? [X0,X1] : (((k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0 | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0) & (r2_hidden(X0,k2_relat_1(X1)) & v2_funct_1(X1))) & (v1_funct_1(X1) & v1_relat_1(X1)))),
% 2.38/1.00    inference(ennf_transformation,[],[f6])).
% 2.38/1.00  
% 2.38/1.00  fof(f16,plain,(
% 2.38/1.00    ? [X0,X1] : ((k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0 | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0) & r2_hidden(X0,k2_relat_1(X1)) & v2_funct_1(X1) & v1_funct_1(X1) & v1_relat_1(X1))),
% 2.38/1.00    inference(flattening,[],[f15])).
% 2.38/1.00  
% 2.38/1.00  fof(f29,plain,(
% 2.38/1.00    ? [X0,X1] : ((k1_funct_1(k5_relat_1(k2_funct_1(X1),X1),X0) != X0 | k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X0)) != X0) & r2_hidden(X0,k2_relat_1(X1)) & v2_funct_1(X1) & v1_funct_1(X1) & v1_relat_1(X1)) => ((k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3 | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3) & r2_hidden(sK3,k2_relat_1(sK4)) & v2_funct_1(sK4) & v1_funct_1(sK4) & v1_relat_1(sK4))),
% 2.38/1.00    introduced(choice_axiom,[])).
% 2.38/1.00  
% 2.38/1.00  fof(f30,plain,(
% 2.38/1.00    (k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3 | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3) & r2_hidden(sK3,k2_relat_1(sK4)) & v2_funct_1(sK4) & v1_funct_1(sK4) & v1_relat_1(sK4)),
% 2.38/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f16,f29])).
% 2.38/1.00  
% 2.38/1.00  fof(f51,plain,(
% 2.38/1.00    v2_funct_1(sK4)),
% 2.38/1.00    inference(cnf_transformation,[],[f30])).
% 2.38/1.00  
% 2.38/1.00  fof(f49,plain,(
% 2.38/1.00    v1_relat_1(sK4)),
% 2.38/1.00    inference(cnf_transformation,[],[f30])).
% 2.38/1.00  
% 2.38/1.00  fof(f50,plain,(
% 2.38/1.00    v1_funct_1(sK4)),
% 2.38/1.00    inference(cnf_transformation,[],[f30])).
% 2.38/1.00  
% 2.38/1.00  fof(f1,axiom,(
% 2.38/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 2.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.38/1.00  
% 2.38/1.00  fof(f7,plain,(
% 2.38/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.38/1.00    inference(ennf_transformation,[],[f1])).
% 2.38/1.00  
% 2.38/1.00  fof(f8,plain,(
% 2.38/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.38/1.00    inference(flattening,[],[f7])).
% 2.38/1.00  
% 2.38/1.00  fof(f31,plain,(
% 2.38/1.00    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f8])).
% 2.38/1.00  
% 2.38/1.00  fof(f32,plain,(
% 2.38/1.00    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f8])).
% 2.38/1.00  
% 2.38/1.00  fof(f37,plain,(
% 2.38/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(X1,k1_relat_1(X2)) | k1_funct_1(X3,X0) != X1 | ~r2_hidden(X0,k2_relat_1(X2)) | ~sP0(X0,X1,X2,X3)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f23])).
% 2.38/1.00  
% 2.38/1.00  fof(f56,plain,(
% 2.38/1.00    ( ! [X2,X0,X3] : (r2_hidden(k1_funct_1(X3,X0),k1_relat_1(X2)) | ~r2_hidden(X0,k2_relat_1(X2)) | ~sP0(X0,k1_funct_1(X3,X0),X2,X3)) )),
% 2.38/1.00    inference(equality_resolution,[],[f37])).
% 2.38/1.00  
% 2.38/1.00  fof(f42,plain,(
% 2.38/1.00    ( ! [X0,X1] : (k1_relat_1(X1) = k2_relat_1(X0) | k2_funct_1(X0) != X1 | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(cnf_transformation,[],[f28])).
% 2.38/1.00  
% 2.38/1.00  fof(f62,plain,(
% 2.38/1.00    ( ! [X0] : (k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) | ~v1_funct_1(k2_funct_1(X0)) | ~v1_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.38/1.00    inference(equality_resolution,[],[f42])).
% 2.38/1.00  
% 2.38/1.00  fof(f53,plain,(
% 2.38/1.00    k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3 | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3),
% 2.38/1.00    inference(cnf_transformation,[],[f30])).
% 2.38/1.00  
% 2.38/1.00  fof(f52,plain,(
% 2.38/1.00    r2_hidden(sK3,k2_relat_1(sK4))),
% 2.38/1.00    inference(cnf_transformation,[],[f30])).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1085,plain,
% 2.38/1.00      ( X0_42 != X1_42 | X2_42 != X1_42 | X2_42 = X0_42 ),
% 2.38/1.00      theory(equality) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1706,plain,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != X0_42
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
% 2.38/1.00      | sK3 != X0_42 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1085]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1753,plain,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(X0_43,X0_42)
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
% 2.38/1.00      | sK3 != k1_funct_1(X0_43,X0_42) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1706]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2785,plain,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42))
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
% 2.38/1.00      | sK3 != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1753]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2786,plain,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3))
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = sK3
% 2.38/1.00      | sK3 != k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_2785]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1892,plain,
% 2.38/1.00      ( k1_funct_1(X0_43,X0_42) != X1_42
% 2.38/1.00      | sK3 != X1_42
% 2.38/1.00      | sK3 = k1_funct_1(X0_43,X0_42) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1085]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2254,plain,
% 2.38/1.00      ( k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) != X0_42
% 2.38/1.00      | sK3 != X0_42
% 2.38/1.00      | sK3 = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1892]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2255,plain,
% 2.38/1.00      ( k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3
% 2.38/1.00      | sK3 = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3))
% 2.38/1.00      | sK3 != sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_2254]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_5,plain,
% 2.38/1.00      ( ~ r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
% 2.38/1.00      | ~ v1_relat_1(X1)
% 2.38/1.00      | ~ v1_relat_1(X2)
% 2.38/1.00      | ~ v1_funct_1(X1)
% 2.38/1.00      | ~ v1_funct_1(X2)
% 2.38/1.00      | k1_funct_1(k5_relat_1(X1,X2),X0) = k1_funct_1(X2,k1_funct_1(X1,X0)) ),
% 2.38/1.00      inference(cnf_transformation,[],[f36]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1075,plain,
% 2.38/1.00      ( ~ r2_hidden(X0_42,k1_relat_1(k5_relat_1(X0_43,X1_43)))
% 2.38/1.00      | ~ v1_relat_1(X0_43)
% 2.38/1.00      | ~ v1_relat_1(X1_43)
% 2.38/1.00      | ~ v1_funct_1(X0_43)
% 2.38/1.00      | ~ v1_funct_1(X1_43)
% 2.38/1.00      | k1_funct_1(k5_relat_1(X0_43,X1_43),X0_42) = k1_funct_1(X1_43,k1_funct_1(X0_43,X0_42)) ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_5]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1996,plain,
% 2.38/1.00      ( ~ r2_hidden(X0_42,k1_relat_1(k5_relat_1(k2_funct_1(sK4),X0_43)))
% 2.38/1.00      | ~ v1_relat_1(X0_43)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(X0_43)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),X0_43),X0_42) = k1_funct_1(X0_43,k1_funct_1(k2_funct_1(sK4),X0_42)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1075]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2008,plain,
% 2.38/1.00      ( ~ r2_hidden(sK3,k1_relat_1(k5_relat_1(k2_funct_1(sK4),sK4)))
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(sK4)
% 2.38/1.00      | k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) = k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1996]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_2,plain,
% 2.38/1.00      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 2.38/1.00      | r2_hidden(X0,k1_relat_1(k5_relat_1(X1,X2)))
% 2.38/1.00      | ~ r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2))
% 2.38/1.00      | ~ v1_relat_1(X1)
% 2.38/1.00      | ~ v1_relat_1(X2)
% 2.38/1.00      | ~ v1_funct_1(X1)
% 2.38/1.00      | ~ v1_funct_1(X2) ),
% 2.38/1.00      inference(cnf_transformation,[],[f35]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1078,plain,
% 2.38/1.00      ( ~ r2_hidden(X0_42,k1_relat_1(X0_43))
% 2.38/1.00      | r2_hidden(X0_42,k1_relat_1(k5_relat_1(X0_43,X1_43)))
% 2.38/1.00      | ~ r2_hidden(k1_funct_1(X0_43,X0_42),k1_relat_1(X1_43))
% 2.38/1.00      | ~ v1_relat_1(X0_43)
% 2.38/1.00      | ~ v1_relat_1(X1_43)
% 2.38/1.00      | ~ v1_funct_1(X0_43)
% 2.38/1.00      | ~ v1_funct_1(X1_43) ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_2]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1852,plain,
% 2.38/1.00      ( r2_hidden(X0_42,k1_relat_1(k5_relat_1(k2_funct_1(sK4),X0_43)))
% 2.38/1.00      | ~ r2_hidden(X0_42,k1_relat_1(k2_funct_1(sK4)))
% 2.38/1.00      | ~ r2_hidden(k1_funct_1(k2_funct_1(sK4),X0_42),k1_relat_1(X0_43))
% 2.38/1.00      | ~ v1_relat_1(X0_43)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(X0_43)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1078]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1859,plain,
% 2.38/1.00      ( ~ r2_hidden(k1_funct_1(k2_funct_1(sK4),sK3),k1_relat_1(sK4))
% 2.38/1.00      | r2_hidden(sK3,k1_relat_1(k5_relat_1(k2_funct_1(sK4),sK4)))
% 2.38/1.00      | ~ r2_hidden(sK3,k1_relat_1(k2_funct_1(sK4)))
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(sK4) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1852]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_9,plain,
% 2.38/1.00      ( ~ sP0(X0,k1_funct_1(X1,X0),X2,X1)
% 2.38/1.00      | ~ r2_hidden(X0,k2_relat_1(X2))
% 2.38/1.00      | k1_funct_1(X2,k1_funct_1(X1,X0)) = X0 ),
% 2.38/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1071,plain,
% 2.38/1.00      ( ~ sP0(X0_42,k1_funct_1(X0_43,X0_42),X1_43,X0_43)
% 2.38/1.00      | ~ r2_hidden(X0_42,k2_relat_1(X1_43))
% 2.38/1.00      | k1_funct_1(X1_43,k1_funct_1(X0_43,X0_42)) = X0_42 ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_9]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1772,plain,
% 2.38/1.00      ( ~ sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4))
% 2.38/1.00      | ~ r2_hidden(X0_42,k2_relat_1(sK4))
% 2.38/1.00      | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),X0_42)) = X0_42 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1071]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1775,plain,
% 2.38/1.00      ( ~ sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4))
% 2.38/1.00      | ~ r2_hidden(sK3,k2_relat_1(sK4))
% 2.38/1.00      | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) = sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1772]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1093,plain,
% 2.38/1.00      ( ~ r2_hidden(X0_42,X0_44)
% 2.38/1.00      | r2_hidden(X1_42,X1_44)
% 2.38/1.00      | X1_44 != X0_44
% 2.38/1.00      | X1_42 != X0_42 ),
% 2.38/1.00      theory(equality) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1713,plain,
% 2.38/1.00      ( r2_hidden(X0_42,X0_44)
% 2.38/1.00      | ~ r2_hidden(sK3,k2_relat_1(sK4))
% 2.38/1.00      | X0_44 != k2_relat_1(sK4)
% 2.38/1.00      | X0_42 != sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1093]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1757,plain,
% 2.38/1.00      ( r2_hidden(X0_42,k1_relat_1(k2_funct_1(sK4)))
% 2.38/1.00      | ~ r2_hidden(sK3,k2_relat_1(sK4))
% 2.38/1.00      | k1_relat_1(k2_funct_1(sK4)) != k2_relat_1(sK4)
% 2.38/1.00      | X0_42 != sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1713]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1759,plain,
% 2.38/1.00      ( ~ r2_hidden(sK3,k2_relat_1(sK4))
% 2.38/1.00      | r2_hidden(sK3,k1_relat_1(k2_funct_1(sK4)))
% 2.38/1.00      | k1_relat_1(k2_funct_1(sK4)) != k2_relat_1(sK4)
% 2.38/1.00      | sK3 != sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1757]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_16,plain,
% 2.38/1.00      ( sP0(X0,X1,X2,k2_funct_1(X2))
% 2.38/1.00      | ~ v2_funct_1(X2)
% 2.38/1.00      | ~ v1_relat_1(X2)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(X2))
% 2.38/1.00      | ~ v1_funct_1(X2)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(X2)) ),
% 2.38/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_20,negated_conjecture,
% 2.38/1.00      ( v2_funct_1(sK4) ),
% 2.38/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_388,plain,
% 2.38/1.00      ( sP0(X0,X1,X2,k2_funct_1(X2))
% 2.38/1.00      | ~ v1_relat_1(X2)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(X2))
% 2.38/1.00      | ~ v1_funct_1(X2)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(X2))
% 2.38/1.00      | sK4 != X2 ),
% 2.38/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_20]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_389,plain,
% 2.38/1.00      ( sP0(X0,X1,sK4,k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(sK4) ),
% 2.38/1.00      inference(unflattening,[status(thm)],[c_388]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_22,negated_conjecture,
% 2.38/1.00      ( v1_relat_1(sK4) ),
% 2.38/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_21,negated_conjecture,
% 2.38/1.00      ( v1_funct_1(sK4) ),
% 2.38/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1,plain,
% 2.38/1.00      ( ~ v1_relat_1(X0)
% 2.38/1.00      | v1_relat_1(k2_funct_1(X0))
% 2.38/1.00      | ~ v1_funct_1(X0) ),
% 2.38/1.00      inference(cnf_transformation,[],[f31]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_76,plain,
% 2.38/1.00      ( v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(sK4) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_0,plain,
% 2.38/1.00      ( ~ v1_relat_1(X0)
% 2.38/1.00      | ~ v1_funct_1(X0)
% 2.38/1.00      | v1_funct_1(k2_funct_1(X0)) ),
% 2.38/1.00      inference(cnf_transformation,[],[f32]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_79,plain,
% 2.38/1.00      ( ~ v1_relat_1(sK4)
% 2.38/1.00      | v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(sK4) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_0]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_393,plain,
% 2.38/1.00      ( sP0(X0,X1,sK4,k2_funct_1(sK4)) ),
% 2.38/1.00      inference(global_propositional_subsumption,
% 2.38/1.00                [status(thm)],
% 2.38/1.00                [c_389,c_22,c_21,c_76,c_79]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1059,plain,
% 2.38/1.00      ( sP0(X0_42,X1_42,sK4,k2_funct_1(sK4)) ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_393]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1722,plain,
% 2.38/1.00      ( sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1059]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1728,plain,
% 2.38/1.00      ( sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1722]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_10,plain,
% 2.38/1.00      ( ~ sP0(X0,k1_funct_1(X1,X0),X2,X1)
% 2.38/1.00      | ~ r2_hidden(X0,k2_relat_1(X2))
% 2.38/1.00      | r2_hidden(k1_funct_1(X1,X0),k1_relat_1(X2)) ),
% 2.38/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1070,plain,
% 2.38/1.00      ( ~ sP0(X0_42,k1_funct_1(X0_43,X0_42),X1_43,X0_43)
% 2.38/1.00      | ~ r2_hidden(X0_42,k2_relat_1(X1_43))
% 2.38/1.00      | r2_hidden(k1_funct_1(X0_43,X0_42),k1_relat_1(X1_43)) ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_10]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1721,plain,
% 2.38/1.00      ( ~ sP0(X0_42,k1_funct_1(k2_funct_1(sK4),X0_42),sK4,k2_funct_1(sK4))
% 2.38/1.00      | ~ r2_hidden(X0_42,k2_relat_1(sK4))
% 2.38/1.00      | r2_hidden(k1_funct_1(k2_funct_1(sK4),X0_42),k1_relat_1(sK4)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1070]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1724,plain,
% 2.38/1.00      ( ~ sP0(sK3,k1_funct_1(k2_funct_1(sK4),sK3),sK4,k2_funct_1(sK4))
% 2.38/1.00      | r2_hidden(k1_funct_1(k2_funct_1(sK4),sK3),k1_relat_1(sK4))
% 2.38/1.00      | ~ r2_hidden(sK3,k2_relat_1(sK4)) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1721]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_17,plain,
% 2.38/1.00      ( ~ v2_funct_1(X0)
% 2.38/1.00      | ~ v1_relat_1(X0)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(X0))
% 2.38/1.00      | ~ v1_funct_1(X0)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(X0))
% 2.38/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.38/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_130,plain,
% 2.38/1.00      ( ~ v1_funct_1(X0)
% 2.38/1.00      | ~ v2_funct_1(X0)
% 2.38/1.00      | ~ v1_relat_1(X0)
% 2.38/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.38/1.00      inference(global_propositional_subsumption,
% 2.38/1.00                [status(thm)],
% 2.38/1.00                [c_17,c_1,c_0]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_131,plain,
% 2.38/1.00      ( ~ v2_funct_1(X0)
% 2.38/1.00      | ~ v1_relat_1(X0)
% 2.38/1.00      | ~ v1_funct_1(X0)
% 2.38/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 2.38/1.00      inference(renaming,[status(thm)],[c_130]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_257,plain,
% 2.38/1.00      ( ~ v1_relat_1(X0)
% 2.38/1.00      | ~ v1_funct_1(X0)
% 2.38/1.00      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 2.38/1.00      | sK4 != X0 ),
% 2.38/1.00      inference(resolution_lifted,[status(thm)],[c_131,c_20]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_258,plain,
% 2.38/1.00      ( ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(sK4)
% 2.38/1.00      | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 2.38/1.00      inference(unflattening,[status(thm)],[c_257]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_28,plain,
% 2.38/1.00      ( ~ v2_funct_1(sK4)
% 2.38/1.00      | ~ v1_relat_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_relat_1(sK4)
% 2.38/1.00      | ~ v1_funct_1(k2_funct_1(sK4))
% 2.38/1.00      | ~ v1_funct_1(sK4)
% 2.38/1.00      | k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_17]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_260,plain,
% 2.38/1.00      ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 2.38/1.00      inference(global_propositional_subsumption,
% 2.38/1.00                [status(thm)],
% 2.38/1.00                [c_258,c_22,c_21,c_20,c_28,c_76,c_79]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1065,plain,
% 2.38/1.00      ( k1_relat_1(k2_funct_1(sK4)) = k2_relat_1(sK4) ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_260]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_18,negated_conjecture,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
% 2.38/1.00      | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 ),
% 2.38/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1069,negated_conjecture,
% 2.38/1.00      ( k1_funct_1(k5_relat_1(k2_funct_1(sK4),sK4),sK3) != sK3
% 2.38/1.00      | k1_funct_1(sK4,k1_funct_1(k2_funct_1(sK4),sK3)) != sK3 ),
% 2.38/1.00      inference(subtyping,[status(esa)],[c_18]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1082,plain,( X0_42 = X0_42 ),theory(equality) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_1111,plain,
% 2.38/1.00      ( sK3 = sK3 ),
% 2.38/1.00      inference(instantiation,[status(thm)],[c_1082]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(c_19,negated_conjecture,
% 2.38/1.00      ( r2_hidden(sK3,k2_relat_1(sK4)) ),
% 2.38/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.38/1.00  
% 2.38/1.00  cnf(contradiction,plain,
% 2.38/1.00      ( $false ),
% 2.38/1.00      inference(minisat,
% 2.38/1.00                [status(thm)],
% 2.38/1.00                [c_2786,c_2255,c_2008,c_1859,c_1775,c_1759,c_1728,c_1724,
% 2.38/1.00                 c_1065,c_1069,c_1111,c_79,c_76,c_19,c_21,c_22]) ).
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.38/1.00  
% 2.38/1.00  ------                               Statistics
% 2.38/1.00  
% 2.38/1.00  ------ General
% 2.38/1.00  
% 2.38/1.00  abstr_ref_over_cycles:                  0
% 2.38/1.00  abstr_ref_under_cycles:                 0
% 2.38/1.00  gc_basic_clause_elim:                   0
% 2.38/1.00  forced_gc_time:                         0
% 2.38/1.00  parsing_time:                           0.009
% 2.38/1.00  unif_index_cands_time:                  0.
% 2.38/1.00  unif_index_add_time:                    0.
% 2.38/1.00  orderings_time:                         0.
% 2.38/1.00  out_proof_time:                         0.01
% 2.38/1.00  total_time:                             0.126
% 2.38/1.00  num_of_symbols:                         48
% 2.38/1.00  num_of_terms:                           2464
% 2.38/1.00  
% 2.38/1.00  ------ Preprocessing
% 2.38/1.00  
% 2.38/1.00  num_of_splits:                          0
% 2.38/1.00  num_of_split_atoms:                     0
% 2.38/1.00  num_of_reused_defs:                     0
% 2.38/1.00  num_eq_ax_congr_red:                    9
% 2.38/1.00  num_of_sem_filtered_clauses:            1
% 2.38/1.00  num_of_subtypes:                        3
% 2.38/1.00  monotx_restored_types:                  1
% 2.38/1.00  sat_num_of_epr_types:                   0
% 2.38/1.00  sat_num_of_non_cyclic_types:            0
% 2.38/1.00  sat_guarded_non_collapsed_types:        1
% 2.38/1.00  num_pure_diseq_elim:                    0
% 2.38/1.00  simp_replaced_by:                       0
% 2.38/1.00  res_preprocessed:                       124
% 2.38/1.00  prep_upred:                             0
% 2.38/1.00  prep_unflattend:                        151
% 2.38/1.00  smt_new_axioms:                         0
% 2.38/1.00  pred_elim_cands:                        4
% 2.38/1.00  pred_elim:                              1
% 2.38/1.00  pred_elim_cl:                           1
% 2.38/1.00  pred_elim_cycles:                       3
% 2.38/1.00  merged_defs:                            0
% 2.38/1.00  merged_defs_ncl:                        0
% 2.38/1.00  bin_hyper_res:                          0
% 2.38/1.00  prep_cycles:                            4
% 2.38/1.00  pred_elim_time:                         0.014
% 2.38/1.00  splitting_time:                         0.
% 2.38/1.00  sem_filter_time:                        0.
% 2.38/1.00  monotx_time:                            0.001
% 2.38/1.00  subtype_inf_time:                       0.001
% 2.38/1.00  
% 2.38/1.00  ------ Problem properties
% 2.38/1.00  
% 2.38/1.00  clauses:                                22
% 2.38/1.00  conjectures:                            4
% 2.38/1.00  epr:                                    2
% 2.38/1.00  horn:                                   18
% 2.38/1.00  ground:                                 5
% 2.38/1.00  unary:                                  5
% 2.38/1.00  binary:                                 6
% 2.38/1.00  lits:                                   73
% 2.38/1.00  lits_eq:                                15
% 2.38/1.00  fd_pure:                                0
% 2.38/1.00  fd_pseudo:                              0
% 2.38/1.00  fd_cond:                                3
% 2.38/1.00  fd_pseudo_cond:                         1
% 2.38/1.00  ac_symbols:                             0
% 2.38/1.00  
% 2.38/1.00  ------ Propositional Solver
% 2.38/1.00  
% 2.38/1.00  prop_solver_calls:                      26
% 2.38/1.00  prop_fast_solver_calls:                 1077
% 2.38/1.00  smt_solver_calls:                       0
% 2.38/1.00  smt_fast_solver_calls:                  0
% 2.38/1.00  prop_num_of_clauses:                    701
% 2.38/1.00  prop_preprocess_simplified:             3871
% 2.38/1.00  prop_fo_subsumed:                       28
% 2.38/1.00  prop_solver_time:                       0.
% 2.38/1.00  smt_solver_time:                        0.
% 2.38/1.00  smt_fast_solver_time:                   0.
% 2.38/1.00  prop_fast_solver_time:                  0.
% 2.38/1.00  prop_unsat_core_time:                   0.
% 2.38/1.00  
% 2.38/1.00  ------ QBF
% 2.38/1.00  
% 2.38/1.00  qbf_q_res:                              0
% 2.38/1.00  qbf_num_tautologies:                    0
% 2.38/1.00  qbf_prep_cycles:                        0
% 2.38/1.00  
% 2.38/1.00  ------ BMC1
% 2.38/1.00  
% 2.38/1.00  bmc1_current_bound:                     -1
% 2.38/1.00  bmc1_last_solved_bound:                 -1
% 2.38/1.00  bmc1_unsat_core_size:                   -1
% 2.38/1.00  bmc1_unsat_core_parents_size:           -1
% 2.38/1.00  bmc1_merge_next_fun:                    0
% 2.38/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.38/1.00  
% 2.38/1.00  ------ Instantiation
% 2.38/1.00  
% 2.38/1.00  inst_num_of_clauses:                    207
% 2.38/1.00  inst_num_in_passive:                    27
% 2.38/1.00  inst_num_in_active:                     137
% 2.38/1.00  inst_num_in_unprocessed:                42
% 2.38/1.00  inst_num_of_loops:                      142
% 2.38/1.00  inst_num_of_learning_restarts:          0
% 2.38/1.00  inst_num_moves_active_passive:          1
% 2.38/1.00  inst_lit_activity:                      0
% 2.38/1.00  inst_lit_activity_moves:                0
% 2.38/1.00  inst_num_tautologies:                   0
% 2.38/1.00  inst_num_prop_implied:                  0
% 2.38/1.00  inst_num_existing_simplified:           0
% 2.38/1.00  inst_num_eq_res_simplified:             0
% 2.38/1.00  inst_num_child_elim:                    0
% 2.38/1.00  inst_num_of_dismatching_blockings:      54
% 2.38/1.00  inst_num_of_non_proper_insts:           188
% 2.38/1.00  inst_num_of_duplicates:                 0
% 2.38/1.00  inst_inst_num_from_inst_to_res:         0
% 2.38/1.00  inst_dismatching_checking_time:         0.
% 2.38/1.00  
% 2.38/1.00  ------ Resolution
% 2.38/1.00  
% 2.38/1.00  res_num_of_clauses:                     0
% 2.38/1.00  res_num_in_passive:                     0
% 2.38/1.00  res_num_in_active:                      0
% 2.38/1.00  res_num_of_loops:                       128
% 2.38/1.00  res_forward_subset_subsumed:            42
% 2.38/1.00  res_backward_subset_subsumed:           0
% 2.38/1.00  res_forward_subsumed:                   0
% 2.38/1.00  res_backward_subsumed:                  0
% 2.38/1.00  res_forward_subsumption_resolution:     0
% 2.38/1.00  res_backward_subsumption_resolution:    0
% 2.38/1.00  res_clause_to_clause_subsumption:       60
% 2.38/1.00  res_orphan_elimination:                 0
% 2.38/1.00  res_tautology_del:                      61
% 2.38/1.00  res_num_eq_res_simplified:              0
% 2.38/1.00  res_num_sel_changes:                    0
% 2.38/1.00  res_moves_from_active_to_pass:          0
% 2.38/1.00  
% 2.38/1.00  ------ Superposition
% 2.38/1.00  
% 2.38/1.00  sup_time_total:                         0.
% 2.38/1.00  sup_time_generating:                    0.
% 2.38/1.00  sup_time_sim_full:                      0.
% 2.38/1.00  sup_time_sim_immed:                     0.
% 2.38/1.00  
% 2.38/1.00  sup_num_of_clauses:                     38
% 2.38/1.00  sup_num_in_active:                      27
% 2.38/1.00  sup_num_in_passive:                     11
% 2.38/1.00  sup_num_of_loops:                       28
% 2.38/1.00  sup_fw_superposition:                   14
% 2.38/1.00  sup_bw_superposition:                   11
% 2.38/1.00  sup_immediate_simplified:               7
% 2.38/1.00  sup_given_eliminated:                   0
% 2.38/1.00  comparisons_done:                       0
% 2.38/1.00  comparisons_avoided:                    0
% 2.38/1.00  
% 2.38/1.00  ------ Simplifications
% 2.38/1.00  
% 2.38/1.00  
% 2.38/1.00  sim_fw_subset_subsumed:                 2
% 2.38/1.00  sim_bw_subset_subsumed:                 0
% 2.38/1.00  sim_fw_subsumed:                        0
% 2.38/1.00  sim_bw_subsumed:                        0
% 2.38/1.00  sim_fw_subsumption_res:                 0
% 2.38/1.00  sim_bw_subsumption_res:                 0
% 2.38/1.00  sim_tautology_del:                      5
% 2.38/1.00  sim_eq_tautology_del:                   4
% 2.38/1.00  sim_eq_res_simp:                        1
% 2.38/1.00  sim_fw_demodulated:                     0
% 2.38/1.00  sim_bw_demodulated:                     1
% 2.38/1.00  sim_light_normalised:                   5
% 2.38/1.00  sim_joinable_taut:                      0
% 2.38/1.00  sim_joinable_simp:                      0
% 2.38/1.00  sim_ac_normalised:                      0
% 2.38/1.00  sim_smt_subsumption:                    0
% 2.38/1.00  
%------------------------------------------------------------------------------
