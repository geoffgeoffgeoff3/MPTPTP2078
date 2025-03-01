%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:59:43 EST 2020

% Result     : Theorem 7.87s
% Output     : CNFRefutation 7.87s
% Verified   : 
% Statistics : Number of formulae       :  206 (11350 expanded)
%              Number of clauses        :  125 (3696 expanded)
%              Number of leaves         :   24 (2490 expanded)
%              Depth                    :   48
%              Number of atoms          :  835 (48400 expanded)
%              Number of equality atoms :  389 (15575 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   17 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f34])).

fof(f36,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f36])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f3,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ~ ( ~ r2_hidden(X1,X0)
              & X0 != X1
              & ~ r2_hidden(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_hidden(X1,X0)
          | X0 = X1
          | r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f66,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | X0 = X1
      | r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f13,conjecture,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
           => X0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0] :
        ( v3_ordinal1(X0)
       => ! [X1] :
            ( v3_ordinal1(X1)
           => ( r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
             => X0 = X1 ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
          & v3_ordinal1(X1) )
      & v3_ordinal1(X0) ) ),
    inference(flattening,[],[f32])).

fof(f58,plain,(
    ! [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
          & v3_ordinal1(X1) )
     => ( sK8 != X0
        & r4_wellord1(k1_wellord2(X0),k1_wellord2(sK8))
        & v3_ordinal1(sK8) ) ) ),
    introduced(choice_axiom,[])).

fof(f57,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( X0 != X1
            & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))
            & v3_ordinal1(X1) )
        & v3_ordinal1(X0) )
   => ( ? [X1] :
          ( sK7 != X1
          & r4_wellord1(k1_wellord2(sK7),k1_wellord2(X1))
          & v3_ordinal1(X1) )
      & v3_ordinal1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f59,plain,
    ( sK7 != sK8
    & r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
    & v3_ordinal1(sK8)
    & v3_ordinal1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8])],[f33,f58,f57])).

fof(f94,plain,(
    v3_ordinal1(sK7) ),
    inference(cnf_transformation,[],[f59])).

fof(f95,plain,(
    v3_ordinal1(sK8) ),
    inference(cnf_transformation,[],[f59])).

fof(f10,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => ! [X1] :
          ( v3_ordinal1(X1)
         => ( r2_hidden(X0,X1)
           => k1_wellord1(k1_wellord2(X1),X0) = X0 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_wellord1(k1_wellord2(X1),X0) = X0
          | ~ r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_wellord1(k1_wellord2(X1),X0) = X0
          | ~ r2_hidden(X0,X1)
          | ~ v3_ordinal1(X1) )
      | ~ v3_ordinal1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f91,plain,(
    ! [X0,X1] :
      ( k1_wellord1(k1_wellord2(X1),X0) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v3_ordinal1(X1)
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f97,plain,(
    sK7 != sK8 ),
    inference(cnf_transformation,[],[f59])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f38])).

fof(f63,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f99,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f63])).

fof(f65,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1,X2] :
          ( k1_wellord1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ( r2_hidden(k4_tarski(X3,X1),X0)
                & X1 != X3 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k1_wellord1(X0,X1) = X2
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ( r2_hidden(k4_tarski(X3,X1),X0)
                & X1 != X3 ) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k1_wellord1(X0,X1) = X2
            | ? [X3] :
                ( ( ~ r2_hidden(k4_tarski(X3,X1),X0)
                  | X1 = X3
                  | ~ r2_hidden(X3,X2) )
                & ( ( r2_hidden(k4_tarski(X3,X1),X0)
                    & X1 != X3 )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X3] :
                ( ( r2_hidden(X3,X2)
                  | ~ r2_hidden(k4_tarski(X3,X1),X0)
                  | X1 = X3 )
                & ( ( r2_hidden(k4_tarski(X3,X1),X0)
                    & X1 != X3 )
                  | ~ r2_hidden(X3,X2) ) )
            | k1_wellord1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k1_wellord1(X0,X1) = X2
            | ? [X3] :
                ( ( ~ r2_hidden(k4_tarski(X3,X1),X0)
                  | X1 = X3
                  | ~ r2_hidden(X3,X2) )
                & ( ( r2_hidden(k4_tarski(X3,X1),X0)
                    & X1 != X3 )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X3] :
                ( ( r2_hidden(X3,X2)
                  | ~ r2_hidden(k4_tarski(X3,X1),X0)
                  | X1 = X3 )
                & ( ( r2_hidden(k4_tarski(X3,X1),X0)
                    & X1 != X3 )
                  | ~ r2_hidden(X3,X2) ) )
            | k1_wellord1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f40])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k1_wellord1(X0,X1) = X2
            | ? [X3] :
                ( ( ~ r2_hidden(k4_tarski(X3,X1),X0)
                  | X1 = X3
                  | ~ r2_hidden(X3,X2) )
                & ( ( r2_hidden(k4_tarski(X3,X1),X0)
                    & X1 != X3 )
                  | r2_hidden(X3,X2) ) ) )
          & ( ! [X4] :
                ( ( r2_hidden(X4,X2)
                  | ~ r2_hidden(k4_tarski(X4,X1),X0)
                  | X1 = X4 )
                & ( ( r2_hidden(k4_tarski(X4,X1),X0)
                    & X1 != X4 )
                  | ~ r2_hidden(X4,X2) ) )
            | k1_wellord1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f41])).

fof(f43,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(k4_tarski(X3,X1),X0)
            | X1 = X3
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(k4_tarski(X3,X1),X0)
              & X1 != X3 )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0)
          | sK1(X0,X1,X2) = X1
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( ( r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0)
            & sK1(X0,X1,X2) != X1 )
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( k1_wellord1(X0,X1) = X2
            | ( ( ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0)
                | sK1(X0,X1,X2) = X1
                | ~ r2_hidden(sK1(X0,X1,X2),X2) )
              & ( ( r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0)
                  & sK1(X0,X1,X2) != X1 )
                | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
          & ( ! [X4] :
                ( ( r2_hidden(X4,X2)
                  | ~ r2_hidden(k4_tarski(X4,X1),X0)
                  | X1 = X4 )
                & ( ( r2_hidden(k4_tarski(X4,X1),X0)
                    & X1 != X4 )
                  | ~ r2_hidden(X4,X2) ) )
            | k1_wellord1(X0,X1) != X2 ) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f42,f43])).

fof(f68,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(k4_tarski(X4,X1),X0)
      | ~ r2_hidden(X4,X2)
      | k1_wellord1(X0,X1) != X2
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f101,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(k4_tarski(X4,X1),X0)
      | ~ r2_hidden(X4,k1_wellord1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f68])).

fof(f9,axiom,(
    ! [X0] : v1_relat_1(k1_wellord2(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f90,plain,(
    ! [X0] : v1_relat_1(k1_wellord2(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( ( r1_tarski(X0,k3_relat_1(X1))
          & v2_wellord1(X1) )
       => ( ~ ( ! [X2] :
                  ~ ( k1_wellord1(X1,X2) = X0
                    & r2_hidden(X2,k3_relat_1(X1)) )
              & k3_relat_1(X1) != X0 )
        <=> ! [X2] :
              ( r2_hidden(X2,X0)
             => ! [X3] :
                  ( r2_hidden(k4_tarski(X3,X2),X1)
                 => r2_hidden(X3,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( ( r1_tarski(X0,k3_relat_1(X1))
          & v2_wellord1(X1) )
       => ( ~ ( ! [X2] :
                  ~ ( k1_wellord1(X1,X2) = X0
                    & r2_hidden(X2,k3_relat_1(X1)) )
              & k3_relat_1(X1) != X0 )
        <=> ! [X3] :
              ( r2_hidden(X3,X0)
             => ! [X4] :
                  ( r2_hidden(k4_tarski(X4,X3),X1)
                 => r2_hidden(X4,X0) ) ) ) ) ) ),
    inference(rectify,[],[f5])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ( ? [X2] :
              ( k1_wellord1(X1,X2) = X0
              & r2_hidden(X2,k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0 )
      <=> ! [X3] :
            ( ! [X4] :
                ( r2_hidden(X4,X0)
                | ~ r2_hidden(k4_tarski(X4,X3),X1) )
            | ~ r2_hidden(X3,X0) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( ( ? [X2] :
              ( k1_wellord1(X1,X2) = X0
              & r2_hidden(X2,k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0 )
      <=> ! [X3] :
            ( ! [X4] :
                ( r2_hidden(X4,X0)
                | ~ r2_hidden(k4_tarski(X4,X3),X1) )
            | ~ r2_hidden(X3,X0) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f20])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( ( ? [X2] :
              ( k1_wellord1(X1,X2) = X0
              & r2_hidden(X2,k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0
          | ? [X3] :
              ( ? [X4] :
                  ( ~ r2_hidden(X4,X0)
                  & r2_hidden(k4_tarski(X4,X3),X1) )
              & r2_hidden(X3,X0) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( r2_hidden(X4,X0)
                  | ~ r2_hidden(k4_tarski(X4,X3),X1) )
              | ~ r2_hidden(X3,X0) )
          | ( ! [X2] :
                ( k1_wellord1(X1,X2) != X0
                | ~ r2_hidden(X2,k3_relat_1(X1)) )
            & k3_relat_1(X1) != X0 ) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( ( ? [X2] :
              ( k1_wellord1(X1,X2) = X0
              & r2_hidden(X2,k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0
          | ? [X3] :
              ( ? [X4] :
                  ( ~ r2_hidden(X4,X0)
                  & r2_hidden(k4_tarski(X4,X3),X1) )
              & r2_hidden(X3,X0) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( r2_hidden(X4,X0)
                  | ~ r2_hidden(k4_tarski(X4,X3),X1) )
              | ~ r2_hidden(X3,X0) )
          | ( ! [X2] :
                ( k1_wellord1(X1,X2) != X0
                | ~ r2_hidden(X2,k3_relat_1(X1)) )
            & k3_relat_1(X1) != X0 ) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f45])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( ( ? [X2] :
              ( k1_wellord1(X1,X2) = X0
              & r2_hidden(X2,k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0
          | ? [X3] :
              ( ? [X4] :
                  ( ~ r2_hidden(X4,X0)
                  & r2_hidden(k4_tarski(X4,X3),X1) )
              & r2_hidden(X3,X0) ) )
        & ( ! [X5] :
              ( ! [X6] :
                  ( r2_hidden(X6,X0)
                  | ~ r2_hidden(k4_tarski(X6,X5),X1) )
              | ~ r2_hidden(X5,X0) )
          | ( ! [X7] :
                ( k1_wellord1(X1,X7) != X0
                | ~ r2_hidden(X7,k3_relat_1(X1)) )
            & k3_relat_1(X1) != X0 ) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(rectify,[],[f46])).

fof(f50,plain,(
    ! [X3,X1,X0] :
      ( ? [X4] :
          ( ~ r2_hidden(X4,X0)
          & r2_hidden(k4_tarski(X4,X3),X1) )
     => ( ~ r2_hidden(sK4(X0,X1),X0)
        & r2_hidden(k4_tarski(sK4(X0,X1),X3),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( ? [X4] :
              ( ~ r2_hidden(X4,X0)
              & r2_hidden(k4_tarski(X4,X3),X1) )
          & r2_hidden(X3,X0) )
     => ( ? [X4] :
            ( ~ r2_hidden(X4,X0)
            & r2_hidden(k4_tarski(X4,sK3(X0,X1)),X1) )
        & r2_hidden(sK3(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( k1_wellord1(X1,X2) = X0
          & r2_hidden(X2,k3_relat_1(X1)) )
     => ( k1_wellord1(X1,sK2(X0,X1)) = X0
        & r2_hidden(sK2(X0,X1),k3_relat_1(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( ( ( k1_wellord1(X1,sK2(X0,X1)) = X0
            & r2_hidden(sK2(X0,X1),k3_relat_1(X1)) )
          | k3_relat_1(X1) = X0
          | ( ~ r2_hidden(sK4(X0,X1),X0)
            & r2_hidden(k4_tarski(sK4(X0,X1),sK3(X0,X1)),X1)
            & r2_hidden(sK3(X0,X1),X0) ) )
        & ( ! [X5] :
              ( ! [X6] :
                  ( r2_hidden(X6,X0)
                  | ~ r2_hidden(k4_tarski(X6,X5),X1) )
              | ~ r2_hidden(X5,X0) )
          | ( ! [X7] :
                ( k1_wellord1(X1,X7) != X0
                | ~ r2_hidden(X7,k3_relat_1(X1)) )
            & k3_relat_1(X1) != X0 ) ) )
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f47,f50,f49,f48])).

fof(f73,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X6,X0)
      | ~ r2_hidden(k4_tarski(X6,X5),X1)
      | ~ r2_hidden(X5,X0)
      | k3_relat_1(X1) != X0
      | ~ r1_tarski(X0,k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f105,plain,(
    ! [X6,X5,X1] :
      ( r2_hidden(X6,k3_relat_1(X1))
      | ~ r2_hidden(k4_tarski(X6,X5),X1)
      | ~ r2_hidden(X5,k3_relat_1(X1))
      | ~ r1_tarski(k3_relat_1(X1),k3_relat_1(X1))
      | ~ v2_wellord1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(equality_resolution,[],[f73])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_wellord2(X0) = X1
      <=> ( ! [X2,X3] :
              ( ( r2_hidden(X3,X0)
                & r2_hidden(X2,X0) )
             => ( r2_hidden(k4_tarski(X2,X3),X1)
              <=> r1_tarski(X2,X3) ) )
          & k3_relat_1(X1) = X0 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k1_wellord2(X0) = X1
      <=> ( ! [X2,X3] :
              ( ( r2_hidden(k4_tarski(X2,X3),X1)
              <=> r1_tarski(X2,X3) )
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X2,X0) )
          & k3_relat_1(X1) = X0 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k1_wellord2(X0) = X1
      <=> ( ! [X2,X3] :
              ( ( r2_hidden(k4_tarski(X2,X3),X1)
              <=> r1_tarski(X2,X3) )
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X2,X0) )
          & k3_relat_1(X1) = X0 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f26])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ( ( k1_wellord2(X0) = X1
          | ? [X2,X3] :
              ( ( ~ r1_tarski(X2,X3)
                | ~ r2_hidden(k4_tarski(X2,X3),X1) )
              & ( r1_tarski(X2,X3)
                | r2_hidden(k4_tarski(X2,X3),X1) )
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | k3_relat_1(X1) != X0 )
        & ( ( ! [X2,X3] :
                ( ( ( r2_hidden(k4_tarski(X2,X3),X1)
                    | ~ r1_tarski(X2,X3) )
                  & ( r1_tarski(X2,X3)
                    | ~ r2_hidden(k4_tarski(X2,X3),X1) ) )
                | ~ r2_hidden(X3,X0)
                | ~ r2_hidden(X2,X0) )
            & k3_relat_1(X1) = X0 )
          | k1_wellord2(X0) != X1 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f53,plain,(
    ! [X0,X1] :
      ( ( ( k1_wellord2(X0) = X1
          | ? [X2,X3] :
              ( ( ~ r1_tarski(X2,X3)
                | ~ r2_hidden(k4_tarski(X2,X3),X1) )
              & ( r1_tarski(X2,X3)
                | r2_hidden(k4_tarski(X2,X3),X1) )
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | k3_relat_1(X1) != X0 )
        & ( ( ! [X2,X3] :
                ( ( ( r2_hidden(k4_tarski(X2,X3),X1)
                    | ~ r1_tarski(X2,X3) )
                  & ( r1_tarski(X2,X3)
                    | ~ r2_hidden(k4_tarski(X2,X3),X1) ) )
                | ~ r2_hidden(X3,X0)
                | ~ r2_hidden(X2,X0) )
            & k3_relat_1(X1) = X0 )
          | k1_wellord2(X0) != X1 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f52])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ( ( k1_wellord2(X0) = X1
          | ? [X2,X3] :
              ( ( ~ r1_tarski(X2,X3)
                | ~ r2_hidden(k4_tarski(X2,X3),X1) )
              & ( r1_tarski(X2,X3)
                | r2_hidden(k4_tarski(X2,X3),X1) )
              & r2_hidden(X3,X0)
              & r2_hidden(X2,X0) )
          | k3_relat_1(X1) != X0 )
        & ( ( ! [X4,X5] :
                ( ( ( r2_hidden(k4_tarski(X4,X5),X1)
                    | ~ r1_tarski(X4,X5) )
                  & ( r1_tarski(X4,X5)
                    | ~ r2_hidden(k4_tarski(X4,X5),X1) ) )
                | ~ r2_hidden(X5,X0)
                | ~ r2_hidden(X4,X0) )
            & k3_relat_1(X1) = X0 )
          | k1_wellord2(X0) != X1 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(rectify,[],[f53])).

fof(f55,plain,(
    ! [X1,X0] :
      ( ? [X2,X3] :
          ( ( ~ r1_tarski(X2,X3)
            | ~ r2_hidden(k4_tarski(X2,X3),X1) )
          & ( r1_tarski(X2,X3)
            | r2_hidden(k4_tarski(X2,X3),X1) )
          & r2_hidden(X3,X0)
          & r2_hidden(X2,X0) )
     => ( ( ~ r1_tarski(sK5(X0,X1),sK6(X0,X1))
          | ~ r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1) )
        & ( r1_tarski(sK5(X0,X1),sK6(X0,X1))
          | r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1) )
        & r2_hidden(sK6(X0,X1),X0)
        & r2_hidden(sK5(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,(
    ! [X0,X1] :
      ( ( ( k1_wellord2(X0) = X1
          | ( ( ~ r1_tarski(sK5(X0,X1),sK6(X0,X1))
              | ~ r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1) )
            & ( r1_tarski(sK5(X0,X1),sK6(X0,X1))
              | r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1) )
            & r2_hidden(sK6(X0,X1),X0)
            & r2_hidden(sK5(X0,X1),X0) )
          | k3_relat_1(X1) != X0 )
        & ( ( ! [X4,X5] :
                ( ( ( r2_hidden(k4_tarski(X4,X5),X1)
                    | ~ r1_tarski(X4,X5) )
                  & ( r1_tarski(X4,X5)
                    | ~ r2_hidden(k4_tarski(X4,X5),X1) ) )
                | ~ r2_hidden(X5,X0)
                | ~ r2_hidden(X4,X0) )
            & k3_relat_1(X1) = X0 )
          | k1_wellord2(X0) != X1 ) )
      | ~ v1_relat_1(X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f54,f55])).

fof(f83,plain,(
    ! [X0,X1] :
      ( k3_relat_1(X1) = X0
      | k1_wellord2(X0) != X1
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f56])).

fof(f112,plain,(
    ! [X0] :
      ( k3_relat_1(k1_wellord2(X0)) = X0
      | ~ v1_relat_1(k1_wellord2(X0)) ) ),
    inference(equality_resolution,[],[f83])).

fof(f11,axiom,(
    ! [X0] :
      ( v3_ordinal1(X0)
     => v2_wellord1(k1_wellord2(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( v2_wellord1(k1_wellord2(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f92,plain,(
    ! [X0] :
      ( v2_wellord1(k1_wellord2(X0))
      | ~ v3_ordinal1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f96,plain,(
    r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) ),
    inference(cnf_transformation,[],[f59])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r4_wellord1(X0,X1)
           => r4_wellord1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r4_wellord1(X1,X0)
          | ~ r4_wellord1(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r4_wellord1(X1,X0)
          | ~ r4_wellord1(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f22])).

fof(f81,plain,(
    ! [X0,X1] :
      ( r4_wellord1(X1,X0)
      | ~ r4_wellord1(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f93,plain,(
    ! [X0,X1] :
      ( k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( v2_wellord1(X0)
       => ! [X1] :
            ~ ( r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
              & r2_hidden(X1,k3_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
          | ~ r2_hidden(X1,k3_relat_1(X0)) )
      | ~ v2_wellord1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
          | ~ r2_hidden(X1,k3_relat_1(X0)) )
      | ~ v2_wellord1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f82,plain,(
    ! [X0,X1] :
      ( ~ r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
      | ~ r2_hidden(X1,k3_relat_1(X0))
      | ~ v2_wellord1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1097,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X1,X0)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1093,plain,
    ( X0 = X1
    | r2_hidden(X1,X0) = iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_37,negated_conjecture,
    ( v3_ordinal1(sK7) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1064,plain,
    ( v3_ordinal1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_36,negated_conjecture,
    ( v3_ordinal1(sK8) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1065,plain,
    ( v3_ordinal1(sK8) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_31,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X0)
    | k1_wellord1(k1_wellord2(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1069,plain,
    ( k1_wellord1(k1_wellord2(X0),X1) = X1
    | r2_hidden(X1,X0) != iProver_top
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_2768,plain,
    ( X0 = X1
    | k1_wellord1(k1_wellord2(X0),X1) = X1
    | r2_hidden(X0,X1) = iProver_top
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1093,c_1069])).

cnf(c_6088,plain,
    ( X0 = X1
    | k1_wellord1(k1_wellord2(X0),X1) = X1
    | k1_wellord1(k1_wellord2(X1),X0) = X0
    | v3_ordinal1(X1) != iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2768,c_1069])).

cnf(c_6529,plain,
    ( k1_wellord1(k1_wellord2(X0),sK8) = sK8
    | k1_wellord1(k1_wellord2(sK8),X0) = X0
    | sK8 = X0
    | v3_ordinal1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1065,c_6088])).

cnf(c_6734,plain,
    ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | sK8 = sK7 ),
    inference(superposition,[status(thm)],[c_1064,c_6529])).

cnf(c_34,negated_conjecture,
    ( sK7 != sK8 ),
    inference(cnf_transformation,[],[f97])).

cnf(c_5,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_120,plain,
    ( r1_tarski(sK7,sK7) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_124,plain,
    ( ~ r1_tarski(sK7,sK7)
    | sK7 = sK7 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_498,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1497,plain,
    ( sK8 != X0
    | sK7 != X0
    | sK7 = sK8 ),
    inference(instantiation,[status(thm)],[c_498])).

cnf(c_1498,plain,
    ( sK8 != sK7
    | sK7 = sK8
    | sK7 != sK7 ),
    inference(instantiation,[status(thm)],[c_1497])).

cnf(c_6741,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6734,c_34,c_120,c_124,c_1498])).

cnf(c_6742,plain,
    ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(renaming,[status(thm)],[c_6741])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,k1_wellord1(X1,X2))
    | r2_hidden(k4_tarski(X0,X2),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_1088,plain,
    ( r2_hidden(X0,k1_wellord1(X1,X2)) != iProver_top
    | r2_hidden(k4_tarski(X0,X2),X1) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_6748,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6742,c_1088])).

cnf(c_30,plain,
    ( v1_relat_1(k1_wellord2(X0)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_3155,plain,
    ( v1_relat_1(k1_wellord2(sK8)) ),
    inference(instantiation,[status(thm)],[c_30])).

cnf(c_3156,plain,
    ( v1_relat_1(k1_wellord2(sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3155])).

cnf(c_7317,plain,
    ( r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6748,c_3156])).

cnf(c_7318,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top ),
    inference(renaming,[status(thm)],[c_7317])).

cnf(c_20,plain,
    ( ~ r2_hidden(X0,k3_relat_1(X1))
    | r2_hidden(X2,k3_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X1)
    | ~ r1_tarski(k3_relat_1(X1),k3_relat_1(X1))
    | ~ v2_wellord1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f105])).

cnf(c_1079,plain,
    ( r2_hidden(X0,k3_relat_1(X1)) != iProver_top
    | r2_hidden(X2,k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(X2,X0),X1) != iProver_top
    | r1_tarski(k3_relat_1(X1),k3_relat_1(X1)) != iProver_top
    | v2_wellord1(X1) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1094,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1321,plain,
    ( r2_hidden(X0,k3_relat_1(X1)) != iProver_top
    | r2_hidden(X2,k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(X2,X0),X1) != iProver_top
    | v2_wellord1(X1) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1079,c_1094])).

cnf(c_9445,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(X0,k3_relat_1(k1_wellord2(sK8))) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7318,c_1321])).

cnf(c_29,plain,
    ( ~ v1_relat_1(k1_wellord2(X0))
    | k3_relat_1(k1_wellord2(X0)) = X0 ),
    inference(cnf_transformation,[],[f112])).

cnf(c_264,plain,
    ( k3_relat_1(k1_wellord2(X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_29,c_30])).

cnf(c_9467,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(X0,sK8) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(sK7,sK8) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_9445,c_264])).

cnf(c_38,plain,
    ( v3_ordinal1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_39,plain,
    ( v3_ordinal1(sK8) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_1701,plain,
    ( ~ r2_hidden(sK8,sK7)
    | ~ v3_ordinal1(sK8)
    | ~ v3_ordinal1(sK7)
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(instantiation,[status(thm)],[c_31])).

cnf(c_1702,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(sK8,sK7) != iProver_top
    | v3_ordinal1(sK8) != iProver_top
    | v3_ordinal1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1701])).

cnf(c_4672,plain,
    ( r2_hidden(sK8,sK7)
    | r2_hidden(sK7,sK8)
    | ~ v3_ordinal1(sK8)
    | ~ v3_ordinal1(sK7) ),
    inference(resolution,[status(thm)],[c_6,c_34])).

cnf(c_4971,plain,
    ( r2_hidden(sK8,sK7)
    | r2_hidden(sK7,sK8) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4672,c_37,c_36])).

cnf(c_4973,plain,
    ( r2_hidden(sK8,sK7) = iProver_top
    | r2_hidden(sK7,sK8) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4971])).

cnf(c_32,plain,
    ( v2_wellord1(k1_wellord2(X0))
    | ~ v3_ordinal1(X0) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_13855,plain,
    ( v2_wellord1(k1_wellord2(sK8))
    | ~ v3_ordinal1(sK8) ),
    inference(instantiation,[status(thm)],[c_32])).

cnf(c_13856,plain,
    ( v2_wellord1(k1_wellord2(sK8)) = iProver_top
    | v3_ordinal1(sK8) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13855])).

cnf(c_17787,plain,
    ( r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(X0,sK8) = iProver_top
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_9467,c_38,c_39,c_1702,c_3156,c_4973,c_13856])).

cnf(c_17788,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(X0,sK8) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(renaming,[status(thm)],[c_17787])).

cnf(c_17796,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r2_hidden(sK0(sK7,X0),sK8) = iProver_top
    | r1_tarski(sK7,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1097,c_17788])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1098,plain,
    ( r2_hidden(sK0(X0,X1),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_18352,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r1_tarski(sK7,sK8) = iProver_top ),
    inference(superposition,[status(thm)],[c_17796,c_1098])).

cnf(c_1095,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_18581,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | sK8 = sK7
    | r1_tarski(sK8,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_18352,c_1095])).

cnf(c_50,plain,
    ( v1_relat_1(k1_wellord2(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_52,plain,
    ( v1_relat_1(k1_wellord2(sK7)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_50])).

cnf(c_35,negated_conjecture,
    ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_1066,plain,
    ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_21,plain,
    ( ~ r4_wellord1(X0,X1)
    | r4_wellord1(X1,X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1078,plain,
    ( r4_wellord1(X0,X1) != iProver_top
    | r4_wellord1(X1,X0) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2444,plain,
    ( r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) = iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1066,c_1078])).

cnf(c_33,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1067,plain,
    ( k2_wellord1(k1_wellord2(X0),X1) = k1_wellord2(X1)
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_18584,plain,
    ( k2_wellord1(k1_wellord2(sK8),sK7) = k1_wellord2(sK7)
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(superposition,[status(thm)],[c_18352,c_1067])).

cnf(c_22,plain,
    ( ~ r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
    | ~ r2_hidden(X1,k3_relat_1(X0))
    | ~ v2_wellord1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1077,plain,
    ( r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) != iProver_top
    | r2_hidden(X1,k3_relat_1(X0)) != iProver_top
    | v2_wellord1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_6746,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
    | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6742,c_1077])).

cnf(c_6786,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
    | r2_hidden(sK7,sK8) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6746,c_264])).

cnf(c_14119,plain,
    ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
    | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6786,c_38,c_39,c_1702,c_3156,c_4973,c_13856])).

cnf(c_14120,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top ),
    inference(renaming,[status(thm)],[c_14119])).

cnf(c_18851,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
    | r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_18584,c_14120])).

cnf(c_18854,plain,
    ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
    inference(global_propositional_subsumption,[status(thm)],[c_18581,c_52,c_2444,c_3156,c_18851])).

cnf(c_18874,plain,
    ( r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_18854,c_1088])).

cnf(c_19532,plain,
    ( r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top
    | r2_hidden(X0,sK8) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_18874,c_52])).

cnf(c_19533,plain,
    ( r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top ),
    inference(renaming,[status(thm)],[c_19532])).

cnf(c_19543,plain,
    ( r2_hidden(X0,k3_relat_1(k1_wellord2(sK7))) = iProver_top
    | r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(sK8,k3_relat_1(k1_wellord2(sK7))) != iProver_top
    | v2_wellord1(k1_wellord2(sK7)) != iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_19533,c_1321])).

cnf(c_19564,plain,
    ( r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(X0,sK7) = iProver_top
    | r2_hidden(sK8,sK7) != iProver_top
    | v2_wellord1(k1_wellord2(sK7)) != iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_19543,c_264])).

cnf(c_44,plain,
    ( v2_wellord1(k1_wellord2(X0)) = iProver_top
    | v3_ordinal1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_46,plain,
    ( v2_wellord1(k1_wellord2(sK7)) = iProver_top
    | v3_ordinal1(sK7) != iProver_top ),
    inference(instantiation,[status(thm)],[c_44])).

cnf(c_21133,plain,
    ( r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(X0,sK7) = iProver_top
    | r2_hidden(sK8,sK7) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_19564,c_38,c_46,c_52])).

cnf(c_21145,plain,
    ( sK8 = sK7
    | r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(X0,sK7) = iProver_top
    | r2_hidden(sK7,sK8) = iProver_top
    | v3_ordinal1(sK8) != iProver_top
    | v3_ordinal1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1093,c_21133])).

cnf(c_21175,plain,
    ( r2_hidden(X0,sK8) != iProver_top
    | r2_hidden(X0,sK7) = iProver_top
    | r2_hidden(sK7,sK8) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_21145,c_38,c_39,c_34,c_120,c_124,c_1498])).

cnf(c_21182,plain,
    ( r2_hidden(sK0(sK8,X0),sK7) = iProver_top
    | r2_hidden(sK7,sK8) = iProver_top
    | r1_tarski(sK8,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1097,c_21175])).

cnf(c_40,plain,
    ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_509,plain,
    ( X0 != X1
    | k1_wellord2(X0) = k1_wellord2(X1) ),
    theory(equality)).

cnf(c_522,plain,
    ( k1_wellord2(sK7) = k1_wellord2(sK7)
    | sK7 != sK7 ),
    inference(instantiation,[status(thm)],[c_509])).

cnf(c_1908,plain,
    ( ~ r2_hidden(sK0(sK8,sK7),sK7)
    | r1_tarski(sK8,sK7) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1912,plain,
    ( r2_hidden(sK0(sK8,sK7),sK7) != iProver_top
    | r1_tarski(sK8,sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1908])).

cnf(c_507,plain,
    ( ~ r4_wellord1(X0,X1)
    | r4_wellord1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1552,plain,
    ( r4_wellord1(X0,X1)
    | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
    | X1 != k1_wellord2(sK8)
    | X0 != k1_wellord2(sK7) ),
    inference(instantiation,[status(thm)],[c_507])).

cnf(c_1737,plain,
    ( r4_wellord1(k1_wellord2(sK7),X0)
    | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
    | X0 != k1_wellord2(sK8)
    | k1_wellord2(sK7) != k1_wellord2(sK7) ),
    inference(instantiation,[status(thm)],[c_1552])).

cnf(c_2070,plain,
    ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(X0),sK8))
    | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
    | k2_wellord1(k1_wellord2(X0),sK8) != k1_wellord2(sK8)
    | k1_wellord2(sK7) != k1_wellord2(sK7) ),
    inference(instantiation,[status(thm)],[c_1737])).

cnf(c_2072,plain,
    ( k2_wellord1(k1_wellord2(X0),sK8) != k1_wellord2(sK8)
    | k1_wellord2(sK7) != k1_wellord2(sK7)
    | r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(X0),sK8)) = iProver_top
    | r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2070])).

cnf(c_2074,plain,
    ( k2_wellord1(k1_wellord2(sK7),sK8) != k1_wellord2(sK8)
    | k1_wellord2(sK7) != k1_wellord2(sK7)
    | r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) = iProver_top
    | r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2072])).

cnf(c_2071,plain,
    ( ~ r1_tarski(sK8,X0)
    | k2_wellord1(k1_wellord2(X0),sK8) = k1_wellord2(sK8) ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(c_2076,plain,
    ( k2_wellord1(k1_wellord2(X0),sK8) = k1_wellord2(sK8)
    | r1_tarski(sK8,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2071])).

cnf(c_2078,plain,
    ( k2_wellord1(k1_wellord2(sK7),sK8) = k1_wellord2(sK8)
    | r1_tarski(sK8,sK7) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2076])).

cnf(c_18872,plain,
    ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
    | r2_hidden(sK8,k3_relat_1(k1_wellord2(sK7))) != iProver_top
    | v2_wellord1(k1_wellord2(sK7)) != iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_18854,c_1077])).

cnf(c_18953,plain,
    ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
    | r2_hidden(sK8,sK7) != iProver_top
    | v2_wellord1(k1_wellord2(sK7)) != iProver_top
    | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_18872,c_264])).

cnf(c_20082,plain,
    ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
    | r2_hidden(sK8,sK7) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_18953,c_38,c_46,c_52])).

cnf(c_21676,plain,
    ( r2_hidden(sK0(sK8,sK7),sK7) = iProver_top
    | r2_hidden(sK7,sK8) = iProver_top
    | r1_tarski(sK8,sK7) = iProver_top ),
    inference(instantiation,[status(thm)],[c_21182])).

cnf(c_22408,plain,
    ( r2_hidden(sK7,sK8) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_21182,c_40,c_120,c_124,c_522,c_1912,c_2074,c_2078,c_4973,c_20082,c_21676])).

cnf(c_22414,plain,
    ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
    | v3_ordinal1(sK8) != iProver_top
    | v3_ordinal1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_22408,c_1069])).

cnf(c_1930,plain,
    ( ~ r2_hidden(sK7,sK8)
    | ~ v3_ordinal1(sK8)
    | ~ v3_ordinal1(sK7)
    | k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
    inference(instantiation,[status(thm)],[c_31])).

cnf(c_1931,plain,
    ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
    | r2_hidden(sK7,sK8) != iProver_top
    | v3_ordinal1(sK8) != iProver_top
    | v3_ordinal1(sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1930])).

cnf(c_22968,plain,
    ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
    inference(global_propositional_subsumption,[status(thm)],[c_22414,c_38,c_39,c_40,c_120,c_124,c_522,c_1912,c_1931,c_2074,c_2078,c_4973,c_20082,c_21676])).

cnf(c_22987,plain,
    ( r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_22968,c_1088])).

cnf(c_23912,plain,
    ( r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_22987,c_3156])).

cnf(c_23913,plain,
    ( r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top ),
    inference(renaming,[status(thm)],[c_23912])).

cnf(c_23921,plain,
    ( r2_hidden(X0,k3_relat_1(k1_wellord2(sK8))) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_23913,c_1321])).

cnf(c_23942,plain,
    ( r2_hidden(X0,sK8) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(sK7,sK8) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_23921,c_264])).

cnf(c_25635,plain,
    ( r2_hidden(X0,sK7) != iProver_top
    | r2_hidden(X0,sK8) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_23942,c_39,c_40,c_120,c_124,c_522,c_1912,c_2074,c_2078,c_3156,c_4973,c_13856,c_20082,c_21676])).

cnf(c_25636,plain,
    ( r2_hidden(X0,sK8) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(renaming,[status(thm)],[c_25635])).

cnf(c_25641,plain,
    ( r2_hidden(sK0(sK7,X0),sK8) = iProver_top
    | r1_tarski(sK7,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1097,c_25636])).

cnf(c_26164,plain,
    ( r1_tarski(sK7,sK8) = iProver_top ),
    inference(superposition,[status(thm)],[c_25641,c_1098])).

cnf(c_26379,plain,
    ( k2_wellord1(k1_wellord2(sK8),sK7) = k1_wellord2(sK7) ),
    inference(superposition,[status(thm)],[c_26164,c_1067])).

cnf(c_22985,plain,
    ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
    | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(superposition,[status(thm)],[c_22968,c_1077])).

cnf(c_23066,plain,
    ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
    | r2_hidden(sK7,sK8) != iProver_top
    | v2_wellord1(k1_wellord2(sK8)) != iProver_top
    | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_22985,c_264])).

cnf(c_24434,plain,
    ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_23066,c_39,c_40,c_120,c_124,c_522,c_1912,c_2074,c_2078,c_3156,c_4973,c_13856,c_20082,c_21676])).

cnf(c_26718,plain,
    ( r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_26379,c_24434])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_26718,c_3156,c_2444,c_52])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:11:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 7.87/1.47  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.87/1.47  
% 7.87/1.47  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.87/1.47  
% 7.87/1.47  ------  iProver source info
% 7.87/1.47  
% 7.87/1.47  git: date: 2020-06-30 10:37:57 +0100
% 7.87/1.47  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.87/1.47  git: non_committed_changes: false
% 7.87/1.47  git: last_make_outside_of_git: false
% 7.87/1.47  
% 7.87/1.47  ------ 
% 7.87/1.47  
% 7.87/1.47  ------ Input Options
% 7.87/1.47  
% 7.87/1.47  --out_options                           all
% 7.87/1.47  --tptp_safe_out                         true
% 7.87/1.47  --problem_path                          ""
% 7.87/1.47  --include_path                          ""
% 7.87/1.47  --clausifier                            res/vclausify_rel
% 7.87/1.47  --clausifier_options                    --mode clausify
% 7.87/1.47  --stdin                                 false
% 7.87/1.47  --stats_out                             sel
% 7.87/1.47  
% 7.87/1.47  ------ General Options
% 7.87/1.47  
% 7.87/1.47  --fof                                   false
% 7.87/1.47  --time_out_real                         604.99
% 7.87/1.47  --time_out_virtual                      -1.
% 7.87/1.47  --symbol_type_check                     false
% 7.87/1.47  --clausify_out                          false
% 7.87/1.47  --sig_cnt_out                           false
% 7.87/1.47  --trig_cnt_out                          false
% 7.87/1.47  --trig_cnt_out_tolerance                1.
% 7.87/1.47  --trig_cnt_out_sk_spl                   false
% 7.87/1.47  --abstr_cl_out                          false
% 7.87/1.47  
% 7.87/1.47  ------ Global Options
% 7.87/1.47  
% 7.87/1.47  --schedule                              none
% 7.87/1.47  --add_important_lit                     false
% 7.87/1.47  --prop_solver_per_cl                    1000
% 7.87/1.47  --min_unsat_core                        false
% 7.87/1.47  --soft_assumptions                      false
% 7.87/1.47  --soft_lemma_size                       3
% 7.87/1.47  --prop_impl_unit_size                   0
% 7.87/1.47  --prop_impl_unit                        []
% 7.87/1.47  --share_sel_clauses                     true
% 7.87/1.47  --reset_solvers                         false
% 7.87/1.47  --bc_imp_inh                            [conj_cone]
% 7.87/1.47  --conj_cone_tolerance                   3.
% 7.87/1.47  --extra_neg_conj                        none
% 7.87/1.47  --large_theory_mode                     true
% 7.87/1.47  --prolific_symb_bound                   200
% 7.87/1.47  --lt_threshold                          2000
% 7.87/1.47  --clause_weak_htbl                      true
% 7.87/1.47  --gc_record_bc_elim                     false
% 7.87/1.47  
% 7.87/1.47  ------ Preprocessing Options
% 7.87/1.47  
% 7.87/1.47  --preprocessing_flag                    true
% 7.87/1.47  --time_out_prep_mult                    0.1
% 7.87/1.47  --splitting_mode                        input
% 7.87/1.47  --splitting_grd                         true
% 7.87/1.47  --splitting_cvd                         false
% 7.87/1.47  --splitting_cvd_svl                     false
% 7.87/1.47  --splitting_nvd                         32
% 7.87/1.47  --sub_typing                            true
% 7.87/1.47  --prep_gs_sim                           false
% 7.87/1.47  --prep_unflatten                        true
% 7.87/1.47  --prep_res_sim                          true
% 7.87/1.47  --prep_upred                            true
% 7.87/1.47  --prep_sem_filter                       exhaustive
% 7.87/1.47  --prep_sem_filter_out                   false
% 7.87/1.47  --pred_elim                             false
% 7.87/1.47  --res_sim_input                         true
% 7.87/1.47  --eq_ax_congr_red                       true
% 7.87/1.47  --pure_diseq_elim                       true
% 7.87/1.47  --brand_transform                       false
% 7.87/1.47  --non_eq_to_eq                          false
% 7.87/1.47  --prep_def_merge                        true
% 7.87/1.47  --prep_def_merge_prop_impl              false
% 7.87/1.47  --prep_def_merge_mbd                    true
% 7.87/1.47  --prep_def_merge_tr_red                 false
% 7.87/1.47  --prep_def_merge_tr_cl                  false
% 7.87/1.47  --smt_preprocessing                     true
% 7.87/1.47  --smt_ac_axioms                         fast
% 7.87/1.47  --preprocessed_out                      false
% 7.87/1.47  --preprocessed_stats                    false
% 7.87/1.47  
% 7.87/1.47  ------ Abstraction refinement Options
% 7.87/1.47  
% 7.87/1.47  --abstr_ref                             []
% 7.87/1.47  --abstr_ref_prep                        false
% 7.87/1.47  --abstr_ref_until_sat                   false
% 7.87/1.47  --abstr_ref_sig_restrict                funpre
% 7.87/1.47  --abstr_ref_af_restrict_to_split_sk     false
% 7.87/1.47  --abstr_ref_under                       []
% 7.87/1.47  
% 7.87/1.47  ------ SAT Options
% 7.87/1.47  
% 7.87/1.47  --sat_mode                              false
% 7.87/1.47  --sat_fm_restart_options                ""
% 7.87/1.47  --sat_gr_def                            false
% 7.87/1.47  --sat_epr_types                         true
% 7.87/1.47  --sat_non_cyclic_types                  false
% 7.87/1.47  --sat_finite_models                     false
% 7.87/1.47  --sat_fm_lemmas                         false
% 7.87/1.47  --sat_fm_prep                           false
% 7.87/1.47  --sat_fm_uc_incr                        true
% 7.87/1.47  --sat_out_model                         small
% 7.87/1.47  --sat_out_clauses                       false
% 7.87/1.47  
% 7.87/1.47  ------ QBF Options
% 7.87/1.47  
% 7.87/1.47  --qbf_mode                              false
% 7.87/1.47  --qbf_elim_univ                         false
% 7.87/1.47  --qbf_dom_inst                          none
% 7.87/1.47  --qbf_dom_pre_inst                      false
% 7.87/1.47  --qbf_sk_in                             false
% 7.87/1.47  --qbf_pred_elim                         true
% 7.87/1.47  --qbf_split                             512
% 7.87/1.47  
% 7.87/1.47  ------ BMC1 Options
% 7.87/1.47  
% 7.87/1.47  --bmc1_incremental                      false
% 7.87/1.47  --bmc1_axioms                           reachable_all
% 7.87/1.47  --bmc1_min_bound                        0
% 7.87/1.47  --bmc1_max_bound                        -1
% 7.87/1.47  --bmc1_max_bound_default                -1
% 7.87/1.47  --bmc1_symbol_reachability              true
% 7.87/1.47  --bmc1_property_lemmas                  false
% 7.87/1.47  --bmc1_k_induction                      false
% 7.87/1.47  --bmc1_non_equiv_states                 false
% 7.87/1.47  --bmc1_deadlock                         false
% 7.87/1.47  --bmc1_ucm                              false
% 7.87/1.47  --bmc1_add_unsat_core                   none
% 7.87/1.47  --bmc1_unsat_core_children              false
% 7.87/1.47  --bmc1_unsat_core_extrapolate_axioms    false
% 7.87/1.47  --bmc1_out_stat                         full
% 7.87/1.47  --bmc1_ground_init                      false
% 7.87/1.47  --bmc1_pre_inst_next_state              false
% 7.87/1.47  --bmc1_pre_inst_state                   false
% 7.87/1.47  --bmc1_pre_inst_reach_state             false
% 7.87/1.47  --bmc1_out_unsat_core                   false
% 7.87/1.47  --bmc1_aig_witness_out                  false
% 7.87/1.47  --bmc1_verbose                          false
% 7.87/1.47  --bmc1_dump_clauses_tptp                false
% 7.87/1.47  --bmc1_dump_unsat_core_tptp             false
% 7.87/1.47  --bmc1_dump_file                        -
% 7.87/1.47  --bmc1_ucm_expand_uc_limit              128
% 7.87/1.47  --bmc1_ucm_n_expand_iterations          6
% 7.87/1.47  --bmc1_ucm_extend_mode                  1
% 7.87/1.47  --bmc1_ucm_init_mode                    2
% 7.87/1.47  --bmc1_ucm_cone_mode                    none
% 7.87/1.47  --bmc1_ucm_reduced_relation_type        0
% 7.87/1.47  --bmc1_ucm_relax_model                  4
% 7.87/1.47  --bmc1_ucm_full_tr_after_sat            true
% 7.87/1.47  --bmc1_ucm_expand_neg_assumptions       false
% 7.87/1.47  --bmc1_ucm_layered_model                none
% 7.87/1.47  --bmc1_ucm_max_lemma_size               10
% 7.87/1.47  
% 7.87/1.47  ------ AIG Options
% 7.87/1.47  
% 7.87/1.47  --aig_mode                              false
% 7.87/1.47  
% 7.87/1.47  ------ Instantiation Options
% 7.87/1.47  
% 7.87/1.47  --instantiation_flag                    true
% 7.87/1.47  --inst_sos_flag                         false
% 7.87/1.47  --inst_sos_phase                        true
% 7.87/1.47  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.87/1.47  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.87/1.47  --inst_lit_sel_side                     num_symb
% 7.87/1.47  --inst_solver_per_active                1400
% 7.87/1.47  --inst_solver_calls_frac                1.
% 7.87/1.47  --inst_passive_queue_type               priority_queues
% 7.87/1.47  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.87/1.47  --inst_passive_queues_freq              [25;2]
% 7.87/1.47  --inst_dismatching                      true
% 7.87/1.47  --inst_eager_unprocessed_to_passive     true
% 7.87/1.47  --inst_prop_sim_given                   true
% 7.87/1.47  --inst_prop_sim_new                     false
% 7.87/1.47  --inst_subs_new                         false
% 7.87/1.47  --inst_eq_res_simp                      false
% 7.87/1.47  --inst_subs_given                       false
% 7.87/1.47  --inst_orphan_elimination               true
% 7.87/1.47  --inst_learning_loop_flag               true
% 7.87/1.47  --inst_learning_start                   3000
% 7.87/1.47  --inst_learning_factor                  2
% 7.87/1.47  --inst_start_prop_sim_after_learn       3
% 7.87/1.47  --inst_sel_renew                        solver
% 7.87/1.47  --inst_lit_activity_flag                true
% 7.87/1.47  --inst_restr_to_given                   false
% 7.87/1.47  --inst_activity_threshold               500
% 7.87/1.47  --inst_out_proof                        true
% 7.87/1.47  
% 7.87/1.47  ------ Resolution Options
% 7.87/1.47  
% 7.87/1.47  --resolution_flag                       true
% 7.87/1.47  --res_lit_sel                           adaptive
% 7.87/1.47  --res_lit_sel_side                      none
% 7.87/1.47  --res_ordering                          kbo
% 7.87/1.47  --res_to_prop_solver                    active
% 7.87/1.47  --res_prop_simpl_new                    false
% 7.87/1.47  --res_prop_simpl_given                  true
% 7.87/1.47  --res_passive_queue_type                priority_queues
% 7.87/1.47  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.87/1.47  --res_passive_queues_freq               [15;5]
% 7.87/1.47  --res_forward_subs                      full
% 7.87/1.47  --res_backward_subs                     full
% 7.87/1.47  --res_forward_subs_resolution           true
% 7.87/1.47  --res_backward_subs_resolution          true
% 7.87/1.47  --res_orphan_elimination                true
% 7.87/1.47  --res_time_limit                        2.
% 7.87/1.47  --res_out_proof                         true
% 7.87/1.47  
% 7.87/1.47  ------ Superposition Options
% 7.87/1.47  
% 7.87/1.47  --superposition_flag                    true
% 7.87/1.47  --sup_passive_queue_type                priority_queues
% 7.87/1.47  --sup_passive_queues                    [[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.87/1.47  --sup_passive_queues_freq               [1;4]
% 7.87/1.47  --demod_completeness_check              fast
% 7.87/1.47  --demod_use_ground                      true
% 7.87/1.47  --sup_to_prop_solver                    passive
% 7.87/1.47  --sup_prop_simpl_new                    true
% 7.87/1.47  --sup_prop_simpl_given                  true
% 7.87/1.47  --sup_fun_splitting                     false
% 7.87/1.47  --sup_smt_interval                      50000
% 7.87/1.47  
% 7.87/1.47  ------ Superposition Simplification Setup
% 7.87/1.47  
% 7.87/1.47  --sup_indices_passive                   []
% 7.87/1.47  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_full_triv                         [TrivRules;PropSubs]
% 7.87/1.47  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_full_bw                           [BwDemod]
% 7.87/1.47  --sup_immed_triv                        [TrivRules]
% 7.87/1.47  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.87/1.47  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_immed_bw_main                     []
% 7.87/1.47  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.47  --sup_input_triv                        [Unflattening;TrivRules]
% 7.87/1.47  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.47  
% 7.87/1.47  ------ Combination Options
% 7.87/1.47  
% 7.87/1.47  --comb_res_mult                         3
% 7.87/1.47  --comb_sup_mult                         2
% 7.87/1.47  --comb_inst_mult                        10
% 7.87/1.47  
% 7.87/1.47  ------ Debug Options
% 7.87/1.47  
% 7.87/1.47  --dbg_backtrace                         false
% 7.87/1.47  --dbg_dump_prop_clauses                 false
% 7.87/1.47  --dbg_dump_prop_clauses_file            -
% 7.87/1.47  --dbg_out_stat                          false
% 7.87/1.47  ------ Parsing...
% 7.87/1.47  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.87/1.47  
% 7.87/1.47  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 1 0s  sf_e 
% 7.87/1.47  
% 7.87/1.47  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.87/1.47  
% 7.87/1.47  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.87/1.47  ------ Proving...
% 7.87/1.47  ------ Problem Properties 
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  clauses                                 37
% 7.87/1.47  conjectures                             4
% 7.87/1.47  EPR                                     8
% 7.87/1.47  Horn                                    22
% 7.87/1.47  unary                                   7
% 7.87/1.47  binary                                  5
% 7.87/1.47  lits                                    133
% 7.87/1.47  lits eq                                 25
% 7.87/1.47  fd_pure                                 0
% 7.87/1.47  fd_pseudo                               0
% 7.87/1.47  fd_cond                                 0
% 7.87/1.47  fd_pseudo_cond                          8
% 7.87/1.47  AC symbols                              0
% 7.87/1.47  
% 7.87/1.47  ------ Input Options Time Limit: Unbounded
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  ------ 
% 7.87/1.47  Current options:
% 7.87/1.47  ------ 
% 7.87/1.47  
% 7.87/1.47  ------ Input Options
% 7.87/1.47  
% 7.87/1.47  --out_options                           all
% 7.87/1.47  --tptp_safe_out                         true
% 7.87/1.47  --problem_path                          ""
% 7.87/1.47  --include_path                          ""
% 7.87/1.47  --clausifier                            res/vclausify_rel
% 7.87/1.47  --clausifier_options                    --mode clausify
% 7.87/1.47  --stdin                                 false
% 7.87/1.47  --stats_out                             sel
% 7.87/1.47  
% 7.87/1.47  ------ General Options
% 7.87/1.47  
% 7.87/1.47  --fof                                   false
% 7.87/1.47  --time_out_real                         604.99
% 7.87/1.47  --time_out_virtual                      -1.
% 7.87/1.47  --symbol_type_check                     false
% 7.87/1.47  --clausify_out                          false
% 7.87/1.47  --sig_cnt_out                           false
% 7.87/1.47  --trig_cnt_out                          false
% 7.87/1.47  --trig_cnt_out_tolerance                1.
% 7.87/1.47  --trig_cnt_out_sk_spl                   false
% 7.87/1.47  --abstr_cl_out                          false
% 7.87/1.47  
% 7.87/1.47  ------ Global Options
% 7.87/1.47  
% 7.87/1.47  --schedule                              none
% 7.87/1.47  --add_important_lit                     false
% 7.87/1.47  --prop_solver_per_cl                    1000
% 7.87/1.47  --min_unsat_core                        false
% 7.87/1.47  --soft_assumptions                      false
% 7.87/1.47  --soft_lemma_size                       3
% 7.87/1.47  --prop_impl_unit_size                   0
% 7.87/1.47  --prop_impl_unit                        []
% 7.87/1.47  --share_sel_clauses                     true
% 7.87/1.47  --reset_solvers                         false
% 7.87/1.47  --bc_imp_inh                            [conj_cone]
% 7.87/1.47  --conj_cone_tolerance                   3.
% 7.87/1.47  --extra_neg_conj                        none
% 7.87/1.47  --large_theory_mode                     true
% 7.87/1.47  --prolific_symb_bound                   200
% 7.87/1.47  --lt_threshold                          2000
% 7.87/1.47  --clause_weak_htbl                      true
% 7.87/1.47  --gc_record_bc_elim                     false
% 7.87/1.47  
% 7.87/1.47  ------ Preprocessing Options
% 7.87/1.47  
% 7.87/1.47  --preprocessing_flag                    true
% 7.87/1.47  --time_out_prep_mult                    0.1
% 7.87/1.47  --splitting_mode                        input
% 7.87/1.47  --splitting_grd                         true
% 7.87/1.47  --splitting_cvd                         false
% 7.87/1.47  --splitting_cvd_svl                     false
% 7.87/1.47  --splitting_nvd                         32
% 7.87/1.47  --sub_typing                            true
% 7.87/1.47  --prep_gs_sim                           false
% 7.87/1.47  --prep_unflatten                        true
% 7.87/1.47  --prep_res_sim                          true
% 7.87/1.47  --prep_upred                            true
% 7.87/1.47  --prep_sem_filter                       exhaustive
% 7.87/1.47  --prep_sem_filter_out                   false
% 7.87/1.47  --pred_elim                             false
% 7.87/1.47  --res_sim_input                         true
% 7.87/1.47  --eq_ax_congr_red                       true
% 7.87/1.47  --pure_diseq_elim                       true
% 7.87/1.47  --brand_transform                       false
% 7.87/1.47  --non_eq_to_eq                          false
% 7.87/1.47  --prep_def_merge                        true
% 7.87/1.47  --prep_def_merge_prop_impl              false
% 7.87/1.47  --prep_def_merge_mbd                    true
% 7.87/1.47  --prep_def_merge_tr_red                 false
% 7.87/1.47  --prep_def_merge_tr_cl                  false
% 7.87/1.47  --smt_preprocessing                     true
% 7.87/1.47  --smt_ac_axioms                         fast
% 7.87/1.47  --preprocessed_out                      false
% 7.87/1.47  --preprocessed_stats                    false
% 7.87/1.47  
% 7.87/1.47  ------ Abstraction refinement Options
% 7.87/1.47  
% 7.87/1.47  --abstr_ref                             []
% 7.87/1.47  --abstr_ref_prep                        false
% 7.87/1.47  --abstr_ref_until_sat                   false
% 7.87/1.47  --abstr_ref_sig_restrict                funpre
% 7.87/1.47  --abstr_ref_af_restrict_to_split_sk     false
% 7.87/1.47  --abstr_ref_under                       []
% 7.87/1.47  
% 7.87/1.47  ------ SAT Options
% 7.87/1.47  
% 7.87/1.47  --sat_mode                              false
% 7.87/1.47  --sat_fm_restart_options                ""
% 7.87/1.47  --sat_gr_def                            false
% 7.87/1.47  --sat_epr_types                         true
% 7.87/1.47  --sat_non_cyclic_types                  false
% 7.87/1.47  --sat_finite_models                     false
% 7.87/1.47  --sat_fm_lemmas                         false
% 7.87/1.47  --sat_fm_prep                           false
% 7.87/1.47  --sat_fm_uc_incr                        true
% 7.87/1.47  --sat_out_model                         small
% 7.87/1.47  --sat_out_clauses                       false
% 7.87/1.47  
% 7.87/1.47  ------ QBF Options
% 7.87/1.47  
% 7.87/1.47  --qbf_mode                              false
% 7.87/1.47  --qbf_elim_univ                         false
% 7.87/1.47  --qbf_dom_inst                          none
% 7.87/1.47  --qbf_dom_pre_inst                      false
% 7.87/1.47  --qbf_sk_in                             false
% 7.87/1.47  --qbf_pred_elim                         true
% 7.87/1.47  --qbf_split                             512
% 7.87/1.47  
% 7.87/1.47  ------ BMC1 Options
% 7.87/1.47  
% 7.87/1.47  --bmc1_incremental                      false
% 7.87/1.47  --bmc1_axioms                           reachable_all
% 7.87/1.47  --bmc1_min_bound                        0
% 7.87/1.47  --bmc1_max_bound                        -1
% 7.87/1.47  --bmc1_max_bound_default                -1
% 7.87/1.47  --bmc1_symbol_reachability              true
% 7.87/1.47  --bmc1_property_lemmas                  false
% 7.87/1.47  --bmc1_k_induction                      false
% 7.87/1.47  --bmc1_non_equiv_states                 false
% 7.87/1.47  --bmc1_deadlock                         false
% 7.87/1.47  --bmc1_ucm                              false
% 7.87/1.47  --bmc1_add_unsat_core                   none
% 7.87/1.47  --bmc1_unsat_core_children              false
% 7.87/1.47  --bmc1_unsat_core_extrapolate_axioms    false
% 7.87/1.47  --bmc1_out_stat                         full
% 7.87/1.47  --bmc1_ground_init                      false
% 7.87/1.47  --bmc1_pre_inst_next_state              false
% 7.87/1.47  --bmc1_pre_inst_state                   false
% 7.87/1.47  --bmc1_pre_inst_reach_state             false
% 7.87/1.47  --bmc1_out_unsat_core                   false
% 7.87/1.47  --bmc1_aig_witness_out                  false
% 7.87/1.47  --bmc1_verbose                          false
% 7.87/1.47  --bmc1_dump_clauses_tptp                false
% 7.87/1.47  --bmc1_dump_unsat_core_tptp             false
% 7.87/1.47  --bmc1_dump_file                        -
% 7.87/1.47  --bmc1_ucm_expand_uc_limit              128
% 7.87/1.47  --bmc1_ucm_n_expand_iterations          6
% 7.87/1.47  --bmc1_ucm_extend_mode                  1
% 7.87/1.47  --bmc1_ucm_init_mode                    2
% 7.87/1.47  --bmc1_ucm_cone_mode                    none
% 7.87/1.47  --bmc1_ucm_reduced_relation_type        0
% 7.87/1.47  --bmc1_ucm_relax_model                  4
% 7.87/1.47  --bmc1_ucm_full_tr_after_sat            true
% 7.87/1.47  --bmc1_ucm_expand_neg_assumptions       false
% 7.87/1.47  --bmc1_ucm_layered_model                none
% 7.87/1.47  --bmc1_ucm_max_lemma_size               10
% 7.87/1.47  
% 7.87/1.47  ------ AIG Options
% 7.87/1.47  
% 7.87/1.47  --aig_mode                              false
% 7.87/1.47  
% 7.87/1.47  ------ Instantiation Options
% 7.87/1.47  
% 7.87/1.47  --instantiation_flag                    true
% 7.87/1.47  --inst_sos_flag                         false
% 7.87/1.47  --inst_sos_phase                        true
% 7.87/1.47  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.87/1.47  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.87/1.47  --inst_lit_sel_side                     num_symb
% 7.87/1.47  --inst_solver_per_active                1400
% 7.87/1.47  --inst_solver_calls_frac                1.
% 7.87/1.47  --inst_passive_queue_type               priority_queues
% 7.87/1.47  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.87/1.47  --inst_passive_queues_freq              [25;2]
% 7.87/1.47  --inst_dismatching                      true
% 7.87/1.47  --inst_eager_unprocessed_to_passive     true
% 7.87/1.47  --inst_prop_sim_given                   true
% 7.87/1.47  --inst_prop_sim_new                     false
% 7.87/1.47  --inst_subs_new                         false
% 7.87/1.47  --inst_eq_res_simp                      false
% 7.87/1.47  --inst_subs_given                       false
% 7.87/1.47  --inst_orphan_elimination               true
% 7.87/1.47  --inst_learning_loop_flag               true
% 7.87/1.47  --inst_learning_start                   3000
% 7.87/1.47  --inst_learning_factor                  2
% 7.87/1.47  --inst_start_prop_sim_after_learn       3
% 7.87/1.47  --inst_sel_renew                        solver
% 7.87/1.47  --inst_lit_activity_flag                true
% 7.87/1.47  --inst_restr_to_given                   false
% 7.87/1.47  --inst_activity_threshold               500
% 7.87/1.47  --inst_out_proof                        true
% 7.87/1.47  
% 7.87/1.47  ------ Resolution Options
% 7.87/1.47  
% 7.87/1.47  --resolution_flag                       true
% 7.87/1.47  --res_lit_sel                           adaptive
% 7.87/1.47  --res_lit_sel_side                      none
% 7.87/1.47  --res_ordering                          kbo
% 7.87/1.47  --res_to_prop_solver                    active
% 7.87/1.47  --res_prop_simpl_new                    false
% 7.87/1.47  --res_prop_simpl_given                  true
% 7.87/1.47  --res_passive_queue_type                priority_queues
% 7.87/1.47  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.87/1.47  --res_passive_queues_freq               [15;5]
% 7.87/1.47  --res_forward_subs                      full
% 7.87/1.47  --res_backward_subs                     full
% 7.87/1.47  --res_forward_subs_resolution           true
% 7.87/1.47  --res_backward_subs_resolution          true
% 7.87/1.47  --res_orphan_elimination                true
% 7.87/1.47  --res_time_limit                        2.
% 7.87/1.47  --res_out_proof                         true
% 7.87/1.47  
% 7.87/1.47  ------ Superposition Options
% 7.87/1.47  
% 7.87/1.47  --superposition_flag                    true
% 7.87/1.47  --sup_passive_queue_type                priority_queues
% 7.87/1.47  --sup_passive_queues                    [[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.87/1.47  --sup_passive_queues_freq               [1;4]
% 7.87/1.47  --demod_completeness_check              fast
% 7.87/1.47  --demod_use_ground                      true
% 7.87/1.47  --sup_to_prop_solver                    passive
% 7.87/1.47  --sup_prop_simpl_new                    true
% 7.87/1.47  --sup_prop_simpl_given                  true
% 7.87/1.47  --sup_fun_splitting                     false
% 7.87/1.47  --sup_smt_interval                      50000
% 7.87/1.47  
% 7.87/1.47  ------ Superposition Simplification Setup
% 7.87/1.47  
% 7.87/1.47  --sup_indices_passive                   []
% 7.87/1.47  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.87/1.47  --sup_full_triv                         [TrivRules;PropSubs]
% 7.87/1.47  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_full_bw                           [BwDemod]
% 7.87/1.47  --sup_immed_triv                        [TrivRules]
% 7.87/1.47  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.87/1.47  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_immed_bw_main                     []
% 7.87/1.47  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.47  --sup_input_triv                        [Unflattening;TrivRules]
% 7.87/1.47  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.87/1.47  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.87/1.47  
% 7.87/1.47  ------ Combination Options
% 7.87/1.47  
% 7.87/1.47  --comb_res_mult                         3
% 7.87/1.47  --comb_sup_mult                         2
% 7.87/1.47  --comb_inst_mult                        10
% 7.87/1.47  
% 7.87/1.47  ------ Debug Options
% 7.87/1.47  
% 7.87/1.47  --dbg_backtrace                         false
% 7.87/1.47  --dbg_dump_prop_clauses                 false
% 7.87/1.47  --dbg_dump_prop_clauses_file            -
% 7.87/1.47  --dbg_out_stat                          false
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  ------ Proving...
% 7.87/1.47  
% 7.87/1.47  
% 7.87/1.47  % SZS status Theorem for theBenchmark.p
% 7.87/1.47  
% 7.87/1.47  % SZS output start CNFRefutation for theBenchmark.p
% 7.87/1.47  
% 7.87/1.47  fof(f1,axiom,(
% 7.87/1.47    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 7.87/1.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.47  
% 7.87/1.47  fof(f16,plain,(
% 7.87/1.47    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 7.87/1.47    inference(ennf_transformation,[],[f1])).
% 7.87/1.47  
% 7.87/1.47  fof(f34,plain,(
% 7.87/1.47    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 7.87/1.47    inference(nnf_transformation,[],[f16])).
% 7.87/1.47  
% 7.87/1.47  fof(f35,plain,(
% 7.87/1.47    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 7.87/1.47    inference(rectify,[],[f34])).
% 7.87/1.47  
% 7.87/1.47  fof(f36,plain,(
% 7.87/1.47    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 7.87/1.47    introduced(choice_axiom,[])).
% 7.87/1.47  
% 7.87/1.47  fof(f37,plain,(
% 7.87/1.47    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 7.87/1.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f36])).
% 7.87/1.47  
% 7.87/1.47  fof(f61,plain,(
% 7.87/1.47    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 7.87/1.47    inference(cnf_transformation,[],[f37])).
% 7.87/1.47  
% 7.87/1.47  fof(f3,axiom,(
% 7.87/1.47    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => ~(~r2_hidden(X1,X0) & X0 != X1 & ~r2_hidden(X0,X1))))),
% 7.87/1.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.47  
% 7.87/1.47  fof(f17,plain,(
% 7.87/1.47    ! [X0] : (! [X1] : ((r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 7.87/1.47    inference(ennf_transformation,[],[f3])).
% 7.87/1.47  
% 7.87/1.47  fof(f18,plain,(
% 7.87/1.47    ! [X0] : (! [X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 7.87/1.47    inference(flattening,[],[f17])).
% 7.87/1.47  
% 7.87/1.47  fof(f66,plain,(
% 7.87/1.47    ( ! [X0,X1] : (r2_hidden(X1,X0) | X0 = X1 | r2_hidden(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 7.87/1.47    inference(cnf_transformation,[],[f18])).
% 7.87/1.47  
% 7.87/1.47  fof(f13,conjecture,(
% 7.87/1.47    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r4_wellord1(k1_wellord2(X0),k1_wellord2(X1)) => X0 = X1)))),
% 7.87/1.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.47  
% 7.87/1.47  fof(f14,negated_conjecture,(
% 7.87/1.47    ~! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r4_wellord1(k1_wellord2(X0),k1_wellord2(X1)) => X0 = X1)))),
% 7.87/1.47    inference(negated_conjecture,[],[f13])).
% 7.87/1.47  
% 7.87/1.47  fof(f32,plain,(
% 7.87/1.47    ? [X0] : (? [X1] : ((X0 != X1 & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1))) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 7.87/1.47    inference(ennf_transformation,[],[f14])).
% 7.87/1.47  
% 7.87/1.47  fof(f33,plain,(
% 7.87/1.47    ? [X0] : (? [X1] : (X0 != X1 & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0))),
% 7.87/1.47    inference(flattening,[],[f32])).
% 7.87/1.47  
% 7.87/1.47  fof(f58,plain,(
% 7.87/1.47    ( ! [X0] : (? [X1] : (X0 != X1 & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1)) & v3_ordinal1(X1)) => (sK8 != X0 & r4_wellord1(k1_wellord2(X0),k1_wellord2(sK8)) & v3_ordinal1(sK8))) )),
% 7.87/1.47    introduced(choice_axiom,[])).
% 7.87/1.47  
% 7.87/1.47  fof(f57,plain,(
% 7.87/1.47    ? [X0] : (? [X1] : (X0 != X1 & r4_wellord1(k1_wellord2(X0),k1_wellord2(X1)) & v3_ordinal1(X1)) & v3_ordinal1(X0)) => (? [X1] : (sK7 != X1 & r4_wellord1(k1_wellord2(sK7),k1_wellord2(X1)) & v3_ordinal1(X1)) & v3_ordinal1(sK7))),
% 7.87/1.47    introduced(choice_axiom,[])).
% 7.87/1.47  
% 7.87/1.47  fof(f59,plain,(
% 7.87/1.47    (sK7 != sK8 & r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) & v3_ordinal1(sK8)) & v3_ordinal1(sK7)),
% 7.87/1.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8])],[f33,f58,f57])).
% 7.87/1.47  
% 7.87/1.47  fof(f94,plain,(
% 7.87/1.47    v3_ordinal1(sK7)),
% 7.87/1.47    inference(cnf_transformation,[],[f59])).
% 7.87/1.47  
% 7.87/1.47  fof(f95,plain,(
% 7.87/1.47    v3_ordinal1(sK8)),
% 7.87/1.47    inference(cnf_transformation,[],[f59])).
% 7.87/1.47  
% 7.87/1.47  fof(f10,axiom,(
% 7.87/1.47    ! [X0] : (v3_ordinal1(X0) => ! [X1] : (v3_ordinal1(X1) => (r2_hidden(X0,X1) => k1_wellord1(k1_wellord2(X1),X0) = X0)))),
% 7.87/1.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.47  
% 7.87/1.47  fof(f28,plain,(
% 7.87/1.47    ! [X0] : (! [X1] : ((k1_wellord1(k1_wellord2(X1),X0) = X0 | ~r2_hidden(X0,X1)) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 7.87/1.47    inference(ennf_transformation,[],[f10])).
% 7.87/1.47  
% 7.87/1.47  fof(f29,plain,(
% 7.87/1.47    ! [X0] : (! [X1] : (k1_wellord1(k1_wellord2(X1),X0) = X0 | ~r2_hidden(X0,X1) | ~v3_ordinal1(X1)) | ~v3_ordinal1(X0))),
% 7.87/1.47    inference(flattening,[],[f28])).
% 7.87/1.47  
% 7.87/1.47  fof(f91,plain,(
% 7.87/1.47    ( ! [X0,X1] : (k1_wellord1(k1_wellord2(X1),X0) = X0 | ~r2_hidden(X0,X1) | ~v3_ordinal1(X1) | ~v3_ordinal1(X0)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f29])).
% 7.87/1.48  
% 7.87/1.48  fof(f97,plain,(
% 7.87/1.48    sK7 != sK8),
% 7.87/1.48    inference(cnf_transformation,[],[f59])).
% 7.87/1.48  
% 7.87/1.48  fof(f2,axiom,(
% 7.87/1.48    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f38,plain,(
% 7.87/1.48    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.87/1.48    inference(nnf_transformation,[],[f2])).
% 7.87/1.48  
% 7.87/1.48  fof(f39,plain,(
% 7.87/1.48    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.87/1.48    inference(flattening,[],[f38])).
% 7.87/1.48  
% 7.87/1.48  fof(f63,plain,(
% 7.87/1.48    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 7.87/1.48    inference(cnf_transformation,[],[f39])).
% 7.87/1.48  
% 7.87/1.48  fof(f99,plain,(
% 7.87/1.48    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 7.87/1.48    inference(equality_resolution,[],[f63])).
% 7.87/1.48  
% 7.87/1.48  fof(f65,plain,(
% 7.87/1.48    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f39])).
% 7.87/1.48  
% 7.87/1.48  fof(f4,axiom,(
% 7.87/1.48    ! [X0] : (v1_relat_1(X0) => ! [X1,X2] : (k1_wellord1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3))))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f19,plain,(
% 7.87/1.48    ! [X0] : (! [X1,X2] : (k1_wellord1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3))) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(ennf_transformation,[],[f4])).
% 7.87/1.48  
% 7.87/1.48  fof(f40,plain,(
% 7.87/1.48    ! [X0] : (! [X1,X2] : ((k1_wellord1(X0,X1) = X2 | ? [X3] : (((~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3) | ~r2_hidden(X3,X2)) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3)) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | ~r2_hidden(X3,X2))) | k1_wellord1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(nnf_transformation,[],[f19])).
% 7.87/1.48  
% 7.87/1.48  fof(f41,plain,(
% 7.87/1.48    ! [X0] : (! [X1,X2] : ((k1_wellord1(X0,X1) = X2 | ? [X3] : ((~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3 | ~r2_hidden(X3,X2)) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | ~r2_hidden(X3,X2))) | k1_wellord1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(flattening,[],[f40])).
% 7.87/1.48  
% 7.87/1.48  fof(f42,plain,(
% 7.87/1.48    ! [X0] : (! [X1,X2] : ((k1_wellord1(X0,X1) = X2 | ? [X3] : ((~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3 | ~r2_hidden(X3,X2)) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(k4_tarski(X4,X1),X0) | X1 = X4) & ((r2_hidden(k4_tarski(X4,X1),X0) & X1 != X4) | ~r2_hidden(X4,X2))) | k1_wellord1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(rectify,[],[f41])).
% 7.87/1.48  
% 7.87/1.48  fof(f43,plain,(
% 7.87/1.48    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(k4_tarski(X3,X1),X0) | X1 = X3 | ~r2_hidden(X3,X2)) & ((r2_hidden(k4_tarski(X3,X1),X0) & X1 != X3) | r2_hidden(X3,X2))) => ((~r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0) | sK1(X0,X1,X2) = X1 | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0) & sK1(X0,X1,X2) != X1) | r2_hidden(sK1(X0,X1,X2),X2))))),
% 7.87/1.48    introduced(choice_axiom,[])).
% 7.87/1.48  
% 7.87/1.48  fof(f44,plain,(
% 7.87/1.48    ! [X0] : (! [X1,X2] : ((k1_wellord1(X0,X1) = X2 | ((~r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0) | sK1(X0,X1,X2) = X1 | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((r2_hidden(k4_tarski(sK1(X0,X1,X2),X1),X0) & sK1(X0,X1,X2) != X1) | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(k4_tarski(X4,X1),X0) | X1 = X4) & ((r2_hidden(k4_tarski(X4,X1),X0) & X1 != X4) | ~r2_hidden(X4,X2))) | k1_wellord1(X0,X1) != X2)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f42,f43])).
% 7.87/1.48  
% 7.87/1.48  fof(f68,plain,(
% 7.87/1.48    ( ! [X4,X2,X0,X1] : (r2_hidden(k4_tarski(X4,X1),X0) | ~r2_hidden(X4,X2) | k1_wellord1(X0,X1) != X2 | ~v1_relat_1(X0)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f44])).
% 7.87/1.48  
% 7.87/1.48  fof(f101,plain,(
% 7.87/1.48    ( ! [X4,X0,X1] : (r2_hidden(k4_tarski(X4,X1),X0) | ~r2_hidden(X4,k1_wellord1(X0,X1)) | ~v1_relat_1(X0)) )),
% 7.87/1.48    inference(equality_resolution,[],[f68])).
% 7.87/1.48  
% 7.87/1.48  fof(f9,axiom,(
% 7.87/1.48    ! [X0] : v1_relat_1(k1_wellord2(X0))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f90,plain,(
% 7.87/1.48    ( ! [X0] : (v1_relat_1(k1_wellord2(X0))) )),
% 7.87/1.48    inference(cnf_transformation,[],[f9])).
% 7.87/1.48  
% 7.87/1.48  fof(f5,axiom,(
% 7.87/1.48    ! [X0,X1] : (v1_relat_1(X1) => ((r1_tarski(X0,k3_relat_1(X1)) & v2_wellord1(X1)) => (~(! [X2] : ~(k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) & k3_relat_1(X1) != X0) <=> ! [X2] : (r2_hidden(X2,X0) => ! [X3] : (r2_hidden(k4_tarski(X3,X2),X1) => r2_hidden(X3,X0))))))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f15,plain,(
% 7.87/1.48    ! [X0,X1] : (v1_relat_1(X1) => ((r1_tarski(X0,k3_relat_1(X1)) & v2_wellord1(X1)) => (~(! [X2] : ~(k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) & k3_relat_1(X1) != X0) <=> ! [X3] : (r2_hidden(X3,X0) => ! [X4] : (r2_hidden(k4_tarski(X4,X3),X1) => r2_hidden(X4,X0))))))),
% 7.87/1.48    inference(rectify,[],[f5])).
% 7.87/1.48  
% 7.87/1.48  fof(f20,plain,(
% 7.87/1.48    ! [X0,X1] : ((((? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) | k3_relat_1(X1) = X0) <=> ! [X3] : (! [X4] : (r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X4,X3),X1)) | ~r2_hidden(X3,X0))) | (~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1))) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(ennf_transformation,[],[f15])).
% 7.87/1.48  
% 7.87/1.48  fof(f21,plain,(
% 7.87/1.48    ! [X0,X1] : (((? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) | k3_relat_1(X1) = X0) <=> ! [X3] : (! [X4] : (r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X4,X3),X1)) | ~r2_hidden(X3,X0))) | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(flattening,[],[f20])).
% 7.87/1.48  
% 7.87/1.48  fof(f45,plain,(
% 7.87/1.48    ! [X0,X1] : ((((? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) | k3_relat_1(X1) = X0) | ? [X3] : (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,X3),X1)) & r2_hidden(X3,X0))) & (! [X3] : (! [X4] : (r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X4,X3),X1)) | ~r2_hidden(X3,X0)) | (! [X2] : (k1_wellord1(X1,X2) != X0 | ~r2_hidden(X2,k3_relat_1(X1))) & k3_relat_1(X1) != X0))) | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(nnf_transformation,[],[f21])).
% 7.87/1.48  
% 7.87/1.48  fof(f46,plain,(
% 7.87/1.48    ! [X0,X1] : (((? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) | k3_relat_1(X1) = X0 | ? [X3] : (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,X3),X1)) & r2_hidden(X3,X0))) & (! [X3] : (! [X4] : (r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X4,X3),X1)) | ~r2_hidden(X3,X0)) | (! [X2] : (k1_wellord1(X1,X2) != X0 | ~r2_hidden(X2,k3_relat_1(X1))) & k3_relat_1(X1) != X0))) | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(flattening,[],[f45])).
% 7.87/1.48  
% 7.87/1.48  fof(f47,plain,(
% 7.87/1.48    ! [X0,X1] : (((? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) | k3_relat_1(X1) = X0 | ? [X3] : (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,X3),X1)) & r2_hidden(X3,X0))) & (! [X5] : (! [X6] : (r2_hidden(X6,X0) | ~r2_hidden(k4_tarski(X6,X5),X1)) | ~r2_hidden(X5,X0)) | (! [X7] : (k1_wellord1(X1,X7) != X0 | ~r2_hidden(X7,k3_relat_1(X1))) & k3_relat_1(X1) != X0))) | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(rectify,[],[f46])).
% 7.87/1.48  
% 7.87/1.48  fof(f50,plain,(
% 7.87/1.48    ( ! [X3] : (! [X1,X0] : (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,X3),X1)) => (~r2_hidden(sK4(X0,X1),X0) & r2_hidden(k4_tarski(sK4(X0,X1),X3),X1)))) )),
% 7.87/1.48    introduced(choice_axiom,[])).
% 7.87/1.48  
% 7.87/1.48  fof(f49,plain,(
% 7.87/1.48    ! [X1,X0] : (? [X3] : (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,X3),X1)) & r2_hidden(X3,X0)) => (? [X4] : (~r2_hidden(X4,X0) & r2_hidden(k4_tarski(X4,sK3(X0,X1)),X1)) & r2_hidden(sK3(X0,X1),X0)))),
% 7.87/1.48    introduced(choice_axiom,[])).
% 7.87/1.48  
% 7.87/1.48  fof(f48,plain,(
% 7.87/1.48    ! [X1,X0] : (? [X2] : (k1_wellord1(X1,X2) = X0 & r2_hidden(X2,k3_relat_1(X1))) => (k1_wellord1(X1,sK2(X0,X1)) = X0 & r2_hidden(sK2(X0,X1),k3_relat_1(X1))))),
% 7.87/1.48    introduced(choice_axiom,[])).
% 7.87/1.48  
% 7.87/1.48  fof(f51,plain,(
% 7.87/1.48    ! [X0,X1] : ((((k1_wellord1(X1,sK2(X0,X1)) = X0 & r2_hidden(sK2(X0,X1),k3_relat_1(X1))) | k3_relat_1(X1) = X0 | ((~r2_hidden(sK4(X0,X1),X0) & r2_hidden(k4_tarski(sK4(X0,X1),sK3(X0,X1)),X1)) & r2_hidden(sK3(X0,X1),X0))) & (! [X5] : (! [X6] : (r2_hidden(X6,X0) | ~r2_hidden(k4_tarski(X6,X5),X1)) | ~r2_hidden(X5,X0)) | (! [X7] : (k1_wellord1(X1,X7) != X0 | ~r2_hidden(X7,k3_relat_1(X1))) & k3_relat_1(X1) != X0))) | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f47,f50,f49,f48])).
% 7.87/1.48  
% 7.87/1.48  fof(f73,plain,(
% 7.87/1.48    ( ! [X6,X0,X5,X1] : (r2_hidden(X6,X0) | ~r2_hidden(k4_tarski(X6,X5),X1) | ~r2_hidden(X5,X0) | k3_relat_1(X1) != X0 | ~r1_tarski(X0,k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f51])).
% 7.87/1.48  
% 7.87/1.48  fof(f105,plain,(
% 7.87/1.48    ( ! [X6,X5,X1] : (r2_hidden(X6,k3_relat_1(X1)) | ~r2_hidden(k4_tarski(X6,X5),X1) | ~r2_hidden(X5,k3_relat_1(X1)) | ~r1_tarski(k3_relat_1(X1),k3_relat_1(X1)) | ~v2_wellord1(X1) | ~v1_relat_1(X1)) )),
% 7.87/1.48    inference(equality_resolution,[],[f73])).
% 7.87/1.48  
% 7.87/1.48  fof(f8,axiom,(
% 7.87/1.48    ! [X0,X1] : (v1_relat_1(X1) => (k1_wellord2(X0) = X1 <=> (! [X2,X3] : ((r2_hidden(X3,X0) & r2_hidden(X2,X0)) => (r2_hidden(k4_tarski(X2,X3),X1) <=> r1_tarski(X2,X3))) & k3_relat_1(X1) = X0)))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f26,plain,(
% 7.87/1.48    ! [X0,X1] : ((k1_wellord2(X0) = X1 <=> (! [X2,X3] : ((r2_hidden(k4_tarski(X2,X3),X1) <=> r1_tarski(X2,X3)) | (~r2_hidden(X3,X0) | ~r2_hidden(X2,X0))) & k3_relat_1(X1) = X0)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(ennf_transformation,[],[f8])).
% 7.87/1.48  
% 7.87/1.48  fof(f27,plain,(
% 7.87/1.48    ! [X0,X1] : ((k1_wellord2(X0) = X1 <=> (! [X2,X3] : ((r2_hidden(k4_tarski(X2,X3),X1) <=> r1_tarski(X2,X3)) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) & k3_relat_1(X1) = X0)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(flattening,[],[f26])).
% 7.87/1.48  
% 7.87/1.48  fof(f52,plain,(
% 7.87/1.48    ! [X0,X1] : (((k1_wellord2(X0) = X1 | (? [X2,X3] : (((~r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1)) & (r1_tarski(X2,X3) | r2_hidden(k4_tarski(X2,X3),X1))) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | k3_relat_1(X1) != X0)) & ((! [X2,X3] : (((r2_hidden(k4_tarski(X2,X3),X1) | ~r1_tarski(X2,X3)) & (r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1))) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) & k3_relat_1(X1) = X0) | k1_wellord2(X0) != X1)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(nnf_transformation,[],[f27])).
% 7.87/1.48  
% 7.87/1.48  fof(f53,plain,(
% 7.87/1.48    ! [X0,X1] : (((k1_wellord2(X0) = X1 | ? [X2,X3] : ((~r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1)) & (r1_tarski(X2,X3) | r2_hidden(k4_tarski(X2,X3),X1)) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | k3_relat_1(X1) != X0) & ((! [X2,X3] : (((r2_hidden(k4_tarski(X2,X3),X1) | ~r1_tarski(X2,X3)) & (r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1))) | ~r2_hidden(X3,X0) | ~r2_hidden(X2,X0)) & k3_relat_1(X1) = X0) | k1_wellord2(X0) != X1)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(flattening,[],[f52])).
% 7.87/1.48  
% 7.87/1.48  fof(f54,plain,(
% 7.87/1.48    ! [X0,X1] : (((k1_wellord2(X0) = X1 | ? [X2,X3] : ((~r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1)) & (r1_tarski(X2,X3) | r2_hidden(k4_tarski(X2,X3),X1)) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) | k3_relat_1(X1) != X0) & ((! [X4,X5] : (((r2_hidden(k4_tarski(X4,X5),X1) | ~r1_tarski(X4,X5)) & (r1_tarski(X4,X5) | ~r2_hidden(k4_tarski(X4,X5),X1))) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) & k3_relat_1(X1) = X0) | k1_wellord2(X0) != X1)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(rectify,[],[f53])).
% 7.87/1.48  
% 7.87/1.48  fof(f55,plain,(
% 7.87/1.48    ! [X1,X0] : (? [X2,X3] : ((~r1_tarski(X2,X3) | ~r2_hidden(k4_tarski(X2,X3),X1)) & (r1_tarski(X2,X3) | r2_hidden(k4_tarski(X2,X3),X1)) & r2_hidden(X3,X0) & r2_hidden(X2,X0)) => ((~r1_tarski(sK5(X0,X1),sK6(X0,X1)) | ~r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1)) & (r1_tarski(sK5(X0,X1),sK6(X0,X1)) | r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1)) & r2_hidden(sK6(X0,X1),X0) & r2_hidden(sK5(X0,X1),X0)))),
% 7.87/1.48    introduced(choice_axiom,[])).
% 7.87/1.48  
% 7.87/1.48  fof(f56,plain,(
% 7.87/1.48    ! [X0,X1] : (((k1_wellord2(X0) = X1 | ((~r1_tarski(sK5(X0,X1),sK6(X0,X1)) | ~r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1)) & (r1_tarski(sK5(X0,X1),sK6(X0,X1)) | r2_hidden(k4_tarski(sK5(X0,X1),sK6(X0,X1)),X1)) & r2_hidden(sK6(X0,X1),X0) & r2_hidden(sK5(X0,X1),X0)) | k3_relat_1(X1) != X0) & ((! [X4,X5] : (((r2_hidden(k4_tarski(X4,X5),X1) | ~r1_tarski(X4,X5)) & (r1_tarski(X4,X5) | ~r2_hidden(k4_tarski(X4,X5),X1))) | ~r2_hidden(X5,X0) | ~r2_hidden(X4,X0)) & k3_relat_1(X1) = X0) | k1_wellord2(X0) != X1)) | ~v1_relat_1(X1))),
% 7.87/1.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f54,f55])).
% 7.87/1.48  
% 7.87/1.48  fof(f83,plain,(
% 7.87/1.48    ( ! [X0,X1] : (k3_relat_1(X1) = X0 | k1_wellord2(X0) != X1 | ~v1_relat_1(X1)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f56])).
% 7.87/1.48  
% 7.87/1.48  fof(f112,plain,(
% 7.87/1.48    ( ! [X0] : (k3_relat_1(k1_wellord2(X0)) = X0 | ~v1_relat_1(k1_wellord2(X0))) )),
% 7.87/1.48    inference(equality_resolution,[],[f83])).
% 7.87/1.48  
% 7.87/1.48  fof(f11,axiom,(
% 7.87/1.48    ! [X0] : (v3_ordinal1(X0) => v2_wellord1(k1_wellord2(X0)))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f30,plain,(
% 7.87/1.48    ! [X0] : (v2_wellord1(k1_wellord2(X0)) | ~v3_ordinal1(X0))),
% 7.87/1.48    inference(ennf_transformation,[],[f11])).
% 7.87/1.48  
% 7.87/1.48  fof(f92,plain,(
% 7.87/1.48    ( ! [X0] : (v2_wellord1(k1_wellord2(X0)) | ~v3_ordinal1(X0)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f30])).
% 7.87/1.48  
% 7.87/1.48  fof(f62,plain,(
% 7.87/1.48    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f37])).
% 7.87/1.48  
% 7.87/1.48  fof(f96,plain,(
% 7.87/1.48    r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))),
% 7.87/1.48    inference(cnf_transformation,[],[f59])).
% 7.87/1.48  
% 7.87/1.48  fof(f6,axiom,(
% 7.87/1.48    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r4_wellord1(X0,X1) => r4_wellord1(X1,X0))))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f22,plain,(
% 7.87/1.48    ! [X0] : (! [X1] : ((r4_wellord1(X1,X0) | ~r4_wellord1(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(ennf_transformation,[],[f6])).
% 7.87/1.48  
% 7.87/1.48  fof(f23,plain,(
% 7.87/1.48    ! [X0] : (! [X1] : (r4_wellord1(X1,X0) | ~r4_wellord1(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(flattening,[],[f22])).
% 7.87/1.48  
% 7.87/1.48  fof(f81,plain,(
% 7.87/1.48    ( ! [X0,X1] : (r4_wellord1(X1,X0) | ~r4_wellord1(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f23])).
% 7.87/1.48  
% 7.87/1.48  fof(f12,axiom,(
% 7.87/1.48    ! [X0,X1] : (r1_tarski(X0,X1) => k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f31,plain,(
% 7.87/1.48    ! [X0,X1] : (k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0) | ~r1_tarski(X0,X1))),
% 7.87/1.48    inference(ennf_transformation,[],[f12])).
% 7.87/1.48  
% 7.87/1.48  fof(f93,plain,(
% 7.87/1.48    ( ! [X0,X1] : (k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0) | ~r1_tarski(X0,X1)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f31])).
% 7.87/1.48  
% 7.87/1.48  fof(f7,axiom,(
% 7.87/1.48    ! [X0] : (v1_relat_1(X0) => (v2_wellord1(X0) => ! [X1] : ~(r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) & r2_hidden(X1,k3_relat_1(X0)))))),
% 7.87/1.48    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.87/1.48  
% 7.87/1.48  fof(f24,plain,(
% 7.87/1.48    ! [X0] : ((! [X1] : (~r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) | ~r2_hidden(X1,k3_relat_1(X0))) | ~v2_wellord1(X0)) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(ennf_transformation,[],[f7])).
% 7.87/1.48  
% 7.87/1.48  fof(f25,plain,(
% 7.87/1.48    ! [X0] : (! [X1] : (~r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) | ~r2_hidden(X1,k3_relat_1(X0))) | ~v2_wellord1(X0) | ~v1_relat_1(X0))),
% 7.87/1.48    inference(flattening,[],[f24])).
% 7.87/1.48  
% 7.87/1.48  fof(f82,plain,(
% 7.87/1.48    ( ! [X0,X1] : (~r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) | ~r2_hidden(X1,k3_relat_1(X0)) | ~v2_wellord1(X0) | ~v1_relat_1(X0)) )),
% 7.87/1.48    inference(cnf_transformation,[],[f25])).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1,plain,
% 7.87/1.48      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 7.87/1.48      inference(cnf_transformation,[],[f61]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1097,plain,
% 7.87/1.48      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 7.87/1.48      | r1_tarski(X0,X1) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6,plain,
% 7.87/1.48      ( r2_hidden(X0,X1)
% 7.87/1.48      | r2_hidden(X1,X0)
% 7.87/1.48      | ~ v3_ordinal1(X1)
% 7.87/1.48      | ~ v3_ordinal1(X0)
% 7.87/1.48      | X1 = X0 ),
% 7.87/1.48      inference(cnf_transformation,[],[f66]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1093,plain,
% 7.87/1.48      ( X0 = X1
% 7.87/1.48      | r2_hidden(X1,X0) = iProver_top
% 7.87/1.48      | r2_hidden(X0,X1) = iProver_top
% 7.87/1.48      | v3_ordinal1(X1) != iProver_top
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_37,negated_conjecture,
% 7.87/1.48      ( v3_ordinal1(sK7) ),
% 7.87/1.48      inference(cnf_transformation,[],[f94]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1064,plain,
% 7.87/1.48      ( v3_ordinal1(sK7) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_36,negated_conjecture,
% 7.87/1.48      ( v3_ordinal1(sK8) ),
% 7.87/1.48      inference(cnf_transformation,[],[f95]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1065,plain,
% 7.87/1.48      ( v3_ordinal1(sK8) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_31,plain,
% 7.87/1.48      ( ~ r2_hidden(X0,X1)
% 7.87/1.48      | ~ v3_ordinal1(X1)
% 7.87/1.48      | ~ v3_ordinal1(X0)
% 7.87/1.48      | k1_wellord1(k1_wellord2(X1),X0) = X0 ),
% 7.87/1.48      inference(cnf_transformation,[],[f91]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1069,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(X0),X1) = X1
% 7.87/1.48      | r2_hidden(X1,X0) != iProver_top
% 7.87/1.48      | v3_ordinal1(X1) != iProver_top
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2768,plain,
% 7.87/1.48      ( X0 = X1
% 7.87/1.48      | k1_wellord1(k1_wellord2(X0),X1) = X1
% 7.87/1.48      | r2_hidden(X0,X1) = iProver_top
% 7.87/1.48      | v3_ordinal1(X1) != iProver_top
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1093,c_1069]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6088,plain,
% 7.87/1.48      ( X0 = X1
% 7.87/1.48      | k1_wellord1(k1_wellord2(X0),X1) = X1
% 7.87/1.48      | k1_wellord1(k1_wellord2(X1),X0) = X0
% 7.87/1.48      | v3_ordinal1(X1) != iProver_top
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_2768,c_1069]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6529,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(X0),sK8) = sK8
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK8),X0) = X0
% 7.87/1.48      | sK8 = X0
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1065,c_6088]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6734,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | sK8 = sK7 ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1064,c_6529]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_34,negated_conjecture,
% 7.87/1.48      ( sK7 != sK8 ),
% 7.87/1.48      inference(cnf_transformation,[],[f97]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_5,plain,
% 7.87/1.48      ( r1_tarski(X0,X0) ),
% 7.87/1.48      inference(cnf_transformation,[],[f99]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_120,plain,
% 7.87/1.48      ( r1_tarski(sK7,sK7) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_5]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_3,plain,
% 7.87/1.48      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 7.87/1.48      inference(cnf_transformation,[],[f65]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_124,plain,
% 7.87/1.48      ( ~ r1_tarski(sK7,sK7) | sK7 = sK7 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_3]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_498,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1497,plain,
% 7.87/1.48      ( sK8 != X0 | sK7 != X0 | sK7 = sK8 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_498]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1498,plain,
% 7.87/1.48      ( sK8 != sK7 | sK7 = sK8 | sK7 != sK7 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_1497]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6741,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_6734,c_34,c_120,c_124,c_1498]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6742,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_6741]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_11,plain,
% 7.87/1.48      ( ~ r2_hidden(X0,k1_wellord1(X1,X2))
% 7.87/1.48      | r2_hidden(k4_tarski(X0,X2),X1)
% 7.87/1.48      | ~ v1_relat_1(X1) ),
% 7.87/1.48      inference(cnf_transformation,[],[f101]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1088,plain,
% 7.87/1.48      ( r2_hidden(X0,k1_wellord1(X1,X2)) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,X2),X1) = iProver_top
% 7.87/1.48      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6748,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_6742,c_1088]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_30,plain,
% 7.87/1.48      ( v1_relat_1(k1_wellord2(X0)) ),
% 7.87/1.48      inference(cnf_transformation,[],[f90]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_3155,plain,
% 7.87/1.48      ( v1_relat_1(k1_wellord2(sK8)) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_30]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_3156,plain,
% 7.87/1.48      ( v1_relat_1(k1_wellord2(sK8)) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_3155]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_7317,plain,
% 7.87/1.48      ( r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_6748,c_3156]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_7318,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_7317]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_20,plain,
% 7.87/1.48      ( ~ r2_hidden(X0,k3_relat_1(X1))
% 7.87/1.48      | r2_hidden(X2,k3_relat_1(X1))
% 7.87/1.48      | ~ r2_hidden(k4_tarski(X2,X0),X1)
% 7.87/1.48      | ~ r1_tarski(k3_relat_1(X1),k3_relat_1(X1))
% 7.87/1.48      | ~ v2_wellord1(X1)
% 7.87/1.48      | ~ v1_relat_1(X1) ),
% 7.87/1.48      inference(cnf_transformation,[],[f105]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1079,plain,
% 7.87/1.48      ( r2_hidden(X0,k3_relat_1(X1)) != iProver_top
% 7.87/1.48      | r2_hidden(X2,k3_relat_1(X1)) = iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X2,X0),X1) != iProver_top
% 7.87/1.48      | r1_tarski(k3_relat_1(X1),k3_relat_1(X1)) != iProver_top
% 7.87/1.48      | v2_wellord1(X1) != iProver_top
% 7.87/1.48      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1094,plain,
% 7.87/1.48      ( r1_tarski(X0,X0) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1321,plain,
% 7.87/1.48      ( r2_hidden(X0,k3_relat_1(X1)) != iProver_top
% 7.87/1.48      | r2_hidden(X2,k3_relat_1(X1)) = iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X2,X0),X1) != iProver_top
% 7.87/1.48      | v2_wellord1(X1) != iProver_top
% 7.87/1.48      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.48      inference(forward_subsumption_resolution,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_1079,c_1094]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_9445,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(X0,k3_relat_1(k1_wellord2(sK8))) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_7318,c_1321]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_29,plain,
% 7.87/1.48      ( ~ v1_relat_1(k1_wellord2(X0))
% 7.87/1.48      | k3_relat_1(k1_wellord2(X0)) = X0 ),
% 7.87/1.48      inference(cnf_transformation,[],[f112]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_264,plain,
% 7.87/1.48      ( k3_relat_1(k1_wellord2(X0)) = X0 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_29,c_30]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_9467,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(X0,sK8) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_9445,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_38,plain,
% 7.87/1.48      ( v3_ordinal1(sK7) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_39,plain,
% 7.87/1.48      ( v3_ordinal1(sK8) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1701,plain,
% 7.87/1.48      ( ~ r2_hidden(sK8,sK7)
% 7.87/1.48      | ~ v3_ordinal1(sK8)
% 7.87/1.48      | ~ v3_ordinal1(sK7)
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_31]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1702,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(sK8,sK7) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK8) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK7) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_1701]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_4672,plain,
% 7.87/1.48      ( r2_hidden(sK8,sK7)
% 7.87/1.48      | r2_hidden(sK7,sK8)
% 7.87/1.48      | ~ v3_ordinal1(sK8)
% 7.87/1.48      | ~ v3_ordinal1(sK7) ),
% 7.87/1.48      inference(resolution,[status(thm)],[c_6,c_34]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_4971,plain,
% 7.87/1.48      ( r2_hidden(sK8,sK7) | r2_hidden(sK7,sK8) ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_4672,c_37,c_36]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_4973,plain,
% 7.87/1.48      ( r2_hidden(sK8,sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_4971]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_32,plain,
% 7.87/1.48      ( v2_wellord1(k1_wellord2(X0)) | ~ v3_ordinal1(X0) ),
% 7.87/1.48      inference(cnf_transformation,[],[f92]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_13855,plain,
% 7.87/1.48      ( v2_wellord1(k1_wellord2(sK8)) | ~ v3_ordinal1(sK8) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_32]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_13856,plain,
% 7.87/1.48      ( v2_wellord1(k1_wellord2(sK8)) = iProver_top
% 7.87/1.48      | v3_ordinal1(sK8) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_13855]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_17787,plain,
% 7.87/1.48      ( r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK8) = iProver_top
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_9467,c_38,c_39,c_1702,c_3156,c_4973,c_13856]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_17788,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(X0,sK8) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_17787]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_17796,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r2_hidden(sK0(sK7,X0),sK8) = iProver_top
% 7.87/1.48      | r1_tarski(sK7,X0) = iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1097,c_17788]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_0,plain,
% 7.87/1.48      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 7.87/1.48      inference(cnf_transformation,[],[f62]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1098,plain,
% 7.87/1.48      ( r2_hidden(sK0(X0,X1),X1) != iProver_top
% 7.87/1.48      | r1_tarski(X0,X1) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18352,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r1_tarski(sK7,sK8) = iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_17796,c_1098]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1095,plain,
% 7.87/1.48      ( X0 = X1
% 7.87/1.48      | r1_tarski(X1,X0) != iProver_top
% 7.87/1.48      | r1_tarski(X0,X1) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18581,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | sK8 = sK7
% 7.87/1.48      | r1_tarski(sK8,sK7) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_18352,c_1095]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_50,plain,
% 7.87/1.48      ( v1_relat_1(k1_wellord2(X0)) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_52,plain,
% 7.87/1.48      ( v1_relat_1(k1_wellord2(sK7)) = iProver_top ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_50]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_35,negated_conjecture,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) ),
% 7.87/1.48      inference(cnf_transformation,[],[f96]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1066,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21,plain,
% 7.87/1.48      ( ~ r4_wellord1(X0,X1)
% 7.87/1.48      | r4_wellord1(X1,X0)
% 7.87/1.48      | ~ v1_relat_1(X0)
% 7.87/1.48      | ~ v1_relat_1(X1) ),
% 7.87/1.48      inference(cnf_transformation,[],[f81]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1078,plain,
% 7.87/1.48      ( r4_wellord1(X0,X1) != iProver_top
% 7.87/1.48      | r4_wellord1(X1,X0) = iProver_top
% 7.87/1.48      | v1_relat_1(X0) != iProver_top
% 7.87/1.48      | v1_relat_1(X1) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2444,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) = iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1066,c_1078]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_33,plain,
% 7.87/1.48      ( ~ r1_tarski(X0,X1)
% 7.87/1.48      | k2_wellord1(k1_wellord2(X1),X0) = k1_wellord2(X0) ),
% 7.87/1.48      inference(cnf_transformation,[],[f93]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1067,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(X0),X1) = k1_wellord2(X1)
% 7.87/1.48      | r1_tarski(X1,X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18584,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(sK8),sK7) = k1_wellord2(sK7)
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_18352,c_1067]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22,plain,
% 7.87/1.48      ( ~ r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1)))
% 7.87/1.48      | ~ r2_hidden(X1,k3_relat_1(X0))
% 7.87/1.48      | ~ v2_wellord1(X0)
% 7.87/1.48      | ~ v1_relat_1(X0) ),
% 7.87/1.48      inference(cnf_transformation,[],[f82]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1077,plain,
% 7.87/1.48      ( r4_wellord1(X0,k2_wellord1(X0,k1_wellord1(X0,X1))) != iProver_top
% 7.87/1.48      | r2_hidden(X1,k3_relat_1(X0)) != iProver_top
% 7.87/1.48      | v2_wellord1(X0) != iProver_top
% 7.87/1.48      | v1_relat_1(X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6746,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_6742,c_1077]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_6786,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_6746,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_14119,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_6786,c_38,c_39,c_1702,c_3156,c_4973,c_13856]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_14120,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_14119]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18851,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_18584,c_14120]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18854,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK7),sK8) = sK8 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_18581,c_52,c_2444,c_3156,c_18851]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18874,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_18854,c_1088]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_19532,plain,
% 7.87/1.48      ( r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK8) != iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_18874,c_52]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_19533,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK8),k1_wellord2(sK7)) = iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_19532]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_19543,plain,
% 7.87/1.48      ( r2_hidden(X0,k3_relat_1(k1_wellord2(sK7))) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(sK8,k3_relat_1(k1_wellord2(sK7))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK7)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_19533,c_1321]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_19564,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK8,sK7) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK7)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_19543,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_44,plain,
% 7.87/1.48      ( v2_wellord1(k1_wellord2(X0)) = iProver_top
% 7.87/1.48      | v3_ordinal1(X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_46,plain,
% 7.87/1.48      ( v2_wellord1(k1_wellord2(sK7)) = iProver_top
% 7.87/1.48      | v3_ordinal1(sK7) != iProver_top ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_44]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21133,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK8,sK7) != iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_19564,c_38,c_46,c_52]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21145,plain,
% 7.87/1.48      ( sK8 = sK7
% 7.87/1.48      | r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) = iProver_top
% 7.87/1.48      | v3_ordinal1(sK8) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK7) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1093,c_21133]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21175,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) = iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_21145,c_38,c_39,c_34,c_120,c_124,c_1498]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21182,plain,
% 7.87/1.48      ( r2_hidden(sK0(sK8,X0),sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) = iProver_top
% 7.87/1.48      | r1_tarski(sK8,X0) = iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1097,c_21175]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_40,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_509,plain,
% 7.87/1.48      ( X0 != X1 | k1_wellord2(X0) = k1_wellord2(X1) ),
% 7.87/1.48      theory(equality) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_522,plain,
% 7.87/1.48      ( k1_wellord2(sK7) = k1_wellord2(sK7) | sK7 != sK7 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_509]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1908,plain,
% 7.87/1.48      ( ~ r2_hidden(sK0(sK8,sK7),sK7) | r1_tarski(sK8,sK7) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_0]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1912,plain,
% 7.87/1.48      ( r2_hidden(sK0(sK8,sK7),sK7) != iProver_top
% 7.87/1.48      | r1_tarski(sK8,sK7) = iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_1908]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_507,plain,
% 7.87/1.48      ( ~ r4_wellord1(X0,X1) | r4_wellord1(X2,X3) | X2 != X0 | X3 != X1 ),
% 7.87/1.48      theory(equality) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1552,plain,
% 7.87/1.48      ( r4_wellord1(X0,X1)
% 7.87/1.48      | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
% 7.87/1.48      | X1 != k1_wellord2(sK8)
% 7.87/1.48      | X0 != k1_wellord2(sK7) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_507]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1737,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),X0)
% 7.87/1.48      | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
% 7.87/1.48      | X0 != k1_wellord2(sK8)
% 7.87/1.48      | k1_wellord2(sK7) != k1_wellord2(sK7) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_1552]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2070,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(X0),sK8))
% 7.87/1.48      | ~ r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8))
% 7.87/1.48      | k2_wellord1(k1_wellord2(X0),sK8) != k1_wellord2(sK8)
% 7.87/1.48      | k1_wellord2(sK7) != k1_wellord2(sK7) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_1737]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2072,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(X0),sK8) != k1_wellord2(sK8)
% 7.87/1.48      | k1_wellord2(sK7) != k1_wellord2(sK7)
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(X0),sK8)) = iProver_top
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_2070]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2074,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(sK7),sK8) != k1_wellord2(sK8)
% 7.87/1.48      | k1_wellord2(sK7) != k1_wellord2(sK7)
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) = iProver_top
% 7.87/1.48      | r4_wellord1(k1_wellord2(sK7),k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_2072]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2071,plain,
% 7.87/1.48      ( ~ r1_tarski(sK8,X0)
% 7.87/1.48      | k2_wellord1(k1_wellord2(X0),sK8) = k1_wellord2(sK8) ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_33]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2076,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(X0),sK8) = k1_wellord2(sK8)
% 7.87/1.48      | r1_tarski(sK8,X0) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_2071]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_2078,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(sK7),sK8) = k1_wellord2(sK8)
% 7.87/1.48      | r1_tarski(sK8,sK7) != iProver_top ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_2076]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18872,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
% 7.87/1.48      | r2_hidden(sK8,k3_relat_1(k1_wellord2(sK7))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK7)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_18854,c_1077]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_18953,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
% 7.87/1.48      | r2_hidden(sK8,sK7) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK7)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_18872,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_20082,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK7),k2_wellord1(k1_wellord2(sK7),sK8)) != iProver_top
% 7.87/1.48      | r2_hidden(sK8,sK7) != iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_18953,c_38,c_46,c_52]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_21676,plain,
% 7.87/1.48      ( r2_hidden(sK0(sK8,sK7),sK7) = iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) = iProver_top
% 7.87/1.48      | r1_tarski(sK8,sK7) = iProver_top ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_21182]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22408,plain,
% 7.87/1.48      ( r2_hidden(sK7,sK8) = iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_21182,c_40,c_120,c_124,c_522,c_1912,c_2074,c_2078,
% 7.87/1.48                 c_4973,c_20082,c_21676]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22414,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
% 7.87/1.48      | v3_ordinal1(sK8) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK7) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_22408,c_1069]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1930,plain,
% 7.87/1.48      ( ~ r2_hidden(sK7,sK8)
% 7.87/1.48      | ~ v3_ordinal1(sK8)
% 7.87/1.48      | ~ v3_ordinal1(sK7)
% 7.87/1.48      | k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
% 7.87/1.48      inference(instantiation,[status(thm)],[c_31]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_1931,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7
% 7.87/1.48      | r2_hidden(sK7,sK8) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK8) != iProver_top
% 7.87/1.48      | v3_ordinal1(sK7) != iProver_top ),
% 7.87/1.48      inference(predicate_to_equality,[status(thm)],[c_1930]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22968,plain,
% 7.87/1.48      ( k1_wellord1(k1_wellord2(sK8),sK7) = sK7 ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_22414,c_38,c_39,c_40,c_120,c_124,c_522,c_1912,c_1931,
% 7.87/1.48                 c_2074,c_2078,c_4973,c_20082,c_21676]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22987,plain,
% 7.87/1.48      ( r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_22968,c_1088]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_23912,plain,
% 7.87/1.48      ( r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_22987,c_3156]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_23913,plain,
% 7.87/1.48      ( r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(k4_tarski(X0,sK7),k1_wellord2(sK8)) = iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_23912]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_23921,plain,
% 7.87/1.48      ( r2_hidden(X0,k3_relat_1(k1_wellord2(sK8))) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_23913,c_1321]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_23942,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_23921,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_25635,plain,
% 7.87/1.48      ( r2_hidden(X0,sK7) != iProver_top
% 7.87/1.48      | r2_hidden(X0,sK8) = iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_23942,c_39,c_40,c_120,c_124,c_522,c_1912,c_2074,
% 7.87/1.48                 c_2078,c_3156,c_4973,c_13856,c_20082,c_21676]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_25636,plain,
% 7.87/1.48      ( r2_hidden(X0,sK8) = iProver_top
% 7.87/1.48      | r2_hidden(X0,sK7) != iProver_top ),
% 7.87/1.48      inference(renaming,[status(thm)],[c_25635]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_25641,plain,
% 7.87/1.48      ( r2_hidden(sK0(sK7,X0),sK8) = iProver_top
% 7.87/1.48      | r1_tarski(sK7,X0) = iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_1097,c_25636]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_26164,plain,
% 7.87/1.48      ( r1_tarski(sK7,sK8) = iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_25641,c_1098]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_26379,plain,
% 7.87/1.48      ( k2_wellord1(k1_wellord2(sK8),sK7) = k1_wellord2(sK7) ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_26164,c_1067]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_22985,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,k3_relat_1(k1_wellord2(sK8))) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(superposition,[status(thm)],[c_22968,c_1077]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_23066,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top
% 7.87/1.48      | r2_hidden(sK7,sK8) != iProver_top
% 7.87/1.48      | v2_wellord1(k1_wellord2(sK8)) != iProver_top
% 7.87/1.48      | v1_relat_1(k1_wellord2(sK8)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_22985,c_264]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_24434,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k2_wellord1(k1_wellord2(sK8),sK7)) != iProver_top ),
% 7.87/1.48      inference(global_propositional_subsumption,
% 7.87/1.48                [status(thm)],
% 7.87/1.48                [c_23066,c_39,c_40,c_120,c_124,c_522,c_1912,c_2074,
% 7.87/1.48                 c_2078,c_3156,c_4973,c_13856,c_20082,c_21676]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(c_26718,plain,
% 7.87/1.48      ( r4_wellord1(k1_wellord2(sK8),k1_wellord2(sK7)) != iProver_top ),
% 7.87/1.48      inference(demodulation,[status(thm)],[c_26379,c_24434]) ).
% 7.87/1.48  
% 7.87/1.48  cnf(contradiction,plain,
% 7.87/1.48      ( $false ),
% 7.87/1.48      inference(minisat,[status(thm)],[c_26718,c_3156,c_2444,c_52]) ).
% 7.87/1.48  
% 7.87/1.48  
% 7.87/1.48  % SZS output end CNFRefutation for theBenchmark.p
% 7.87/1.48  
% 7.87/1.48  ------                               Statistics
% 7.87/1.48  
% 7.87/1.48  ------ Selected
% 7.87/1.48  
% 7.87/1.48  total_time:                             0.72
% 7.87/1.48  
%------------------------------------------------------------------------------
