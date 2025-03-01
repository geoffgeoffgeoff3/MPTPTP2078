%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:54:34 EST 2020

% Result     : Theorem 2.47s
% Output     : CNFRefutation 2.47s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 556 expanded)
%              Number of clauses        :   71 ( 231 expanded)
%              Number of leaves         :   11 ( 117 expanded)
%              Depth                    :   20
%              Number of atoms          :  513 (2450 expanded)
%              Number of equality atoms :  227 ( 635 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X1,X2,X0] :
      ( sP0(X1,X2,X0)
    <=> ( ! [X3,X4] :
            ( r2_hidden(k4_tarski(X3,X4),X0)
          <=> ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
              & r2_hidden(X4,k3_relat_1(X0))
              & r2_hidden(X3,k3_relat_1(X0)) ) )
        & v2_funct_1(X2)
        & k3_relat_1(X1) = k2_relat_1(X2)
        & k3_relat_1(X0) = k1_relat_1(X2) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f20,plain,(
    ! [X1,X2,X0] :
      ( ( sP0(X1,X2,X0)
        | ? [X3,X4] :
            ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
              | ~ r2_hidden(X4,k3_relat_1(X0))
              | ~ r2_hidden(X3,k3_relat_1(X0))
              | ~ r2_hidden(k4_tarski(X3,X4),X0) )
            & ( ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                & r2_hidden(X4,k3_relat_1(X0))
                & r2_hidden(X3,k3_relat_1(X0)) )
              | r2_hidden(k4_tarski(X3,X4),X0) ) )
        | ~ v2_funct_1(X2)
        | k3_relat_1(X1) != k2_relat_1(X2)
        | k3_relat_1(X0) != k1_relat_1(X2) )
      & ( ( ! [X3,X4] :
              ( ( r2_hidden(k4_tarski(X3,X4),X0)
                | ~ r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                | ~ r2_hidden(X4,k3_relat_1(X0))
                | ~ r2_hidden(X3,k3_relat_1(X0)) )
              & ( ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                  & r2_hidden(X4,k3_relat_1(X0))
                  & r2_hidden(X3,k3_relat_1(X0)) )
                | ~ r2_hidden(k4_tarski(X3,X4),X0) ) )
          & v2_funct_1(X2)
          & k3_relat_1(X1) = k2_relat_1(X2)
          & k3_relat_1(X0) = k1_relat_1(X2) )
        | ~ sP0(X1,X2,X0) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f21,plain,(
    ! [X1,X2,X0] :
      ( ( sP0(X1,X2,X0)
        | ? [X3,X4] :
            ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
              | ~ r2_hidden(X4,k3_relat_1(X0))
              | ~ r2_hidden(X3,k3_relat_1(X0))
              | ~ r2_hidden(k4_tarski(X3,X4),X0) )
            & ( ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                & r2_hidden(X4,k3_relat_1(X0))
                & r2_hidden(X3,k3_relat_1(X0)) )
              | r2_hidden(k4_tarski(X3,X4),X0) ) )
        | ~ v2_funct_1(X2)
        | k3_relat_1(X1) != k2_relat_1(X2)
        | k3_relat_1(X0) != k1_relat_1(X2) )
      & ( ( ! [X3,X4] :
              ( ( r2_hidden(k4_tarski(X3,X4),X0)
                | ~ r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                | ~ r2_hidden(X4,k3_relat_1(X0))
                | ~ r2_hidden(X3,k3_relat_1(X0)) )
              & ( ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                  & r2_hidden(X4,k3_relat_1(X0))
                  & r2_hidden(X3,k3_relat_1(X0)) )
                | ~ r2_hidden(k4_tarski(X3,X4),X0) ) )
          & v2_funct_1(X2)
          & k3_relat_1(X1) = k2_relat_1(X2)
          & k3_relat_1(X0) = k1_relat_1(X2) )
        | ~ sP0(X1,X2,X0) ) ) ),
    inference(flattening,[],[f20])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ? [X3,X4] :
            ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0)
              | ~ r2_hidden(X4,k3_relat_1(X2))
              | ~ r2_hidden(X3,k3_relat_1(X2))
              | ~ r2_hidden(k4_tarski(X3,X4),X2) )
            & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0)
                & r2_hidden(X4,k3_relat_1(X2))
                & r2_hidden(X3,k3_relat_1(X2)) )
              | r2_hidden(k4_tarski(X3,X4),X2) ) )
        | ~ v2_funct_1(X1)
        | k3_relat_1(X0) != k2_relat_1(X1)
        | k3_relat_1(X2) != k1_relat_1(X1) )
      & ( ( ! [X5,X6] :
              ( ( r2_hidden(k4_tarski(X5,X6),X2)
                | ~ r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0)
                | ~ r2_hidden(X6,k3_relat_1(X2))
                | ~ r2_hidden(X5,k3_relat_1(X2)) )
              & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0)
                  & r2_hidden(X6,k3_relat_1(X2))
                  & r2_hidden(X5,k3_relat_1(X2)) )
                | ~ r2_hidden(k4_tarski(X5,X6),X2) ) )
          & v2_funct_1(X1)
          & k3_relat_1(X0) = k2_relat_1(X1)
          & k3_relat_1(X2) = k1_relat_1(X1) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(rectify,[],[f21])).

fof(f23,plain,(
    ! [X2,X1,X0] :
      ( ? [X3,X4] :
          ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0)
            | ~ r2_hidden(X4,k3_relat_1(X2))
            | ~ r2_hidden(X3,k3_relat_1(X2))
            | ~ r2_hidden(k4_tarski(X3,X4),X2) )
          & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0)
              & r2_hidden(X4,k3_relat_1(X2))
              & r2_hidden(X3,k3_relat_1(X2)) )
            | r2_hidden(k4_tarski(X3,X4),X2) ) )
     => ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
          | ~ r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
          | ~ r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
          | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) )
        & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
            & r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
            & r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) )
          | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ( ( ~ r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
            | ~ r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
            | ~ r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
            | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) )
          & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
              & r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
              & r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) )
            | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) ) )
        | ~ v2_funct_1(X1)
        | k3_relat_1(X0) != k2_relat_1(X1)
        | k3_relat_1(X2) != k1_relat_1(X1) )
      & ( ( ! [X5,X6] :
              ( ( r2_hidden(k4_tarski(X5,X6),X2)
                | ~ r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0)
                | ~ r2_hidden(X6,k3_relat_1(X2))
                | ~ r2_hidden(X5,k3_relat_1(X2)) )
              & ( ( r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0)
                  & r2_hidden(X6,k3_relat_1(X2))
                  & r2_hidden(X5,k3_relat_1(X2)) )
                | ~ r2_hidden(k4_tarski(X5,X6),X2) ) )
          & v2_funct_1(X1)
          & k3_relat_1(X0) = k2_relat_1(X1)
          & k3_relat_1(X2) = k1_relat_1(X1) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f22,f23])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
      | ~ v2_funct_1(X1)
      | k3_relat_1(X0) != k2_relat_1(X1)
      | k3_relat_1(X2) != k1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f30,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f4,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(k4_tarski(X0,X1),X2)
       => ( r2_hidden(X1,k3_relat_1(X2))
          & r2_hidden(X0,k3_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X1,k3_relat_1(X2))
        & r2_hidden(X0,k3_relat_1(X2)) )
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X1,k3_relat_1(X2))
        & r2_hidden(X0,k3_relat_1(X2)) )
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f9])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,k3_relat_1(X2))
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f7,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f14,plain,(
    ? [X0] :
      ( ~ r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0)))
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,
    ( ? [X0] :
        ( ~ r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0)))
        & v1_relat_1(X0) )
   => ( ~ r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4)))
      & v1_relat_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ~ r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4)))
    & v1_relat_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f14,f25])).

fof(f50,plain,(
    v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f26])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : v1_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( ( v1_funct_1(X2)
                & v1_relat_1(X2) )
             => ( r3_wellord1(X0,X1,X2)
              <=> ( ! [X3,X4] :
                      ( r2_hidden(k4_tarski(X3,X4),X0)
                    <=> ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                        & r2_hidden(X4,k3_relat_1(X0))
                        & r2_hidden(X3,k3_relat_1(X0)) ) )
                  & v2_funct_1(X2)
                  & k3_relat_1(X1) = k2_relat_1(X2)
                  & k3_relat_1(X0) = k1_relat_1(X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_wellord1(X0,X1,X2)
              <=> ( ! [X3,X4] :
                      ( r2_hidden(k4_tarski(X3,X4),X0)
                    <=> ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                        & r2_hidden(X4,k3_relat_1(X0))
                        & r2_hidden(X3,k3_relat_1(X0)) ) )
                  & v2_funct_1(X2)
                  & k3_relat_1(X1) = k2_relat_1(X2)
                  & k3_relat_1(X0) = k1_relat_1(X2) ) )
              | ~ v1_funct_1(X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_wellord1(X0,X1,X2)
              <=> ( ! [X3,X4] :
                      ( r2_hidden(k4_tarski(X3,X4),X0)
                    <=> ( r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1)
                        & r2_hidden(X4,k3_relat_1(X0))
                        & r2_hidden(X3,k3_relat_1(X0)) ) )
                  & v2_funct_1(X2)
                  & k3_relat_1(X1) = k2_relat_1(X2)
                  & k3_relat_1(X0) = k1_relat_1(X2) ) )
              | ~ v1_funct_1(X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f12])).

fof(f16,plain,(
    ! [X0,X2,X1] :
      ( ( r3_wellord1(X0,X1,X2)
      <=> sP0(X1,X2,X0) )
      | ~ sP1(X0,X2,X1) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( sP1(X0,X2,X1)
              | ~ v1_funct_1(X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(definition_folding,[],[f13,f16,f15])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( sP1(X0,X2,X1)
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f31,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0,X2,X1] :
      ( ( ( r3_wellord1(X0,X1,X2)
          | ~ sP0(X1,X2,X0) )
        & ( sP0(X1,X2,X0)
          | ~ r3_wellord1(X0,X1,X2) ) )
      | ~ sP1(X0,X2,X1) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( ( r3_wellord1(X0,X2,X1)
          | ~ sP0(X2,X1,X0) )
        & ( sP0(X2,X1,X0)
          | ~ r3_wellord1(X0,X2,X1) ) )
      | ~ sP1(X0,X1,X2) ) ),
    inference(rectify,[],[f18])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r3_wellord1(X0,X2,X1)
      | ~ sP0(X2,X1,X0)
      | ~ sP1(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f51,plain,(
    ~ r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4))) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k1_funct_1(k6_relat_1(X1),X0) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( k1_funct_1(k6_relat_1(X1),X0) = X0
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k1_funct_1(k6_relat_1(X1),X0) = X0
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
      | ~ v2_funct_1(X1)
      | k3_relat_1(X0) != k2_relat_1(X1)
      | k3_relat_1(X2) != k1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
      | ~ v2_funct_1(X1)
      | k3_relat_1(X0) != k2_relat_1(X1)
      | k3_relat_1(X2) != k1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,k3_relat_1(X2))
      | ~ r2_hidden(k4_tarski(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | ~ r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
      | ~ r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
      | ~ r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
      | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
      | ~ v2_funct_1(X1)
      | k3_relat_1(X0) != k2_relat_1(X1)
      | k3_relat_1(X2) != k1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_3,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_13,plain,
    ( sP0(X0,X1,X2)
    | r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
    | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
    | ~ v2_funct_1(X1)
    | k1_relat_1(X1) != k3_relat_1(X2)
    | k2_relat_1(X1) != k3_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_2618,plain,
    ( k1_relat_1(X0) != k3_relat_1(X1)
    | k2_relat_1(X0) != k3_relat_1(X2)
    | sP0(X2,X0,X1) = iProver_top
    | r2_hidden(sK3(X2,X0,X1),k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3785,plain,
    ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
    | k3_relat_1(X2) != X0
    | sP0(X1,k6_relat_1(X0),X2) = iProver_top
    | r2_hidden(sK3(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
    | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_2618])).

cnf(c_2,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_3786,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
    | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3785,c_2])).

cnf(c_6,plain,
    ( v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_2622,plain,
    ( v2_funct_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_3843,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3786,c_2622])).

cnf(c_3847,plain,
    ( k3_relat_1(X0) != k3_relat_1(X1)
    | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
    | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3843])).

cnf(c_4504,plain,
    ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
    | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3847])).

cnf(c_0,plain,
    ( r2_hidden(X0,k3_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_24,negated_conjecture,
    ( v1_relat_1(sK4) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_354,plain,
    ( r2_hidden(X0,k3_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_24])).

cnf(c_355,plain,
    ( r2_hidden(X0,k3_relat_1(sK4))
    | ~ r2_hidden(k4_tarski(X1,X0),sK4) ),
    inference(unflattening,[status(thm)],[c_354])).

cnf(c_2605,plain,
    ( r2_hidden(X0,k3_relat_1(sK4)) = iProver_top
    | r2_hidden(k4_tarski(X1,X0),sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_355])).

cnf(c_4990,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
    | r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_4504,c_2605])).

cnf(c_4,plain,
    ( v1_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_22,plain,
    ( sP1(X0,X1,X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_261,plain,
    ( sP1(X0,X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2)
    | k6_relat_1(X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_22])).

cnf(c_262,plain,
    ( sP1(X0,k6_relat_1(X1),X2)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k6_relat_1(X1)) ),
    inference(unflattening,[status(thm)],[c_261])).

cnf(c_5,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_274,plain,
    ( sP1(X0,k6_relat_1(X1),X2)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_262,c_5])).

cnf(c_9,plain,
    ( ~ sP1(X0,X1,X2)
    | ~ sP0(X2,X1,X0)
    | r3_wellord1(X0,X2,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_23,negated_conjecture,
    ( ~ r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4))) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_286,plain,
    ( ~ sP1(X0,X1,X2)
    | ~ sP0(X2,X1,X0)
    | k6_relat_1(k3_relat_1(sK4)) != X1
    | sK4 != X2
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_23])).

cnf(c_287,plain,
    ( ~ sP1(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
    | ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
    inference(unflattening,[status(thm)],[c_286])).

cnf(c_299,plain,
    ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X2)
    | sK4 != X1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_274,c_287])).

cnf(c_300,plain,
    ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
    | ~ v1_relat_1(sK4)
    | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_299])).

cnf(c_304,plain,
    ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
    | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_300,c_24])).

cnf(c_2609,plain,
    ( k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0)
    | sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_304])).

cnf(c_2798,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2609])).

cnf(c_5185,plain,
    ( r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4990,c_2798])).

cnf(c_8,plain,
    ( ~ r2_hidden(X0,X1)
    | k1_funct_1(k6_relat_1(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_2621,plain,
    ( k1_funct_1(k6_relat_1(X0),X1) = X1
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_5190,plain,
    ( k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)) = sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
    inference(superposition,[status(thm)],[c_5185,c_2621])).

cnf(c_12,plain,
    ( sP0(X0,X1,X2)
    | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
    | r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
    | ~ v2_funct_1(X1)
    | k1_relat_1(X1) != k3_relat_1(X2)
    | k2_relat_1(X1) != k3_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_2619,plain,
    ( k1_relat_1(X0) != k3_relat_1(X1)
    | k2_relat_1(X0) != k3_relat_1(X2)
    | sP0(X2,X0,X1) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(X0,sK2(X2,X0,X1)),k1_funct_1(X0,sK3(X2,X0,X1))),X2) = iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3858,plain,
    ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
    | k3_relat_1(X2) != X0
    | sP0(X1,k6_relat_1(X0),X2) = iProver_top
    | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X0),sK2(X1,k6_relat_1(X0),X2)),k1_funct_1(k6_relat_1(X0),sK3(X1,k6_relat_1(X0),X2))),X1) = iProver_top
    | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_2619])).

cnf(c_3859,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) = iProver_top
    | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3858,c_2])).

cnf(c_4515,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3859,c_2622])).

cnf(c_4519,plain,
    ( k3_relat_1(X0) != k3_relat_1(X1)
    | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK2(X0,k6_relat_1(k3_relat_1(X1)),X1)),k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1))),X0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4515])).

cnf(c_5501,plain,
    ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK2(X0,k6_relat_1(k3_relat_1(X0)),X0)),k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0))),X0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4519])).

cnf(c_6245,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_5190,c_5501])).

cnf(c_14,plain,
    ( sP0(X0,X1,X2)
    | r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
    | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
    | ~ v2_funct_1(X1)
    | k1_relat_1(X1) != k3_relat_1(X2)
    | k2_relat_1(X1) != k3_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_2617,plain,
    ( k1_relat_1(X0) != k3_relat_1(X1)
    | k2_relat_1(X0) != k3_relat_1(X2)
    | sP0(X2,X0,X1) = iProver_top
    | r2_hidden(sK2(X2,X0,X1),k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3683,plain,
    ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
    | k3_relat_1(X2) != X0
    | sP0(X1,k6_relat_1(X0),X2) = iProver_top
    | r2_hidden(sK2(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
    | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_2617])).

cnf(c_3684,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
    | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3683,c_2])).

cnf(c_3797,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3684,c_2622])).

cnf(c_3801,plain,
    ( k3_relat_1(X0) != k3_relat_1(X1)
    | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
    | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3797])).

cnf(c_3933,plain,
    ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
    | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) = iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3801])).

cnf(c_1,plain,
    ( r2_hidden(X0,k3_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_342,plain,
    ( r2_hidden(X0,k3_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X0,X2),X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_24])).

cnf(c_343,plain,
    ( r2_hidden(X0,k3_relat_1(sK4))
    | ~ r2_hidden(k4_tarski(X0,X1),sK4) ),
    inference(unflattening,[status(thm)],[c_342])).

cnf(c_2606,plain,
    ( r2_hidden(X0,k3_relat_1(sK4)) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_343])).

cnf(c_3947,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
    | r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3933,c_2606])).

cnf(c_4013,plain,
    ( r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3947,c_2798])).

cnf(c_4018,plain,
    ( k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)) = sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
    inference(superposition,[status(thm)],[c_4013,c_2621])).

cnf(c_6321,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6245,c_4018])).

cnf(c_11,plain,
    ( sP0(X0,X1,X2)
    | ~ r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
    | ~ r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
    | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
    | ~ r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
    | ~ v2_funct_1(X1)
    | k1_relat_1(X1) != k3_relat_1(X2)
    | k2_relat_1(X1) != k3_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_2620,plain,
    ( k1_relat_1(X0) != k3_relat_1(X1)
    | k2_relat_1(X0) != k3_relat_1(X2)
    | sP0(X2,X0,X1) = iProver_top
    | r2_hidden(sK3(X2,X0,X1),k3_relat_1(X1)) != iProver_top
    | r2_hidden(sK2(X2,X0,X1),k3_relat_1(X1)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(X0,sK2(X2,X0,X1)),k1_funct_1(X0,sK3(X2,X0,X1))),X2) != iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3373,plain,
    ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
    | k3_relat_1(X2) != X0
    | sP0(X1,k6_relat_1(X0),X2) = iProver_top
    | r2_hidden(sK3(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) != iProver_top
    | r2_hidden(sK2(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X0),sK2(X1,k6_relat_1(X0),X2)),k1_funct_1(k6_relat_1(X0),sK3(X1,k6_relat_1(X0),X2))),X1) != iProver_top
    | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_2620])).

cnf(c_3374,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) != iProver_top
    | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3373,c_2])).

cnf(c_3528,plain,
    ( k3_relat_1(X0) != X1
    | k3_relat_1(X2) != X1
    | sP0(X2,k6_relat_1(X1),X0) = iProver_top
    | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3374,c_2622])).

cnf(c_3532,plain,
    ( k3_relat_1(X0) != k3_relat_1(X1)
    | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
    | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) != iProver_top
    | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK2(X0,k6_relat_1(k3_relat_1(X1)),X1)),k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1))),X0) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3528])).

cnf(c_3543,plain,
    ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
    | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) != iProver_top
    | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) != iProver_top
    | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK2(X0,k6_relat_1(k3_relat_1(X0)),X0)),k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0))),X0) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3532])).

cnf(c_4022,plain,
    ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
    | r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
    | r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_4018,c_3543])).

cnf(c_4294,plain,
    ( r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4022,c_2798,c_3947])).

cnf(c_4301,plain,
    ( r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
    | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4294,c_2605])).

cnf(c_5192,plain,
    ( r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5190,c_4301])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6321,c_5192,c_2798])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:16:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.47/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.47/0.99  
% 2.47/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.47/0.99  
% 2.47/0.99  ------  iProver source info
% 2.47/0.99  
% 2.47/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.47/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.47/0.99  git: non_committed_changes: false
% 2.47/0.99  git: last_make_outside_of_git: false
% 2.47/0.99  
% 2.47/0.99  ------ 
% 2.47/0.99  
% 2.47/0.99  ------ Input Options
% 2.47/0.99  
% 2.47/0.99  --out_options                           all
% 2.47/0.99  --tptp_safe_out                         true
% 2.47/0.99  --problem_path                          ""
% 2.47/0.99  --include_path                          ""
% 2.47/0.99  --clausifier                            res/vclausify_rel
% 2.47/0.99  --clausifier_options                    --mode clausify
% 2.47/0.99  --stdin                                 false
% 2.47/0.99  --stats_out                             all
% 2.47/0.99  
% 2.47/0.99  ------ General Options
% 2.47/0.99  
% 2.47/0.99  --fof                                   false
% 2.47/0.99  --time_out_real                         305.
% 2.47/0.99  --time_out_virtual                      -1.
% 2.47/0.99  --symbol_type_check                     false
% 2.47/0.99  --clausify_out                          false
% 2.47/0.99  --sig_cnt_out                           false
% 2.47/0.99  --trig_cnt_out                          false
% 2.47/0.99  --trig_cnt_out_tolerance                1.
% 2.47/0.99  --trig_cnt_out_sk_spl                   false
% 2.47/0.99  --abstr_cl_out                          false
% 2.47/0.99  
% 2.47/0.99  ------ Global Options
% 2.47/0.99  
% 2.47/0.99  --schedule                              default
% 2.47/0.99  --add_important_lit                     false
% 2.47/0.99  --prop_solver_per_cl                    1000
% 2.47/0.99  --min_unsat_core                        false
% 2.47/0.99  --soft_assumptions                      false
% 2.47/0.99  --soft_lemma_size                       3
% 2.47/0.99  --prop_impl_unit_size                   0
% 2.47/0.99  --prop_impl_unit                        []
% 2.47/0.99  --share_sel_clauses                     true
% 2.47/0.99  --reset_solvers                         false
% 2.47/0.99  --bc_imp_inh                            [conj_cone]
% 2.47/0.99  --conj_cone_tolerance                   3.
% 2.47/0.99  --extra_neg_conj                        none
% 2.47/0.99  --large_theory_mode                     true
% 2.47/0.99  --prolific_symb_bound                   200
% 2.47/0.99  --lt_threshold                          2000
% 2.47/0.99  --clause_weak_htbl                      true
% 2.47/0.99  --gc_record_bc_elim                     false
% 2.47/0.99  
% 2.47/0.99  ------ Preprocessing Options
% 2.47/0.99  
% 2.47/0.99  --preprocessing_flag                    true
% 2.47/0.99  --time_out_prep_mult                    0.1
% 2.47/0.99  --splitting_mode                        input
% 2.47/0.99  --splitting_grd                         true
% 2.47/0.99  --splitting_cvd                         false
% 2.47/0.99  --splitting_cvd_svl                     false
% 2.47/0.99  --splitting_nvd                         32
% 2.47/0.99  --sub_typing                            true
% 2.47/0.99  --prep_gs_sim                           true
% 2.47/0.99  --prep_unflatten                        true
% 2.47/0.99  --prep_res_sim                          true
% 2.47/0.99  --prep_upred                            true
% 2.47/0.99  --prep_sem_filter                       exhaustive
% 2.47/0.99  --prep_sem_filter_out                   false
% 2.47/0.99  --pred_elim                             true
% 2.47/0.99  --res_sim_input                         true
% 2.47/0.99  --eq_ax_congr_red                       true
% 2.47/0.99  --pure_diseq_elim                       true
% 2.47/0.99  --brand_transform                       false
% 2.47/0.99  --non_eq_to_eq                          false
% 2.47/0.99  --prep_def_merge                        true
% 2.47/0.99  --prep_def_merge_prop_impl              false
% 2.47/0.99  --prep_def_merge_mbd                    true
% 2.47/0.99  --prep_def_merge_tr_red                 false
% 2.47/0.99  --prep_def_merge_tr_cl                  false
% 2.47/0.99  --smt_preprocessing                     true
% 2.47/0.99  --smt_ac_axioms                         fast
% 2.47/0.99  --preprocessed_out                      false
% 2.47/0.99  --preprocessed_stats                    false
% 2.47/0.99  
% 2.47/0.99  ------ Abstraction refinement Options
% 2.47/0.99  
% 2.47/0.99  --abstr_ref                             []
% 2.47/0.99  --abstr_ref_prep                        false
% 2.47/0.99  --abstr_ref_until_sat                   false
% 2.47/0.99  --abstr_ref_sig_restrict                funpre
% 2.47/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.47/0.99  --abstr_ref_under                       []
% 2.47/0.99  
% 2.47/0.99  ------ SAT Options
% 2.47/0.99  
% 2.47/0.99  --sat_mode                              false
% 2.47/0.99  --sat_fm_restart_options                ""
% 2.47/0.99  --sat_gr_def                            false
% 2.47/0.99  --sat_epr_types                         true
% 2.47/0.99  --sat_non_cyclic_types                  false
% 2.47/0.99  --sat_finite_models                     false
% 2.47/0.99  --sat_fm_lemmas                         false
% 2.47/0.99  --sat_fm_prep                           false
% 2.47/0.99  --sat_fm_uc_incr                        true
% 2.47/0.99  --sat_out_model                         small
% 2.47/0.99  --sat_out_clauses                       false
% 2.47/0.99  
% 2.47/0.99  ------ QBF Options
% 2.47/0.99  
% 2.47/0.99  --qbf_mode                              false
% 2.47/0.99  --qbf_elim_univ                         false
% 2.47/0.99  --qbf_dom_inst                          none
% 2.47/0.99  --qbf_dom_pre_inst                      false
% 2.47/0.99  --qbf_sk_in                             false
% 2.47/0.99  --qbf_pred_elim                         true
% 2.47/0.99  --qbf_split                             512
% 2.47/0.99  
% 2.47/0.99  ------ BMC1 Options
% 2.47/0.99  
% 2.47/0.99  --bmc1_incremental                      false
% 2.47/0.99  --bmc1_axioms                           reachable_all
% 2.47/0.99  --bmc1_min_bound                        0
% 2.47/0.99  --bmc1_max_bound                        -1
% 2.47/0.99  --bmc1_max_bound_default                -1
% 2.47/0.99  --bmc1_symbol_reachability              true
% 2.47/0.99  --bmc1_property_lemmas                  false
% 2.47/0.99  --bmc1_k_induction                      false
% 2.47/0.99  --bmc1_non_equiv_states                 false
% 2.47/0.99  --bmc1_deadlock                         false
% 2.47/0.99  --bmc1_ucm                              false
% 2.47/0.99  --bmc1_add_unsat_core                   none
% 2.47/0.99  --bmc1_unsat_core_children              false
% 2.47/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.47/0.99  --bmc1_out_stat                         full
% 2.47/0.99  --bmc1_ground_init                      false
% 2.47/0.99  --bmc1_pre_inst_next_state              false
% 2.47/0.99  --bmc1_pre_inst_state                   false
% 2.47/0.99  --bmc1_pre_inst_reach_state             false
% 2.47/0.99  --bmc1_out_unsat_core                   false
% 2.47/0.99  --bmc1_aig_witness_out                  false
% 2.47/0.99  --bmc1_verbose                          false
% 2.47/0.99  --bmc1_dump_clauses_tptp                false
% 2.47/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.47/0.99  --bmc1_dump_file                        -
% 2.47/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.47/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.47/0.99  --bmc1_ucm_extend_mode                  1
% 2.47/0.99  --bmc1_ucm_init_mode                    2
% 2.47/0.99  --bmc1_ucm_cone_mode                    none
% 2.47/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.47/0.99  --bmc1_ucm_relax_model                  4
% 2.47/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.47/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.47/0.99  --bmc1_ucm_layered_model                none
% 2.47/0.99  --bmc1_ucm_max_lemma_size               10
% 2.47/0.99  
% 2.47/0.99  ------ AIG Options
% 2.47/0.99  
% 2.47/0.99  --aig_mode                              false
% 2.47/0.99  
% 2.47/0.99  ------ Instantiation Options
% 2.47/0.99  
% 2.47/0.99  --instantiation_flag                    true
% 2.47/0.99  --inst_sos_flag                         false
% 2.47/0.99  --inst_sos_phase                        true
% 2.47/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.47/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.47/0.99  --inst_lit_sel_side                     num_symb
% 2.47/0.99  --inst_solver_per_active                1400
% 2.47/0.99  --inst_solver_calls_frac                1.
% 2.47/0.99  --inst_passive_queue_type               priority_queues
% 2.47/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.47/0.99  --inst_passive_queues_freq              [25;2]
% 2.47/0.99  --inst_dismatching                      true
% 2.47/0.99  --inst_eager_unprocessed_to_passive     true
% 2.47/0.99  --inst_prop_sim_given                   true
% 2.47/0.99  --inst_prop_sim_new                     false
% 2.47/0.99  --inst_subs_new                         false
% 2.47/0.99  --inst_eq_res_simp                      false
% 2.47/0.99  --inst_subs_given                       false
% 2.47/0.99  --inst_orphan_elimination               true
% 2.47/0.99  --inst_learning_loop_flag               true
% 2.47/0.99  --inst_learning_start                   3000
% 2.47/0.99  --inst_learning_factor                  2
% 2.47/0.99  --inst_start_prop_sim_after_learn       3
% 2.47/0.99  --inst_sel_renew                        solver
% 2.47/0.99  --inst_lit_activity_flag                true
% 2.47/0.99  --inst_restr_to_given                   false
% 2.47/0.99  --inst_activity_threshold               500
% 2.47/0.99  --inst_out_proof                        true
% 2.47/0.99  
% 2.47/0.99  ------ Resolution Options
% 2.47/0.99  
% 2.47/0.99  --resolution_flag                       true
% 2.47/0.99  --res_lit_sel                           adaptive
% 2.47/0.99  --res_lit_sel_side                      none
% 2.47/0.99  --res_ordering                          kbo
% 2.47/0.99  --res_to_prop_solver                    active
% 2.47/0.99  --res_prop_simpl_new                    false
% 2.47/0.99  --res_prop_simpl_given                  true
% 2.47/0.99  --res_passive_queue_type                priority_queues
% 2.47/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.47/0.99  --res_passive_queues_freq               [15;5]
% 2.47/0.99  --res_forward_subs                      full
% 2.47/0.99  --res_backward_subs                     full
% 2.47/0.99  --res_forward_subs_resolution           true
% 2.47/0.99  --res_backward_subs_resolution          true
% 2.47/0.99  --res_orphan_elimination                true
% 2.47/0.99  --res_time_limit                        2.
% 2.47/0.99  --res_out_proof                         true
% 2.47/0.99  
% 2.47/0.99  ------ Superposition Options
% 2.47/0.99  
% 2.47/0.99  --superposition_flag                    true
% 2.47/0.99  --sup_passive_queue_type                priority_queues
% 2.47/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.47/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.47/0.99  --demod_completeness_check              fast
% 2.47/0.99  --demod_use_ground                      true
% 2.47/0.99  --sup_to_prop_solver                    passive
% 2.47/0.99  --sup_prop_simpl_new                    true
% 2.47/0.99  --sup_prop_simpl_given                  true
% 2.47/0.99  --sup_fun_splitting                     false
% 2.47/0.99  --sup_smt_interval                      50000
% 2.47/0.99  
% 2.47/0.99  ------ Superposition Simplification Setup
% 2.47/0.99  
% 2.47/0.99  --sup_indices_passive                   []
% 2.47/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.47/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_full_bw                           [BwDemod]
% 2.47/0.99  --sup_immed_triv                        [TrivRules]
% 2.47/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.47/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_immed_bw_main                     []
% 2.47/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.47/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.47/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.47/0.99  
% 2.47/0.99  ------ Combination Options
% 2.47/0.99  
% 2.47/0.99  --comb_res_mult                         3
% 2.47/0.99  --comb_sup_mult                         2
% 2.47/0.99  --comb_inst_mult                        10
% 2.47/0.99  
% 2.47/0.99  ------ Debug Options
% 2.47/0.99  
% 2.47/0.99  --dbg_backtrace                         false
% 2.47/0.99  --dbg_dump_prop_clauses                 false
% 2.47/0.99  --dbg_dump_prop_clauses_file            -
% 2.47/0.99  --dbg_out_stat                          false
% 2.47/0.99  ------ Parsing...
% 2.47/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.47/0.99  
% 2.47/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.47/0.99  
% 2.47/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.47/0.99  
% 2.47/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.47/0.99  ------ Proving...
% 2.47/0.99  ------ Problem Properties 
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  clauses                                 20
% 2.47/0.99  conjectures                             0
% 2.47/0.99  EPR                                     1
% 2.47/0.99  Horn                                    17
% 2.47/0.99  unary                                   3
% 2.47/0.99  binary                                  9
% 2.47/0.99  lits                                    61
% 2.47/0.99  lits eq                                 14
% 2.47/0.99  fd_pure                                 0
% 2.47/0.99  fd_pseudo                               0
% 2.47/0.99  fd_cond                                 0
% 2.47/0.99  fd_pseudo_cond                          0
% 2.47/0.99  AC symbols                              0
% 2.47/0.99  
% 2.47/0.99  ------ Schedule dynamic 5 is on 
% 2.47/0.99  
% 2.47/0.99  ------ no conjectures: strip conj schedule 
% 2.47/0.99  
% 2.47/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" stripped conjectures Time Limit: 10.
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  ------ 
% 2.47/0.99  Current options:
% 2.47/0.99  ------ 
% 2.47/0.99  
% 2.47/0.99  ------ Input Options
% 2.47/0.99  
% 2.47/0.99  --out_options                           all
% 2.47/0.99  --tptp_safe_out                         true
% 2.47/0.99  --problem_path                          ""
% 2.47/0.99  --include_path                          ""
% 2.47/0.99  --clausifier                            res/vclausify_rel
% 2.47/0.99  --clausifier_options                    --mode clausify
% 2.47/0.99  --stdin                                 false
% 2.47/0.99  --stats_out                             all
% 2.47/0.99  
% 2.47/0.99  ------ General Options
% 2.47/0.99  
% 2.47/0.99  --fof                                   false
% 2.47/0.99  --time_out_real                         305.
% 2.47/0.99  --time_out_virtual                      -1.
% 2.47/0.99  --symbol_type_check                     false
% 2.47/0.99  --clausify_out                          false
% 2.47/0.99  --sig_cnt_out                           false
% 2.47/0.99  --trig_cnt_out                          false
% 2.47/0.99  --trig_cnt_out_tolerance                1.
% 2.47/0.99  --trig_cnt_out_sk_spl                   false
% 2.47/0.99  --abstr_cl_out                          false
% 2.47/0.99  
% 2.47/0.99  ------ Global Options
% 2.47/0.99  
% 2.47/0.99  --schedule                              default
% 2.47/0.99  --add_important_lit                     false
% 2.47/0.99  --prop_solver_per_cl                    1000
% 2.47/0.99  --min_unsat_core                        false
% 2.47/0.99  --soft_assumptions                      false
% 2.47/0.99  --soft_lemma_size                       3
% 2.47/0.99  --prop_impl_unit_size                   0
% 2.47/0.99  --prop_impl_unit                        []
% 2.47/0.99  --share_sel_clauses                     true
% 2.47/0.99  --reset_solvers                         false
% 2.47/0.99  --bc_imp_inh                            [conj_cone]
% 2.47/0.99  --conj_cone_tolerance                   3.
% 2.47/0.99  --extra_neg_conj                        none
% 2.47/0.99  --large_theory_mode                     true
% 2.47/0.99  --prolific_symb_bound                   200
% 2.47/0.99  --lt_threshold                          2000
% 2.47/0.99  --clause_weak_htbl                      true
% 2.47/0.99  --gc_record_bc_elim                     false
% 2.47/0.99  
% 2.47/0.99  ------ Preprocessing Options
% 2.47/0.99  
% 2.47/0.99  --preprocessing_flag                    true
% 2.47/0.99  --time_out_prep_mult                    0.1
% 2.47/0.99  --splitting_mode                        input
% 2.47/0.99  --splitting_grd                         true
% 2.47/0.99  --splitting_cvd                         false
% 2.47/0.99  --splitting_cvd_svl                     false
% 2.47/0.99  --splitting_nvd                         32
% 2.47/0.99  --sub_typing                            true
% 2.47/0.99  --prep_gs_sim                           true
% 2.47/0.99  --prep_unflatten                        true
% 2.47/0.99  --prep_res_sim                          true
% 2.47/0.99  --prep_upred                            true
% 2.47/0.99  --prep_sem_filter                       exhaustive
% 2.47/0.99  --prep_sem_filter_out                   false
% 2.47/0.99  --pred_elim                             true
% 2.47/0.99  --res_sim_input                         true
% 2.47/0.99  --eq_ax_congr_red                       true
% 2.47/0.99  --pure_diseq_elim                       true
% 2.47/0.99  --brand_transform                       false
% 2.47/0.99  --non_eq_to_eq                          false
% 2.47/0.99  --prep_def_merge                        true
% 2.47/0.99  --prep_def_merge_prop_impl              false
% 2.47/0.99  --prep_def_merge_mbd                    true
% 2.47/0.99  --prep_def_merge_tr_red                 false
% 2.47/0.99  --prep_def_merge_tr_cl                  false
% 2.47/0.99  --smt_preprocessing                     true
% 2.47/0.99  --smt_ac_axioms                         fast
% 2.47/0.99  --preprocessed_out                      false
% 2.47/0.99  --preprocessed_stats                    false
% 2.47/0.99  
% 2.47/0.99  ------ Abstraction refinement Options
% 2.47/0.99  
% 2.47/0.99  --abstr_ref                             []
% 2.47/0.99  --abstr_ref_prep                        false
% 2.47/0.99  --abstr_ref_until_sat                   false
% 2.47/0.99  --abstr_ref_sig_restrict                funpre
% 2.47/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.47/0.99  --abstr_ref_under                       []
% 2.47/0.99  
% 2.47/0.99  ------ SAT Options
% 2.47/0.99  
% 2.47/0.99  --sat_mode                              false
% 2.47/0.99  --sat_fm_restart_options                ""
% 2.47/0.99  --sat_gr_def                            false
% 2.47/0.99  --sat_epr_types                         true
% 2.47/0.99  --sat_non_cyclic_types                  false
% 2.47/0.99  --sat_finite_models                     false
% 2.47/0.99  --sat_fm_lemmas                         false
% 2.47/0.99  --sat_fm_prep                           false
% 2.47/0.99  --sat_fm_uc_incr                        true
% 2.47/0.99  --sat_out_model                         small
% 2.47/0.99  --sat_out_clauses                       false
% 2.47/0.99  
% 2.47/0.99  ------ QBF Options
% 2.47/0.99  
% 2.47/0.99  --qbf_mode                              false
% 2.47/0.99  --qbf_elim_univ                         false
% 2.47/0.99  --qbf_dom_inst                          none
% 2.47/0.99  --qbf_dom_pre_inst                      false
% 2.47/0.99  --qbf_sk_in                             false
% 2.47/0.99  --qbf_pred_elim                         true
% 2.47/0.99  --qbf_split                             512
% 2.47/0.99  
% 2.47/0.99  ------ BMC1 Options
% 2.47/0.99  
% 2.47/0.99  --bmc1_incremental                      false
% 2.47/0.99  --bmc1_axioms                           reachable_all
% 2.47/0.99  --bmc1_min_bound                        0
% 2.47/0.99  --bmc1_max_bound                        -1
% 2.47/0.99  --bmc1_max_bound_default                -1
% 2.47/0.99  --bmc1_symbol_reachability              true
% 2.47/0.99  --bmc1_property_lemmas                  false
% 2.47/0.99  --bmc1_k_induction                      false
% 2.47/0.99  --bmc1_non_equiv_states                 false
% 2.47/0.99  --bmc1_deadlock                         false
% 2.47/0.99  --bmc1_ucm                              false
% 2.47/0.99  --bmc1_add_unsat_core                   none
% 2.47/0.99  --bmc1_unsat_core_children              false
% 2.47/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.47/0.99  --bmc1_out_stat                         full
% 2.47/0.99  --bmc1_ground_init                      false
% 2.47/0.99  --bmc1_pre_inst_next_state              false
% 2.47/0.99  --bmc1_pre_inst_state                   false
% 2.47/0.99  --bmc1_pre_inst_reach_state             false
% 2.47/0.99  --bmc1_out_unsat_core                   false
% 2.47/0.99  --bmc1_aig_witness_out                  false
% 2.47/0.99  --bmc1_verbose                          false
% 2.47/0.99  --bmc1_dump_clauses_tptp                false
% 2.47/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.47/0.99  --bmc1_dump_file                        -
% 2.47/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.47/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.47/0.99  --bmc1_ucm_extend_mode                  1
% 2.47/0.99  --bmc1_ucm_init_mode                    2
% 2.47/0.99  --bmc1_ucm_cone_mode                    none
% 2.47/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.47/0.99  --bmc1_ucm_relax_model                  4
% 2.47/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.47/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.47/0.99  --bmc1_ucm_layered_model                none
% 2.47/0.99  --bmc1_ucm_max_lemma_size               10
% 2.47/0.99  
% 2.47/0.99  ------ AIG Options
% 2.47/0.99  
% 2.47/0.99  --aig_mode                              false
% 2.47/0.99  
% 2.47/0.99  ------ Instantiation Options
% 2.47/0.99  
% 2.47/0.99  --instantiation_flag                    true
% 2.47/0.99  --inst_sos_flag                         false
% 2.47/0.99  --inst_sos_phase                        true
% 2.47/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.47/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.47/0.99  --inst_lit_sel_side                     none
% 2.47/0.99  --inst_solver_per_active                1400
% 2.47/0.99  --inst_solver_calls_frac                1.
% 2.47/0.99  --inst_passive_queue_type               priority_queues
% 2.47/0.99  --inst_passive_queues                   [[-num_var];[+age;-num_symb]]
% 2.47/0.99  --inst_passive_queues_freq              [25;2]
% 2.47/0.99  --inst_dismatching                      true
% 2.47/0.99  --inst_eager_unprocessed_to_passive     true
% 2.47/0.99  --inst_prop_sim_given                   true
% 2.47/0.99  --inst_prop_sim_new                     false
% 2.47/0.99  --inst_subs_new                         false
% 2.47/0.99  --inst_eq_res_simp                      false
% 2.47/0.99  --inst_subs_given                       false
% 2.47/0.99  --inst_orphan_elimination               true
% 2.47/0.99  --inst_learning_loop_flag               true
% 2.47/0.99  --inst_learning_start                   3000
% 2.47/0.99  --inst_learning_factor                  2
% 2.47/0.99  --inst_start_prop_sim_after_learn       3
% 2.47/0.99  --inst_sel_renew                        solver
% 2.47/0.99  --inst_lit_activity_flag                true
% 2.47/0.99  --inst_restr_to_given                   false
% 2.47/0.99  --inst_activity_threshold               500
% 2.47/0.99  --inst_out_proof                        true
% 2.47/0.99  
% 2.47/0.99  ------ Resolution Options
% 2.47/0.99  
% 2.47/0.99  --resolution_flag                       false
% 2.47/0.99  --res_lit_sel                           adaptive
% 2.47/0.99  --res_lit_sel_side                      none
% 2.47/0.99  --res_ordering                          kbo
% 2.47/0.99  --res_to_prop_solver                    active
% 2.47/0.99  --res_prop_simpl_new                    false
% 2.47/0.99  --res_prop_simpl_given                  true
% 2.47/0.99  --res_passive_queue_type                priority_queues
% 2.47/0.99  --res_passive_queues                    [[-num_symb];[+age;-num_symb]]
% 2.47/0.99  --res_passive_queues_freq               [15;5]
% 2.47/0.99  --res_forward_subs                      full
% 2.47/0.99  --res_backward_subs                     full
% 2.47/0.99  --res_forward_subs_resolution           true
% 2.47/0.99  --res_backward_subs_resolution          true
% 2.47/0.99  --res_orphan_elimination                true
% 2.47/0.99  --res_time_limit                        2.
% 2.47/0.99  --res_out_proof                         true
% 2.47/0.99  
% 2.47/0.99  ------ Superposition Options
% 2.47/0.99  
% 2.47/0.99  --superposition_flag                    true
% 2.47/0.99  --sup_passive_queue_type                priority_queues
% 2.47/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.47/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.47/0.99  --demod_completeness_check              fast
% 2.47/0.99  --demod_use_ground                      true
% 2.47/0.99  --sup_to_prop_solver                    passive
% 2.47/0.99  --sup_prop_simpl_new                    true
% 2.47/0.99  --sup_prop_simpl_given                  true
% 2.47/0.99  --sup_fun_splitting                     false
% 2.47/0.99  --sup_smt_interval                      50000
% 2.47/0.99  
% 2.47/0.99  ------ Superposition Simplification Setup
% 2.47/0.99  
% 2.47/0.99  --sup_indices_passive                   []
% 2.47/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.47/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.47/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_full_bw                           [BwDemod]
% 2.47/0.99  --sup_immed_triv                        [TrivRules]
% 2.47/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.47/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_immed_bw_main                     []
% 2.47/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.47/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.47/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.47/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.47/0.99  
% 2.47/0.99  ------ Combination Options
% 2.47/0.99  
% 2.47/0.99  --comb_res_mult                         3
% 2.47/0.99  --comb_sup_mult                         2
% 2.47/0.99  --comb_inst_mult                        10
% 2.47/0.99  
% 2.47/0.99  ------ Debug Options
% 2.47/0.99  
% 2.47/0.99  --dbg_backtrace                         false
% 2.47/0.99  --dbg_dump_prop_clauses                 false
% 2.47/0.99  --dbg_dump_prop_clauses_file            -
% 2.47/0.99  --dbg_out_stat                          false
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  ------ Proving...
% 2.47/0.99  
% 2.47/0.99  
% 2.47/0.99  % SZS status Theorem for theBenchmark.p
% 2.47/0.99  
% 2.47/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.47/0.99  
% 2.47/0.99  fof(f2,axiom,(
% 2.47/0.99    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f29,plain,(
% 2.47/0.99    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 2.47/0.99    inference(cnf_transformation,[],[f2])).
% 2.47/0.99  
% 2.47/0.99  fof(f15,plain,(
% 2.47/0.99    ! [X1,X2,X0] : (sP0(X1,X2,X0) <=> (! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X0) <=> (r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0)))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2)))),
% 2.47/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 2.47/0.99  
% 2.47/0.99  fof(f20,plain,(
% 2.47/0.99    ! [X1,X2,X0] : ((sP0(X1,X2,X0) | (? [X3,X4] : (((~r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) | ~r2_hidden(X4,k3_relat_1(X0)) | ~r2_hidden(X3,k3_relat_1(X0))) | ~r2_hidden(k4_tarski(X3,X4),X0)) & ((r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0))) | r2_hidden(k4_tarski(X3,X4),X0))) | ~v2_funct_1(X2) | k3_relat_1(X1) != k2_relat_1(X2) | k3_relat_1(X0) != k1_relat_1(X2))) & ((! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X0) | (~r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) | ~r2_hidden(X4,k3_relat_1(X0)) | ~r2_hidden(X3,k3_relat_1(X0)))) & ((r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0))) | ~r2_hidden(k4_tarski(X3,X4),X0))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2)) | ~sP0(X1,X2,X0)))),
% 2.47/0.99    inference(nnf_transformation,[],[f15])).
% 2.47/0.99  
% 2.47/0.99  fof(f21,plain,(
% 2.47/0.99    ! [X1,X2,X0] : ((sP0(X1,X2,X0) | ? [X3,X4] : ((~r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) | ~r2_hidden(X4,k3_relat_1(X0)) | ~r2_hidden(X3,k3_relat_1(X0)) | ~r2_hidden(k4_tarski(X3,X4),X0)) & ((r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0))) | r2_hidden(k4_tarski(X3,X4),X0))) | ~v2_funct_1(X2) | k3_relat_1(X1) != k2_relat_1(X2) | k3_relat_1(X0) != k1_relat_1(X2)) & ((! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X0) | ~r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) | ~r2_hidden(X4,k3_relat_1(X0)) | ~r2_hidden(X3,k3_relat_1(X0))) & ((r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0))) | ~r2_hidden(k4_tarski(X3,X4),X0))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2)) | ~sP0(X1,X2,X0)))),
% 2.47/0.99    inference(flattening,[],[f20])).
% 2.47/0.99  
% 2.47/0.99  fof(f22,plain,(
% 2.47/0.99    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | ? [X3,X4] : ((~r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0) | ~r2_hidden(X4,k3_relat_1(X2)) | ~r2_hidden(X3,k3_relat_1(X2)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0) & r2_hidden(X4,k3_relat_1(X2)) & r2_hidden(X3,k3_relat_1(X2))) | r2_hidden(k4_tarski(X3,X4),X2))) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) & ((! [X5,X6] : ((r2_hidden(k4_tarski(X5,X6),X2) | ~r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0) | ~r2_hidden(X6,k3_relat_1(X2)) | ~r2_hidden(X5,k3_relat_1(X2))) & ((r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0) & r2_hidden(X6,k3_relat_1(X2)) & r2_hidden(X5,k3_relat_1(X2))) | ~r2_hidden(k4_tarski(X5,X6),X2))) & v2_funct_1(X1) & k3_relat_1(X0) = k2_relat_1(X1) & k3_relat_1(X2) = k1_relat_1(X1)) | ~sP0(X0,X1,X2)))),
% 2.47/0.99    inference(rectify,[],[f21])).
% 2.47/0.99  
% 2.47/0.99  fof(f23,plain,(
% 2.47/0.99    ! [X2,X1,X0] : (? [X3,X4] : ((~r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0) | ~r2_hidden(X4,k3_relat_1(X2)) | ~r2_hidden(X3,k3_relat_1(X2)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(k1_funct_1(X1,X3),k1_funct_1(X1,X4)),X0) & r2_hidden(X4,k3_relat_1(X2)) & r2_hidden(X3,k3_relat_1(X2))) | r2_hidden(k4_tarski(X3,X4),X2))) => ((~r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) | ~r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) & r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) & r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2))))),
% 2.47/0.99    introduced(choice_axiom,[])).
% 2.47/0.99  
% 2.47/0.99  fof(f24,plain,(
% 2.47/0.99    ! [X0,X1,X2] : ((sP0(X0,X1,X2) | ((~r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) | ~r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) & r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) & r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2))) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) & ((! [X5,X6] : ((r2_hidden(k4_tarski(X5,X6),X2) | ~r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0) | ~r2_hidden(X6,k3_relat_1(X2)) | ~r2_hidden(X5,k3_relat_1(X2))) & ((r2_hidden(k4_tarski(k1_funct_1(X1,X5),k1_funct_1(X1,X6)),X0) & r2_hidden(X6,k3_relat_1(X2)) & r2_hidden(X5,k3_relat_1(X2))) | ~r2_hidden(k4_tarski(X5,X6),X2))) & v2_funct_1(X1) & k3_relat_1(X0) = k2_relat_1(X1) & k3_relat_1(X2) = k1_relat_1(X1)) | ~sP0(X0,X1,X2)))),
% 2.47/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f22,f23])).
% 2.47/0.99  
% 2.47/0.99  fof(f46,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (sP0(X0,X1,X2) | r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f24])).
% 2.47/0.99  
% 2.47/0.99  fof(f30,plain,(
% 2.47/0.99    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 2.47/0.99    inference(cnf_transformation,[],[f2])).
% 2.47/0.99  
% 2.47/0.99  fof(f4,axiom,(
% 2.47/0.99    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f34,plain,(
% 2.47/0.99    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 2.47/0.99    inference(cnf_transformation,[],[f4])).
% 2.47/0.99  
% 2.47/0.99  fof(f1,axiom,(
% 2.47/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(k4_tarski(X0,X1),X2) => (r2_hidden(X1,k3_relat_1(X2)) & r2_hidden(X0,k3_relat_1(X2)))))),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f9,plain,(
% 2.47/0.99    ! [X0,X1,X2] : (((r2_hidden(X1,k3_relat_1(X2)) & r2_hidden(X0,k3_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2)) | ~v1_relat_1(X2))),
% 2.47/0.99    inference(ennf_transformation,[],[f1])).
% 2.47/0.99  
% 2.47/0.99  fof(f10,plain,(
% 2.47/0.99    ! [X0,X1,X2] : ((r2_hidden(X1,k3_relat_1(X2)) & r2_hidden(X0,k3_relat_1(X2))) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_relat_1(X2))),
% 2.47/0.99    inference(flattening,[],[f9])).
% 2.47/0.99  
% 2.47/0.99  fof(f28,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (r2_hidden(X1,k3_relat_1(X2)) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_relat_1(X2)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f10])).
% 2.47/0.99  
% 2.47/0.99  fof(f7,conjecture,(
% 2.47/0.99    ! [X0] : (v1_relat_1(X0) => r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))))),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f8,negated_conjecture,(
% 2.47/0.99    ~! [X0] : (v1_relat_1(X0) => r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))))),
% 2.47/0.99    inference(negated_conjecture,[],[f7])).
% 2.47/0.99  
% 2.47/0.99  fof(f14,plain,(
% 2.47/0.99    ? [X0] : (~r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))) & v1_relat_1(X0))),
% 2.47/0.99    inference(ennf_transformation,[],[f8])).
% 2.47/0.99  
% 2.47/0.99  fof(f25,plain,(
% 2.47/0.99    ? [X0] : (~r3_wellord1(X0,X0,k6_relat_1(k3_relat_1(X0))) & v1_relat_1(X0)) => (~r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4))) & v1_relat_1(sK4))),
% 2.47/0.99    introduced(choice_axiom,[])).
% 2.47/0.99  
% 2.47/0.99  fof(f26,plain,(
% 2.47/0.99    ~r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4))) & v1_relat_1(sK4)),
% 2.47/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f14,f25])).
% 2.47/0.99  
% 2.47/0.99  fof(f50,plain,(
% 2.47/0.99    v1_relat_1(sK4)),
% 2.47/0.99    inference(cnf_transformation,[],[f26])).
% 2.47/0.99  
% 2.47/0.99  fof(f3,axiom,(
% 2.47/0.99    ! [X0] : (v1_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f32,plain,(
% 2.47/0.99    ( ! [X0] : (v1_funct_1(k6_relat_1(X0))) )),
% 2.47/0.99    inference(cnf_transformation,[],[f3])).
% 2.47/0.99  
% 2.47/0.99  fof(f6,axiom,(
% 2.47/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => (r3_wellord1(X0,X1,X2) <=> (! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X0) <=> (r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0)))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2))))))),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f12,plain,(
% 2.47/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_wellord1(X0,X1,X2) <=> (! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X0) <=> (r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0)))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2))) | (~v1_funct_1(X2) | ~v1_relat_1(X2))) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.47/0.99    inference(ennf_transformation,[],[f6])).
% 2.47/0.99  
% 2.47/0.99  fof(f13,plain,(
% 2.47/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_wellord1(X0,X1,X2) <=> (! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X0) <=> (r2_hidden(k4_tarski(k1_funct_1(X2,X3),k1_funct_1(X2,X4)),X1) & r2_hidden(X4,k3_relat_1(X0)) & r2_hidden(X3,k3_relat_1(X0)))) & v2_funct_1(X2) & k3_relat_1(X1) = k2_relat_1(X2) & k3_relat_1(X0) = k1_relat_1(X2))) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.47/0.99    inference(flattening,[],[f12])).
% 2.47/0.99  
% 2.47/0.99  fof(f16,plain,(
% 2.47/0.99    ! [X0,X2,X1] : ((r3_wellord1(X0,X1,X2) <=> sP0(X1,X2,X0)) | ~sP1(X0,X2,X1))),
% 2.47/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP1])])).
% 2.47/0.99  
% 2.47/0.99  fof(f17,plain,(
% 2.47/0.99    ! [X0] : (! [X1] : (! [X2] : (sP1(X0,X2,X1) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.47/0.99    inference(definition_folding,[],[f13,f16,f15])).
% 2.47/0.99  
% 2.47/0.99  fof(f49,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (sP1(X0,X2,X1) | ~v1_funct_1(X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f17])).
% 2.47/0.99  
% 2.47/0.99  fof(f31,plain,(
% 2.47/0.99    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 2.47/0.99    inference(cnf_transformation,[],[f3])).
% 2.47/0.99  
% 2.47/0.99  fof(f18,plain,(
% 2.47/0.99    ! [X0,X2,X1] : (((r3_wellord1(X0,X1,X2) | ~sP0(X1,X2,X0)) & (sP0(X1,X2,X0) | ~r3_wellord1(X0,X1,X2))) | ~sP1(X0,X2,X1))),
% 2.47/0.99    inference(nnf_transformation,[],[f16])).
% 2.47/0.99  
% 2.47/0.99  fof(f19,plain,(
% 2.47/0.99    ! [X0,X1,X2] : (((r3_wellord1(X0,X2,X1) | ~sP0(X2,X1,X0)) & (sP0(X2,X1,X0) | ~r3_wellord1(X0,X2,X1))) | ~sP1(X0,X1,X2))),
% 2.47/0.99    inference(rectify,[],[f18])).
% 2.47/0.99  
% 2.47/0.99  fof(f37,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (r3_wellord1(X0,X2,X1) | ~sP0(X2,X1,X0) | ~sP1(X0,X1,X2)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f19])).
% 2.47/0.99  
% 2.47/0.99  fof(f51,plain,(
% 2.47/0.99    ~r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4)))),
% 2.47/0.99    inference(cnf_transformation,[],[f26])).
% 2.47/0.99  
% 2.47/0.99  fof(f5,axiom,(
% 2.47/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => k1_funct_1(k6_relat_1(X1),X0) = X0)),
% 2.47/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.47/0.99  
% 2.47/0.99  fof(f11,plain,(
% 2.47/0.99    ! [X0,X1] : (k1_funct_1(k6_relat_1(X1),X0) = X0 | ~r2_hidden(X0,X1))),
% 2.47/0.99    inference(ennf_transformation,[],[f5])).
% 2.47/0.99  
% 2.47/0.99  fof(f35,plain,(
% 2.47/0.99    ( ! [X0,X1] : (k1_funct_1(k6_relat_1(X1),X0) = X0 | ~r2_hidden(X0,X1)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f11])).
% 2.47/0.99  
% 2.47/0.99  fof(f47,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (sP0(X0,X1,X2) | r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f24])).
% 2.47/0.99  
% 2.47/0.99  fof(f45,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (sP0(X0,X1,X2) | r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f24])).
% 2.47/0.99  
% 2.47/0.99  fof(f27,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (r2_hidden(X0,k3_relat_1(X2)) | ~r2_hidden(k4_tarski(X0,X1),X2) | ~v1_relat_1(X2)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f10])).
% 2.47/0.99  
% 2.47/0.99  fof(f48,plain,(
% 2.47/0.99    ( ! [X2,X0,X1] : (sP0(X0,X1,X2) | ~r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0) | ~r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2)) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) | ~v2_funct_1(X1) | k3_relat_1(X0) != k2_relat_1(X1) | k3_relat_1(X2) != k1_relat_1(X1)) )),
% 2.47/0.99    inference(cnf_transformation,[],[f24])).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3,plain,
% 2.47/0.99      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 2.47/0.99      inference(cnf_transformation,[],[f29]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_13,plain,
% 2.47/0.99      ( sP0(X0,X1,X2)
% 2.47/0.99      | r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
% 2.47/0.99      | ~ v2_funct_1(X1)
% 2.47/0.99      | k1_relat_1(X1) != k3_relat_1(X2)
% 2.47/0.99      | k2_relat_1(X1) != k3_relat_1(X0) ),
% 2.47/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2618,plain,
% 2.47/0.99      ( k1_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | k2_relat_1(X0) != k3_relat_1(X2)
% 2.47/0.99      | sP0(X2,X0,X1) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X2,X0,X1),k3_relat_1(X1)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
% 2.47/0.99      | v2_funct_1(X0) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3785,plain,
% 2.47/0.99      ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
% 2.47/0.99      | k3_relat_1(X2) != X0
% 2.47/0.99      | sP0(X1,k6_relat_1(X0),X2) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_3,c_2618]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2,plain,
% 2.47/0.99      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 2.47/0.99      inference(cnf_transformation,[],[f30]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3786,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
% 2.47/0.99      inference(light_normalisation,[status(thm)],[c_3785,c_2]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_6,plain,
% 2.47/0.99      ( v2_funct_1(k6_relat_1(X0)) ),
% 2.47/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2622,plain,
% 2.47/0.99      ( v2_funct_1(k6_relat_1(X0)) = iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3843,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top ),
% 2.47/0.99      inference(forward_subsumption_resolution,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_3786,c_2622]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3847,plain,
% 2.47/0.99      ( k3_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_3843]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4504,plain,
% 2.47/0.99      ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_3847]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_0,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(X1))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X2,X0),X1)
% 2.47/0.99      | ~ v1_relat_1(X1) ),
% 2.47/0.99      inference(cnf_transformation,[],[f28]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_24,negated_conjecture,
% 2.47/0.99      ( v1_relat_1(sK4) ),
% 2.47/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_354,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(X1))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X2,X0),X1)
% 2.47/0.99      | sK4 != X1 ),
% 2.47/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_24]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_355,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(sK4))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X1,X0),sK4) ),
% 2.47/0.99      inference(unflattening,[status(thm)],[c_354]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2605,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(sK4)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(X1,X0),sK4) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_355]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4990,plain,
% 2.47/0.99      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_4504,c_2605]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4,plain,
% 2.47/0.99      ( v1_funct_1(k6_relat_1(X0)) ),
% 2.47/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_22,plain,
% 2.47/0.99      ( sP1(X0,X1,X2)
% 2.47/0.99      | ~ v1_funct_1(X1)
% 2.47/0.99      | ~ v1_relat_1(X1)
% 2.47/0.99      | ~ v1_relat_1(X2)
% 2.47/0.99      | ~ v1_relat_1(X0) ),
% 2.47/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_261,plain,
% 2.47/0.99      ( sP1(X0,X1,X2)
% 2.47/0.99      | ~ v1_relat_1(X1)
% 2.47/0.99      | ~ v1_relat_1(X0)
% 2.47/0.99      | ~ v1_relat_1(X2)
% 2.47/0.99      | k6_relat_1(X3) != X1 ),
% 2.47/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_22]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_262,plain,
% 2.47/0.99      ( sP1(X0,k6_relat_1(X1),X2)
% 2.47/0.99      | ~ v1_relat_1(X0)
% 2.47/0.99      | ~ v1_relat_1(X2)
% 2.47/0.99      | ~ v1_relat_1(k6_relat_1(X1)) ),
% 2.47/0.99      inference(unflattening,[status(thm)],[c_261]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_5,plain,
% 2.47/0.99      ( v1_relat_1(k6_relat_1(X0)) ),
% 2.47/0.99      inference(cnf_transformation,[],[f31]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_274,plain,
% 2.47/0.99      ( sP1(X0,k6_relat_1(X1),X2) | ~ v1_relat_1(X0) | ~ v1_relat_1(X2) ),
% 2.47/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_262,c_5]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_9,plain,
% 2.47/0.99      ( ~ sP1(X0,X1,X2) | ~ sP0(X2,X1,X0) | r3_wellord1(X0,X2,X1) ),
% 2.47/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_23,negated_conjecture,
% 2.47/0.99      ( ~ r3_wellord1(sK4,sK4,k6_relat_1(k3_relat_1(sK4))) ),
% 2.47/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_286,plain,
% 2.47/0.99      ( ~ sP1(X0,X1,X2)
% 2.47/0.99      | ~ sP0(X2,X1,X0)
% 2.47/0.99      | k6_relat_1(k3_relat_1(sK4)) != X1
% 2.47/0.99      | sK4 != X2
% 2.47/0.99      | sK4 != X0 ),
% 2.47/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_23]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_287,plain,
% 2.47/0.99      ( ~ sP1(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
% 2.47/0.99      | ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
% 2.47/0.99      inference(unflattening,[status(thm)],[c_286]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_299,plain,
% 2.47/0.99      ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
% 2.47/0.99      | ~ v1_relat_1(X0)
% 2.47/0.99      | ~ v1_relat_1(X1)
% 2.47/0.99      | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X2)
% 2.47/0.99      | sK4 != X1
% 2.47/0.99      | sK4 != X0 ),
% 2.47/0.99      inference(resolution_lifted,[status(thm)],[c_274,c_287]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_300,plain,
% 2.47/0.99      ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
% 2.47/0.99      | ~ v1_relat_1(sK4)
% 2.47/0.99      | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0) ),
% 2.47/0.99      inference(unflattening,[status(thm)],[c_299]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_304,plain,
% 2.47/0.99      ( ~ sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)
% 2.47/0.99      | k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0) ),
% 2.47/0.99      inference(global_propositional_subsumption,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_300,c_24]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2609,plain,
% 2.47/0.99      ( k6_relat_1(k3_relat_1(sK4)) != k6_relat_1(X0)
% 2.47/0.99      | sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_304]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2798,plain,
% 2.47/0.99      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) != iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_2609]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_5185,plain,
% 2.47/0.99      ( r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
% 2.47/0.99      inference(global_propositional_subsumption,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_4990,c_2798]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_8,plain,
% 2.47/0.99      ( ~ r2_hidden(X0,X1) | k1_funct_1(k6_relat_1(X1),X0) = X0 ),
% 2.47/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2621,plain,
% 2.47/0.99      ( k1_funct_1(k6_relat_1(X0),X1) = X1
% 2.47/0.99      | r2_hidden(X1,X0) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_5190,plain,
% 2.47/0.99      ( k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)) = sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_5185,c_2621]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_12,plain,
% 2.47/0.99      ( sP0(X0,X1,X2)
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
% 2.47/0.99      | ~ v2_funct_1(X1)
% 2.47/0.99      | k1_relat_1(X1) != k3_relat_1(X2)
% 2.47/0.99      | k2_relat_1(X1) != k3_relat_1(X0) ),
% 2.47/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2619,plain,
% 2.47/0.99      ( k1_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | k2_relat_1(X0) != k3_relat_1(X2)
% 2.47/0.99      | sP0(X2,X0,X1) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(X0,sK2(X2,X0,X1)),k1_funct_1(X0,sK3(X2,X0,X1))),X2) = iProver_top
% 2.47/0.99      | v2_funct_1(X0) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3858,plain,
% 2.47/0.99      ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
% 2.47/0.99      | k3_relat_1(X2) != X0
% 2.47/0.99      | sP0(X1,k6_relat_1(X0),X2) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X0),sK2(X1,k6_relat_1(X0),X2)),k1_funct_1(k6_relat_1(X0),sK3(X1,k6_relat_1(X0),X2))),X1) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_3,c_2619]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3859,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
% 2.47/0.99      inference(light_normalisation,[status(thm)],[c_3858,c_2]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4515,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) = iProver_top ),
% 2.47/0.99      inference(forward_subsumption_resolution,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_3859,c_2622]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4519,plain,
% 2.47/0.99      ( k3_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK2(X0,k6_relat_1(k3_relat_1(X1)),X1)),k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1))),X0) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_4515]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_5501,plain,
% 2.47/0.99      ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK2(X0,k6_relat_1(k3_relat_1(X0)),X0)),k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0))),X0) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_4519]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_6245,plain,
% 2.47/0.99      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_5190,c_5501]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_14,plain,
% 2.47/0.99      ( sP0(X0,X1,X2)
% 2.47/0.99      | r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
% 2.47/0.99      | ~ v2_funct_1(X1)
% 2.47/0.99      | k1_relat_1(X1) != k3_relat_1(X2)
% 2.47/0.99      | k2_relat_1(X1) != k3_relat_1(X0) ),
% 2.47/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2617,plain,
% 2.47/0.99      ( k1_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | k2_relat_1(X0) != k3_relat_1(X2)
% 2.47/0.99      | sP0(X2,X0,X1) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X2,X0,X1),k3_relat_1(X1)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) = iProver_top
% 2.47/0.99      | v2_funct_1(X0) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3683,plain,
% 2.47/0.99      ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
% 2.47/0.99      | k3_relat_1(X2) != X0
% 2.47/0.99      | sP0(X1,k6_relat_1(X0),X2) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_3,c_2617]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3684,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top
% 2.47/0.99      | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
% 2.47/0.99      inference(light_normalisation,[status(thm)],[c_3683,c_2]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3797,plain,
% 2.47/0.99      ( k3_relat_1(X0) != X1
% 2.47/0.99      | k3_relat_1(X2) != X1
% 2.47/0.99      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) = iProver_top ),
% 2.47/0.99      inference(forward_subsumption_resolution,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_3684,c_2622]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3801,plain,
% 2.47/0.99      ( k3_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_3797]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3933,plain,
% 2.47/0.99      ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) = iProver_top ),
% 2.47/0.99      inference(equality_resolution,[status(thm)],[c_3801]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_1,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(X1))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X1)
% 2.47/0.99      | ~ v1_relat_1(X1) ),
% 2.47/0.99      inference(cnf_transformation,[],[f27]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_342,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(X1))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X0,X2),X1)
% 2.47/0.99      | sK4 != X1 ),
% 2.47/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_24]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_343,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(sK4))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(X0,X1),sK4) ),
% 2.47/0.99      inference(unflattening,[status(thm)],[c_342]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2606,plain,
% 2.47/0.99      ( r2_hidden(X0,k3_relat_1(sK4)) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(X0,X1),sK4) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_343]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3947,plain,
% 2.47/0.99      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
% 2.47/0.99      | r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_3933,c_2606]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4013,plain,
% 2.47/0.99      ( r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) = iProver_top ),
% 2.47/0.99      inference(global_propositional_subsumption,
% 2.47/0.99                [status(thm)],
% 2.47/0.99                [c_3947,c_2798]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_4018,plain,
% 2.47/0.99      ( k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)) = sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) ),
% 2.47/0.99      inference(superposition,[status(thm)],[c_4013,c_2621]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_6321,plain,
% 2.47/0.99      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) = iProver_top ),
% 2.47/0.99      inference(light_normalisation,[status(thm)],[c_6245,c_4018]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_11,plain,
% 2.47/0.99      ( sP0(X0,X1,X2)
% 2.47/0.99      | ~ r2_hidden(sK3(X0,X1,X2),k3_relat_1(X2))
% 2.47/0.99      | ~ r2_hidden(sK2(X0,X1,X2),k3_relat_1(X2))
% 2.47/0.99      | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)
% 2.47/0.99      | ~ r2_hidden(k4_tarski(k1_funct_1(X1,sK2(X0,X1,X2)),k1_funct_1(X1,sK3(X0,X1,X2))),X0)
% 2.47/0.99      | ~ v2_funct_1(X1)
% 2.47/0.99      | k1_relat_1(X1) != k3_relat_1(X2)
% 2.47/0.99      | k2_relat_1(X1) != k3_relat_1(X0) ),
% 2.47/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_2620,plain,
% 2.47/0.99      ( k1_relat_1(X0) != k3_relat_1(X1)
% 2.47/0.99      | k2_relat_1(X0) != k3_relat_1(X2)
% 2.47/0.99      | sP0(X2,X0,X1) = iProver_top
% 2.47/0.99      | r2_hidden(sK3(X2,X0,X1),k3_relat_1(X1)) != iProver_top
% 2.47/0.99      | r2_hidden(sK2(X2,X0,X1),k3_relat_1(X1)) != iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(sK2(X2,X0,X1),sK3(X2,X0,X1)),X1) != iProver_top
% 2.47/0.99      | r2_hidden(k4_tarski(k1_funct_1(X0,sK2(X2,X0,X1)),k1_funct_1(X0,sK3(X2,X0,X1))),X2) != iProver_top
% 2.47/0.99      | v2_funct_1(X0) != iProver_top ),
% 2.47/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.47/0.99  
% 2.47/0.99  cnf(c_3373,plain,
% 2.47/0.99      ( k2_relat_1(k6_relat_1(X0)) != k3_relat_1(X1)
% 2.47/0.99      | k3_relat_1(X2) != X0
% 2.47/1.00      | sP0(X1,k6_relat_1(X0),X2) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(X1,k6_relat_1(X0),X2),k3_relat_1(X2)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(X1,k6_relat_1(X0),X2),sK3(X1,k6_relat_1(X0),X2)),X2) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X0),sK2(X1,k6_relat_1(X0),X2)),k1_funct_1(k6_relat_1(X0),sK3(X1,k6_relat_1(X0),X2))),X1) != iProver_top
% 2.47/1.00      | v2_funct_1(k6_relat_1(X0)) != iProver_top ),
% 2.47/1.00      inference(superposition,[status(thm)],[c_3,c_2620]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_3374,plain,
% 2.47/1.00      ( k3_relat_1(X0) != X1
% 2.47/1.00      | k3_relat_1(X2) != X1
% 2.47/1.00      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) != iProver_top
% 2.47/1.00      | v2_funct_1(k6_relat_1(X1)) != iProver_top ),
% 2.47/1.00      inference(light_normalisation,[status(thm)],[c_3373,c_2]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_3528,plain,
% 2.47/1.00      ( k3_relat_1(X0) != X1
% 2.47/1.00      | k3_relat_1(X2) != X1
% 2.47/1.00      | sP0(X2,k6_relat_1(X1),X0) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(X2,k6_relat_1(X1),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(X2,k6_relat_1(X1),X0),sK3(X2,k6_relat_1(X1),X0)),X0) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(X1),sK2(X2,k6_relat_1(X1),X0)),k1_funct_1(k6_relat_1(X1),sK3(X2,k6_relat_1(X1),X0))),X2) != iProver_top ),
% 2.47/1.00      inference(forward_subsumption_resolution,
% 2.47/1.00                [status(thm)],
% 2.47/1.00                [c_3374,c_2622]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_3532,plain,
% 2.47/1.00      ( k3_relat_1(X0) != k3_relat_1(X1)
% 2.47/1.00      | sP0(X0,k6_relat_1(k3_relat_1(X1)),X1) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),k3_relat_1(X1)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X1)),X1),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1)),X1) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK2(X0,k6_relat_1(k3_relat_1(X1)),X1)),k1_funct_1(k6_relat_1(k3_relat_1(X1)),sK3(X0,k6_relat_1(k3_relat_1(X1)),X1))),X0) != iProver_top ),
% 2.47/1.00      inference(equality_resolution,[status(thm)],[c_3528]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_3543,plain,
% 2.47/1.00      ( sP0(X0,k6_relat_1(k3_relat_1(X0)),X0) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),k3_relat_1(X0)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(X0,k6_relat_1(k3_relat_1(X0)),X0),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0)),X0) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK2(X0,k6_relat_1(k3_relat_1(X0)),X0)),k1_funct_1(k6_relat_1(k3_relat_1(X0)),sK3(X0,k6_relat_1(k3_relat_1(X0)),X0))),X0) != iProver_top ),
% 2.47/1.00      inference(equality_resolution,[status(thm)],[c_3532]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_4022,plain,
% 2.47/1.00      ( sP0(sK4,k6_relat_1(k3_relat_1(sK4)),sK4) = iProver_top
% 2.47/1.00      | r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
% 2.47/1.00      | r2_hidden(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
% 2.47/1.00      inference(superposition,[status(thm)],[c_4018,c_3543]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_4294,plain,
% 2.47/1.00      ( r2_hidden(sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k3_relat_1(sK4)) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
% 2.47/1.00      inference(global_propositional_subsumption,
% 2.47/1.00                [status(thm)],
% 2.47/1.00                [c_4022,c_2798,c_3947]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_4301,plain,
% 2.47/1.00      ( r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top
% 2.47/1.00      | r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),k1_funct_1(k6_relat_1(k3_relat_1(sK4)),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4))),sK4) != iProver_top ),
% 2.47/1.00      inference(forward_subsumption_resolution,
% 2.47/1.00                [status(thm)],
% 2.47/1.00                [c_4294,c_2605]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(c_5192,plain,
% 2.47/1.00      ( r2_hidden(k4_tarski(sK2(sK4,k6_relat_1(k3_relat_1(sK4)),sK4),sK3(sK4,k6_relat_1(k3_relat_1(sK4)),sK4)),sK4) != iProver_top ),
% 2.47/1.00      inference(demodulation,[status(thm)],[c_5190,c_4301]) ).
% 2.47/1.00  
% 2.47/1.00  cnf(contradiction,plain,
% 2.47/1.00      ( $false ),
% 2.47/1.00      inference(minisat,[status(thm)],[c_6321,c_5192,c_2798]) ).
% 2.47/1.00  
% 2.47/1.00  
% 2.47/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.47/1.00  
% 2.47/1.00  ------                               Statistics
% 2.47/1.00  
% 2.47/1.00  ------ General
% 2.47/1.00  
% 2.47/1.00  abstr_ref_over_cycles:                  0
% 2.47/1.00  abstr_ref_under_cycles:                 0
% 2.47/1.00  gc_basic_clause_elim:                   0
% 2.47/1.00  forced_gc_time:                         0
% 2.47/1.00  parsing_time:                           0.012
% 2.47/1.00  unif_index_cands_time:                  0.
% 2.47/1.00  unif_index_add_time:                    0.
% 2.47/1.00  orderings_time:                         0.
% 2.47/1.00  out_proof_time:                         0.013
% 2.47/1.00  total_time:                             0.218
% 2.47/1.00  num_of_symbols:                         47
% 2.47/1.00  num_of_terms:                           6325
% 2.47/1.00  
% 2.47/1.00  ------ Preprocessing
% 2.47/1.00  
% 2.47/1.00  num_of_splits:                          0
% 2.47/1.00  num_of_split_atoms:                     0
% 2.47/1.00  num_of_reused_defs:                     0
% 2.47/1.00  num_eq_ax_congr_red:                    24
% 2.47/1.00  num_of_sem_filtered_clauses:            1
% 2.47/1.00  num_of_subtypes:                        0
% 2.47/1.00  monotx_restored_types:                  0
% 2.47/1.00  sat_num_of_epr_types:                   0
% 2.47/1.00  sat_num_of_non_cyclic_types:            0
% 2.47/1.00  sat_guarded_non_collapsed_types:        0
% 2.47/1.00  num_pure_diseq_elim:                    0
% 2.47/1.00  simp_replaced_by:                       0
% 2.47/1.00  res_preprocessed:                       107
% 2.47/1.00  prep_upred:                             0
% 2.47/1.00  prep_unflattend:                        42
% 2.47/1.00  smt_new_axioms:                         0
% 2.47/1.00  pred_elim_cands:                        3
% 2.47/1.00  pred_elim:                              4
% 2.47/1.00  pred_elim_cl:                           4
% 2.47/1.00  pred_elim_cycles:                       8
% 2.47/1.00  merged_defs:                            0
% 2.47/1.00  merged_defs_ncl:                        0
% 2.47/1.00  bin_hyper_res:                          0
% 2.47/1.00  prep_cycles:                            4
% 2.47/1.00  pred_elim_time:                         0.033
% 2.47/1.00  splitting_time:                         0.
% 2.47/1.00  sem_filter_time:                        0.
% 2.47/1.00  monotx_time:                            0.001
% 2.47/1.00  subtype_inf_time:                       0.
% 2.47/1.00  
% 2.47/1.00  ------ Problem properties
% 2.47/1.00  
% 2.47/1.00  clauses:                                20
% 2.47/1.00  conjectures:                            0
% 2.47/1.00  epr:                                    1
% 2.47/1.00  horn:                                   17
% 2.47/1.00  ground:                                 0
% 2.47/1.00  unary:                                  3
% 2.47/1.00  binary:                                 9
% 2.47/1.00  lits:                                   61
% 2.47/1.00  lits_eq:                                14
% 2.47/1.00  fd_pure:                                0
% 2.47/1.00  fd_pseudo:                              0
% 2.47/1.00  fd_cond:                                0
% 2.47/1.00  fd_pseudo_cond:                         0
% 2.47/1.00  ac_symbols:                             0
% 2.47/1.00  
% 2.47/1.00  ------ Propositional Solver
% 2.47/1.00  
% 2.47/1.00  prop_solver_calls:                      30
% 2.47/1.00  prop_fast_solver_calls:                 1297
% 2.47/1.00  smt_solver_calls:                       0
% 2.47/1.00  smt_fast_solver_calls:                  0
% 2.47/1.00  prop_num_of_clauses:                    1691
% 2.47/1.00  prop_preprocess_simplified:             6202
% 2.47/1.00  prop_fo_subsumed:                       23
% 2.47/1.00  prop_solver_time:                       0.
% 2.47/1.00  smt_solver_time:                        0.
% 2.47/1.00  smt_fast_solver_time:                   0.
% 2.47/1.00  prop_fast_solver_time:                  0.
% 2.47/1.00  prop_unsat_core_time:                   0.
% 2.47/1.00  
% 2.47/1.00  ------ QBF
% 2.47/1.00  
% 2.47/1.00  qbf_q_res:                              0
% 2.47/1.00  qbf_num_tautologies:                    0
% 2.47/1.00  qbf_prep_cycles:                        0
% 2.47/1.00  
% 2.47/1.00  ------ BMC1
% 2.47/1.00  
% 2.47/1.00  bmc1_current_bound:                     -1
% 2.47/1.00  bmc1_last_solved_bound:                 -1
% 2.47/1.00  bmc1_unsat_core_size:                   -1
% 2.47/1.00  bmc1_unsat_core_parents_size:           -1
% 2.47/1.00  bmc1_merge_next_fun:                    0
% 2.47/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.47/1.00  
% 2.47/1.00  ------ Instantiation
% 2.47/1.00  
% 2.47/1.00  inst_num_of_clauses:                    568
% 2.47/1.00  inst_num_in_passive:                    274
% 2.47/1.00  inst_num_in_active:                     266
% 2.47/1.00  inst_num_in_unprocessed:                28
% 2.47/1.00  inst_num_of_loops:                      290
% 2.47/1.00  inst_num_of_learning_restarts:          0
% 2.47/1.00  inst_num_moves_active_passive:          19
% 2.47/1.00  inst_lit_activity:                      0
% 2.47/1.00  inst_lit_activity_moves:                0
% 2.47/1.00  inst_num_tautologies:                   0
% 2.47/1.00  inst_num_prop_implied:                  0
% 2.47/1.00  inst_num_existing_simplified:           0
% 2.47/1.00  inst_num_eq_res_simplified:             0
% 2.47/1.00  inst_num_child_elim:                    0
% 2.47/1.00  inst_num_of_dismatching_blockings:      392
% 2.47/1.00  inst_num_of_non_proper_insts:           584
% 2.47/1.00  inst_num_of_duplicates:                 0
% 2.47/1.00  inst_inst_num_from_inst_to_res:         0
% 2.47/1.00  inst_dismatching_checking_time:         0.
% 2.47/1.00  
% 2.47/1.00  ------ Resolution
% 2.47/1.00  
% 2.47/1.00  res_num_of_clauses:                     0
% 2.47/1.00  res_num_in_passive:                     0
% 2.47/1.00  res_num_in_active:                      0
% 2.47/1.00  res_num_of_loops:                       111
% 2.47/1.00  res_forward_subset_subsumed:            53
% 2.47/1.00  res_backward_subset_subsumed:           4
% 2.47/1.00  res_forward_subsumed:                   0
% 2.47/1.00  res_backward_subsumed:                  0
% 2.47/1.00  res_forward_subsumption_resolution:     15
% 2.47/1.00  res_backward_subsumption_resolution:    0
% 2.47/1.00  res_clause_to_clause_subsumption:       227
% 2.47/1.00  res_orphan_elimination:                 0
% 2.47/1.00  res_tautology_del:                      117
% 2.47/1.00  res_num_eq_res_simplified:              0
% 2.47/1.00  res_num_sel_changes:                    0
% 2.47/1.00  res_moves_from_active_to_pass:          0
% 2.47/1.00  
% 2.47/1.00  ------ Superposition
% 2.47/1.00  
% 2.47/1.00  sup_time_total:                         0.
% 2.47/1.00  sup_time_generating:                    0.
% 2.47/1.00  sup_time_sim_full:                      0.
% 2.47/1.00  sup_time_sim_immed:                     0.
% 2.47/1.00  
% 2.47/1.00  sup_num_of_clauses:                     64
% 2.47/1.00  sup_num_in_active:                      56
% 2.47/1.00  sup_num_in_passive:                     8
% 2.47/1.00  sup_num_of_loops:                       56
% 2.47/1.00  sup_fw_superposition:                   18
% 2.47/1.00  sup_bw_superposition:                   60
% 2.47/1.00  sup_immediate_simplified:               38
% 2.47/1.00  sup_given_eliminated:                   0
% 2.47/1.00  comparisons_done:                       0
% 2.47/1.00  comparisons_avoided:                    6
% 2.47/1.00  
% 2.47/1.00  ------ Simplifications
% 2.47/1.00  
% 2.47/1.00  
% 2.47/1.00  sim_fw_subset_subsumed:                 15
% 2.47/1.00  sim_bw_subset_subsumed:                 1
% 2.47/1.00  sim_fw_subsumed:                        7
% 2.47/1.00  sim_bw_subsumed:                        2
% 2.47/1.00  sim_fw_subsumption_res:                 5
% 2.47/1.00  sim_bw_subsumption_res:                 0
% 2.47/1.00  sim_tautology_del:                      1
% 2.47/1.00  sim_eq_tautology_del:                   8
% 2.47/1.00  sim_eq_res_simp:                        0
% 2.47/1.00  sim_fw_demodulated:                     8
% 2.47/1.00  sim_bw_demodulated:                     1
% 2.47/1.00  sim_light_normalised:                   7
% 2.47/1.00  sim_joinable_taut:                      0
% 2.47/1.00  sim_joinable_simp:                      0
% 2.47/1.00  sim_ac_normalised:                      0
% 2.47/1.00  sim_smt_subsumption:                    0
% 2.47/1.00  
%------------------------------------------------------------------------------
