%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:52:55 EST 2020

% Result     : Theorem 2.68s
% Output     : CNFRefutation 2.68s
% Verified   : 
% Statistics : Number of formulae       :  147 ( 751 expanded)
%              Number of clauses        :   91 ( 226 expanded)
%              Number of leaves         :   17 ( 187 expanded)
%              Depth                    :   21
%              Number of atoms          :  491 (5029 expanded)
%              Number of equality atoms :  157 ( 284 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ! [X2] :
              ( r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))
            <=> ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                & r1_tarski(X2,k1_relat_1(X0)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ( v1_funct_1(X0)
          & v1_relat_1(X0) )
       => ! [X1] :
            ( ( v1_funct_1(X1)
              & v1_relat_1(X1) )
           => ! [X2] :
                ( r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))
              <=> ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                  & r1_tarski(X2,k1_relat_1(X0)) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f31,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))
            <~> ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                & r1_tarski(X2,k1_relat_1(X0)) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))
            <~> ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                & r1_tarski(X2,k1_relat_1(X0)) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f31])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                | ~ r1_tarski(X2,k1_relat_1(X0))
                | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) )
              & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                  & r1_tarski(X2,k1_relat_1(X0)) )
                | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f32])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                | ~ r1_tarski(X2,k1_relat_1(X0))
                | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) )
              & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                  & r1_tarski(X2,k1_relat_1(X0)) )
                | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(X0)
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f33])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
            | ~ r1_tarski(X2,k1_relat_1(X0))
            | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) )
          & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
              & r1_tarski(X2,k1_relat_1(X0)) )
            | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) ) )
     => ( ( ~ r1_tarski(k9_relat_1(X0,sK2),k1_relat_1(X1))
          | ~ r1_tarski(sK2,k1_relat_1(X0))
          | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(X0,X1))) )
        & ( ( r1_tarski(k9_relat_1(X0,sK2),k1_relat_1(X1))
            & r1_tarski(sK2,k1_relat_1(X0)) )
          | r1_tarski(sK2,k1_relat_1(k5_relat_1(X0,X1))) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                | ~ r1_tarski(X2,k1_relat_1(X0))
                | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) )
              & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                  & r1_tarski(X2,k1_relat_1(X0)) )
                | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
     => ( ? [X2] :
            ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(sK1))
              | ~ r1_tarski(X2,k1_relat_1(X0))
              | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,sK1))) )
            & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(sK1))
                & r1_tarski(X2,k1_relat_1(X0)) )
              | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,sK1))) ) )
        & v1_funct_1(sK1)
        & v1_relat_1(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ( ~ r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                  | ~ r1_tarski(X2,k1_relat_1(X0))
                  | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) )
                & ( ( r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1))
                    & r1_tarski(X2,k1_relat_1(X0)) )
                  | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) ) )
            & v1_funct_1(X1)
            & v1_relat_1(X1) )
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ( ~ r1_tarski(k9_relat_1(sK0,X2),k1_relat_1(X1))
                | ~ r1_tarski(X2,k1_relat_1(sK0))
                | ~ r1_tarski(X2,k1_relat_1(k5_relat_1(sK0,X1))) )
              & ( ( r1_tarski(k9_relat_1(sK0,X2),k1_relat_1(X1))
                  & r1_tarski(X2,k1_relat_1(sK0)) )
                | r1_tarski(X2,k1_relat_1(k5_relat_1(sK0,X1))) ) )
          & v1_funct_1(X1)
          & v1_relat_1(X1) )
      & v1_funct_1(sK0)
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ~ r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
      | ~ r1_tarski(sK2,k1_relat_1(sK0))
      | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) )
    & ( ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
        & r1_tarski(sK2,k1_relat_1(sK0)) )
      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) )
    & v1_funct_1(sK1)
    & v1_relat_1(sK1)
    & v1_funct_1(sK0)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f34,f37,f36,f35])).

fof(f56,plain,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_relat_1(X2) )
     => ( ( r1_tarski(k9_relat_1(X2,X0),X1)
          & r1_tarski(X0,k1_relat_1(X2)) )
       => r1_tarski(X0,k10_relat_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k10_relat_1(X2,X1))
      | ~ r1_tarski(k9_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k10_relat_1(X2,X1))
      | ~ r1_tarski(k9_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f27])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X2,X1))
      | ~ r1_tarski(k9_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,k1_relat_1(X2))
      | ~ v1_funct_1(X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f51,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f52,plain,(
    v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f53,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f38])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f55,plain,
    ( r1_tarski(sK2,k1_relat_1(sK0))
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f14])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(X0,k1_relat_1(X1))
       => k1_relat_1(k7_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f23])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f17,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f40,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f11,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( k1_relat_1(X1) = k1_relat_1(k5_relat_1(X1,X0))
           => r1_tarski(k2_relat_1(X1),k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(X1),k1_relat_1(X0))
          | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(X1),k1_relat_1(X0))
          | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f29])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),k1_relat_1(X0))
      | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( v1_funct_1(k7_relat_1(X0,X1))
        & v1_relat_1(k7_relat_1(X0,X1)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f48,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k7_relat_1(X0,X1))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f41,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f57,plain,
    ( ~ r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
    | ~ r1_tarski(sK2,k1_relat_1(sK0))
    | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f54,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_13,negated_conjecture,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_338,negated_conjecture,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_704,plain,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) = iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_338])).

cnf(c_10,plain,
    ( r1_tarski(X0,k10_relat_1(X1,X2))
    | ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ r1_tarski(k9_relat_1(X1,X0),X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_341,plain,
    ( r1_tarski(X0_41,k10_relat_1(X0_40,X1_41))
    | ~ r1_tarski(X0_41,k1_relat_1(X0_40))
    | ~ r1_tarski(k9_relat_1(X0_40,X0_41),X1_41)
    | ~ v1_funct_1(X0_40)
    | ~ v1_relat_1(X0_40) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_701,plain,
    ( r1_tarski(X0_41,k10_relat_1(X0_40,X1_41)) = iProver_top
    | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
    | r1_tarski(k9_relat_1(X0_40,X0_41),X1_41) != iProver_top
    | v1_funct_1(X0_40) != iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_341])).

cnf(c_1905,plain,
    ( r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top
    | v1_funct_1(sK0) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_704,c_701])).

cnf(c_18,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_19,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_17,negated_conjecture,
    ( v1_funct_1(sK0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_20,plain,
    ( v1_funct_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_16,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_353,plain,
    ( X0_41 = X0_41 ),
    theory(equality)).

cnf(c_376,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_353])).

cnf(c_356,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | r1_tarski(X2_41,X3_41)
    | X2_41 != X0_41
    | X3_41 != X1_41 ),
    theory(equality)).

cnf(c_863,plain,
    ( r1_tarski(X0_41,X1_41)
    | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | X1_41 != k1_relat_1(k5_relat_1(sK0,sK1))
    | X0_41 != sK2 ),
    inference(instantiation,[status(thm)],[c_356])).

cnf(c_920,plain,
    ( r1_tarski(X0_41,k10_relat_1(sK0,k1_relat_1(sK1)))
    | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | X0_41 != sK2
    | k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_863])).

cnf(c_922,plain,
    ( X0_41 != sK2
    | k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1))
    | r1_tarski(X0_41,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_920])).

cnf(c_924,plain,
    ( k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1))
    | sK2 != sK2
    | r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_922])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_345,plain,
    ( ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40)
    | k10_relat_1(X1_40,k1_relat_1(X0_40)) = k1_relat_1(k5_relat_1(X1_40,X0_40)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_921,plain,
    ( ~ v1_relat_1(sK1)
    | ~ v1_relat_1(sK0)
    | k10_relat_1(sK0,k1_relat_1(sK1)) = k1_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_345])).

cnf(c_14,negated_conjecture,
    ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | r1_tarski(sK2,k1_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_337,negated_conjecture,
    ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | r1_tarski(sK2,k1_relat_1(sK0)) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_705,plain,
    ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_337])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X0)
    | r1_tarski(X2,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_350,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | ~ r1_tarski(X2_41,X0_41)
    | r1_tarski(X2_41,X1_41) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_692,plain,
    ( r1_tarski(X0_41,X1_41) != iProver_top
    | r1_tarski(X2_41,X0_41) != iProver_top
    | r1_tarski(X2_41,X1_41) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_350])).

cnf(c_981,plain,
    ( r1_tarski(X0_41,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
    | r1_tarski(X0_41,sK2) != iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_705,c_692])).

cnf(c_21,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_23,plain,
    ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_858,plain,
    ( r1_tarski(X0_41,k1_relat_1(X0_40))
    | ~ r1_tarski(X0_41,k1_relat_1(k5_relat_1(X0_40,X1_40)))
    | ~ r1_tarski(k1_relat_1(k5_relat_1(X0_40,X1_40)),k1_relat_1(X0_40)) ),
    inference(instantiation,[status(thm)],[c_350])).

cnf(c_946,plain,
    ( ~ r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0))
    | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | r1_tarski(sK2,k1_relat_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_858])).

cnf(c_947,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0)) != iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_946])).

cnf(c_6,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_344,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(X0_40,X1_40)),k1_relat_1(X0_40))
    | ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_1014,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0))
    | ~ v1_relat_1(sK1)
    | ~ v1_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_344])).

cnf(c_1015,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0)) = iProver_top
    | v1_relat_1(sK1) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1014])).

cnf(c_1301,plain,
    ( r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_981,c_19,c_21,c_23,c_947,c_1015])).

cnf(c_3616,plain,
    ( r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1905,c_18,c_19,c_20,c_16,c_21,c_23,c_376,c_924,c_921,c_947,c_1015])).

cnf(c_335,negated_conjecture,
    ( v1_relat_1(sK1) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_707,plain,
    ( v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_335])).

cnf(c_333,negated_conjecture,
    ( v1_relat_1(sK0) ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_709,plain,
    ( v1_relat_1(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_333])).

cnf(c_697,plain,
    ( k10_relat_1(X0_40,k1_relat_1(X1_40)) = k1_relat_1(k5_relat_1(X0_40,X1_40))
    | v1_relat_1(X1_40) != iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_345])).

cnf(c_1748,plain,
    ( k10_relat_1(sK0,k1_relat_1(X0_40)) = k1_relat_1(k5_relat_1(sK0,X0_40))
    | v1_relat_1(X0_40) != iProver_top ),
    inference(superposition,[status(thm)],[c_709,c_697])).

cnf(c_2263,plain,
    ( k10_relat_1(sK0,k1_relat_1(sK1)) = k1_relat_1(k5_relat_1(sK0,sK1)) ),
    inference(superposition,[status(thm)],[c_707,c_1748])).

cnf(c_3620,plain,
    ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3616,c_2263])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_relat_1(k7_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_343,plain,
    ( ~ r1_tarski(X0_41,k1_relat_1(X0_40))
    | ~ v1_relat_1(X0_40)
    | k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41 ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_699,plain,
    ( k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41
    | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_343])).

cnf(c_3624,plain,
    ( k1_relat_1(k7_relat_1(k5_relat_1(sK0,sK1),sK2)) = sK2
    | v1_relat_1(k5_relat_1(sK0,sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3620,c_699])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_347,plain,
    ( ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40)
    | k7_relat_1(k5_relat_1(X0_40,X1_40),X0_41) = k5_relat_1(k7_relat_1(X0_40,X0_41),X1_40) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_695,plain,
    ( k7_relat_1(k5_relat_1(X0_40,X1_40),X0_41) = k5_relat_1(k7_relat_1(X0_40,X0_41),X1_40)
    | v1_relat_1(X0_40) != iProver_top
    | v1_relat_1(X1_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_347])).

cnf(c_1577,plain,
    ( k7_relat_1(k5_relat_1(sK0,X0_40),X0_41) = k5_relat_1(k7_relat_1(sK0,X0_41),X0_40)
    | v1_relat_1(X0_40) != iProver_top ),
    inference(superposition,[status(thm)],[c_709,c_695])).

cnf(c_3181,plain,
    ( k7_relat_1(k5_relat_1(sK0,sK1),X0_41) = k5_relat_1(k7_relat_1(sK0,X0_41),sK1) ),
    inference(superposition,[status(thm)],[c_707,c_1577])).

cnf(c_3633,plain,
    ( k1_relat_1(k5_relat_1(k7_relat_1(sK0,sK2),sK1)) = sK2
    | v1_relat_1(k5_relat_1(sK0,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3624,c_3181])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_349,plain,
    ( ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40)
    | v1_relat_1(k5_relat_1(X1_40,X0_40)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_970,plain,
    ( v1_relat_1(k5_relat_1(sK0,sK1))
    | ~ v1_relat_1(sK1)
    | ~ v1_relat_1(sK0) ),
    inference(instantiation,[status(thm)],[c_349])).

cnf(c_971,plain,
    ( v1_relat_1(k5_relat_1(sK0,sK1)) = iProver_top
    | v1_relat_1(sK1) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_970])).

cnf(c_4598,plain,
    ( k1_relat_1(k5_relat_1(k7_relat_1(sK0,sK2),sK1)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3633,c_19,c_21,c_971])).

cnf(c_11,plain,
    ( r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k1_relat_1(k5_relat_1(X0,X1)) != k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_340,plain,
    ( r1_tarski(k2_relat_1(X0_40),k1_relat_1(X1_40))
    | ~ v1_funct_1(X1_40)
    | ~ v1_funct_1(X0_40)
    | ~ v1_relat_1(X0_40)
    | ~ v1_relat_1(X1_40)
    | k1_relat_1(k5_relat_1(X0_40,X1_40)) != k1_relat_1(X0_40) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_702,plain,
    ( k1_relat_1(k5_relat_1(X0_40,X1_40)) != k1_relat_1(X0_40)
    | r1_tarski(k2_relat_1(X0_40),k1_relat_1(X1_40)) = iProver_top
    | v1_funct_1(X1_40) != iProver_top
    | v1_funct_1(X0_40) != iProver_top
    | v1_relat_1(X0_40) != iProver_top
    | v1_relat_1(X1_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_340])).

cnf(c_4601,plain,
    ( k1_relat_1(k7_relat_1(sK0,sK2)) != sK2
    | r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
    | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_4598,c_702])).

cnf(c_1617,plain,
    ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2
    | v1_relat_1(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1301,c_699])).

cnf(c_392,plain,
    ( k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41
    | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_343])).

cnf(c_394,plain,
    ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2
    | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_392])).

cnf(c_2714,plain,
    ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1617,c_19,c_21,c_23,c_394,c_947,c_1015])).

cnf(c_4630,plain,
    ( sK2 != sK2
    | r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
    | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4601,c_2714])).

cnf(c_4631,plain,
    ( r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
    | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_4630])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_346,plain,
    ( ~ v1_relat_1(X0_40)
    | k2_relat_1(k7_relat_1(X0_40,X0_41)) = k9_relat_1(X0_40,X0_41) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_696,plain,
    ( k2_relat_1(k7_relat_1(X0_40,X0_41)) = k9_relat_1(X0_40,X0_41)
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_346])).

cnf(c_1050,plain,
    ( k2_relat_1(k7_relat_1(sK0,X0_41)) = k9_relat_1(sK0,X0_41) ),
    inference(superposition,[status(thm)],[c_709,c_696])).

cnf(c_4632,plain,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) = iProver_top
    | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4631,c_1050])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k7_relat_1(X0,X1))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_342,plain,
    ( ~ v1_funct_1(X0_40)
    | v1_funct_1(k7_relat_1(X0_40,X0_41))
    | ~ v1_relat_1(X0_40) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_395,plain,
    ( v1_funct_1(X0_40) != iProver_top
    | v1_funct_1(k7_relat_1(X0_40,X0_41)) = iProver_top
    | v1_relat_1(X0_40) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_342])).

cnf(c_397,plain,
    ( v1_funct_1(k7_relat_1(sK0,sK2)) = iProver_top
    | v1_funct_1(sK0) != iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_395])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_348,plain,
    ( ~ v1_relat_1(X0_40)
    | v1_relat_1(k7_relat_1(X0_40,X0_41)) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_379,plain,
    ( v1_relat_1(X0_40) != iProver_top
    | v1_relat_1(k7_relat_1(X0_40,X0_41)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_348])).

cnf(c_381,plain,
    ( v1_relat_1(k7_relat_1(sK0,sK2)) = iProver_top
    | v1_relat_1(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_379])).

cnf(c_12,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
    | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
    | ~ r1_tarski(sK2,k1_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_25,plain,
    ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) != iProver_top
    | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top
    | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_22,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4632,c_3620,c_1301,c_397,c_381,c_25,c_22,c_21,c_20,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:06:27 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.68/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.68/0.98  
% 2.68/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.68/0.98  
% 2.68/0.98  ------  iProver source info
% 2.68/0.98  
% 2.68/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.68/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.68/0.98  git: non_committed_changes: false
% 2.68/0.98  git: last_make_outside_of_git: false
% 2.68/0.98  
% 2.68/0.98  ------ 
% 2.68/0.98  
% 2.68/0.98  ------ Input Options
% 2.68/0.98  
% 2.68/0.98  --out_options                           all
% 2.68/0.98  --tptp_safe_out                         true
% 2.68/0.98  --problem_path                          ""
% 2.68/0.98  --include_path                          ""
% 2.68/0.98  --clausifier                            res/vclausify_rel
% 2.68/0.98  --clausifier_options                    --mode clausify
% 2.68/0.98  --stdin                                 false
% 2.68/0.98  --stats_out                             all
% 2.68/0.98  
% 2.68/0.98  ------ General Options
% 2.68/0.98  
% 2.68/0.98  --fof                                   false
% 2.68/0.98  --time_out_real                         305.
% 2.68/0.98  --time_out_virtual                      -1.
% 2.68/0.98  --symbol_type_check                     false
% 2.68/0.98  --clausify_out                          false
% 2.68/0.98  --sig_cnt_out                           false
% 2.68/0.98  --trig_cnt_out                          false
% 2.68/0.98  --trig_cnt_out_tolerance                1.
% 2.68/0.98  --trig_cnt_out_sk_spl                   false
% 2.68/0.98  --abstr_cl_out                          false
% 2.68/0.98  
% 2.68/0.98  ------ Global Options
% 2.68/0.98  
% 2.68/0.98  --schedule                              default
% 2.68/0.98  --add_important_lit                     false
% 2.68/0.98  --prop_solver_per_cl                    1000
% 2.68/0.98  --min_unsat_core                        false
% 2.68/0.98  --soft_assumptions                      false
% 2.68/0.98  --soft_lemma_size                       3
% 2.68/0.98  --prop_impl_unit_size                   0
% 2.68/0.98  --prop_impl_unit                        []
% 2.68/0.98  --share_sel_clauses                     true
% 2.68/0.98  --reset_solvers                         false
% 2.68/0.98  --bc_imp_inh                            [conj_cone]
% 2.68/0.98  --conj_cone_tolerance                   3.
% 2.68/0.98  --extra_neg_conj                        none
% 2.68/0.98  --large_theory_mode                     true
% 2.68/0.98  --prolific_symb_bound                   200
% 2.68/0.98  --lt_threshold                          2000
% 2.68/0.98  --clause_weak_htbl                      true
% 2.68/0.98  --gc_record_bc_elim                     false
% 2.68/0.98  
% 2.68/0.98  ------ Preprocessing Options
% 2.68/0.98  
% 2.68/0.98  --preprocessing_flag                    true
% 2.68/0.98  --time_out_prep_mult                    0.1
% 2.68/0.98  --splitting_mode                        input
% 2.68/0.98  --splitting_grd                         true
% 2.68/0.98  --splitting_cvd                         false
% 2.68/0.98  --splitting_cvd_svl                     false
% 2.68/0.98  --splitting_nvd                         32
% 2.68/0.98  --sub_typing                            true
% 2.68/0.98  --prep_gs_sim                           true
% 2.68/0.98  --prep_unflatten                        true
% 2.68/0.98  --prep_res_sim                          true
% 2.68/0.98  --prep_upred                            true
% 2.68/0.98  --prep_sem_filter                       exhaustive
% 2.68/0.98  --prep_sem_filter_out                   false
% 2.68/0.98  --pred_elim                             true
% 2.68/0.98  --res_sim_input                         true
% 2.68/0.98  --eq_ax_congr_red                       true
% 2.68/0.98  --pure_diseq_elim                       true
% 2.68/0.98  --brand_transform                       false
% 2.68/0.98  --non_eq_to_eq                          false
% 2.68/0.98  --prep_def_merge                        true
% 2.68/0.98  --prep_def_merge_prop_impl              false
% 2.68/0.98  --prep_def_merge_mbd                    true
% 2.68/0.98  --prep_def_merge_tr_red                 false
% 2.68/0.98  --prep_def_merge_tr_cl                  false
% 2.68/0.98  --smt_preprocessing                     true
% 2.68/0.98  --smt_ac_axioms                         fast
% 2.68/0.98  --preprocessed_out                      false
% 2.68/0.98  --preprocessed_stats                    false
% 2.68/0.98  
% 2.68/0.98  ------ Abstraction refinement Options
% 2.68/0.98  
% 2.68/0.98  --abstr_ref                             []
% 2.68/0.98  --abstr_ref_prep                        false
% 2.68/0.98  --abstr_ref_until_sat                   false
% 2.68/0.98  --abstr_ref_sig_restrict                funpre
% 2.68/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.68/0.98  --abstr_ref_under                       []
% 2.68/0.98  
% 2.68/0.98  ------ SAT Options
% 2.68/0.98  
% 2.68/0.98  --sat_mode                              false
% 2.68/0.98  --sat_fm_restart_options                ""
% 2.68/0.98  --sat_gr_def                            false
% 2.68/0.98  --sat_epr_types                         true
% 2.68/0.98  --sat_non_cyclic_types                  false
% 2.68/0.98  --sat_finite_models                     false
% 2.68/0.98  --sat_fm_lemmas                         false
% 2.68/0.98  --sat_fm_prep                           false
% 2.68/0.98  --sat_fm_uc_incr                        true
% 2.68/0.98  --sat_out_model                         small
% 2.68/0.98  --sat_out_clauses                       false
% 2.68/0.98  
% 2.68/0.98  ------ QBF Options
% 2.68/0.98  
% 2.68/0.98  --qbf_mode                              false
% 2.68/0.98  --qbf_elim_univ                         false
% 2.68/0.98  --qbf_dom_inst                          none
% 2.68/0.98  --qbf_dom_pre_inst                      false
% 2.68/0.98  --qbf_sk_in                             false
% 2.68/0.98  --qbf_pred_elim                         true
% 2.68/0.98  --qbf_split                             512
% 2.68/0.98  
% 2.68/0.98  ------ BMC1 Options
% 2.68/0.98  
% 2.68/0.98  --bmc1_incremental                      false
% 2.68/0.98  --bmc1_axioms                           reachable_all
% 2.68/0.98  --bmc1_min_bound                        0
% 2.68/0.98  --bmc1_max_bound                        -1
% 2.68/0.98  --bmc1_max_bound_default                -1
% 2.68/0.98  --bmc1_symbol_reachability              true
% 2.68/0.98  --bmc1_property_lemmas                  false
% 2.68/0.98  --bmc1_k_induction                      false
% 2.68/0.98  --bmc1_non_equiv_states                 false
% 2.68/0.98  --bmc1_deadlock                         false
% 2.68/0.98  --bmc1_ucm                              false
% 2.68/0.98  --bmc1_add_unsat_core                   none
% 2.68/0.98  --bmc1_unsat_core_children              false
% 2.68/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.68/0.98  --bmc1_out_stat                         full
% 2.68/0.98  --bmc1_ground_init                      false
% 2.68/0.98  --bmc1_pre_inst_next_state              false
% 2.68/0.98  --bmc1_pre_inst_state                   false
% 2.68/0.98  --bmc1_pre_inst_reach_state             false
% 2.68/0.98  --bmc1_out_unsat_core                   false
% 2.68/0.98  --bmc1_aig_witness_out                  false
% 2.68/0.98  --bmc1_verbose                          false
% 2.68/0.98  --bmc1_dump_clauses_tptp                false
% 2.68/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.68/0.98  --bmc1_dump_file                        -
% 2.68/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.68/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.68/0.98  --bmc1_ucm_extend_mode                  1
% 2.68/0.98  --bmc1_ucm_init_mode                    2
% 2.68/0.98  --bmc1_ucm_cone_mode                    none
% 2.68/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.68/0.98  --bmc1_ucm_relax_model                  4
% 2.68/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.68/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.68/0.98  --bmc1_ucm_layered_model                none
% 2.68/0.98  --bmc1_ucm_max_lemma_size               10
% 2.68/0.98  
% 2.68/0.98  ------ AIG Options
% 2.68/0.98  
% 2.68/0.98  --aig_mode                              false
% 2.68/0.98  
% 2.68/0.98  ------ Instantiation Options
% 2.68/0.98  
% 2.68/0.98  --instantiation_flag                    true
% 2.68/0.98  --inst_sos_flag                         false
% 2.68/0.98  --inst_sos_phase                        true
% 2.68/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.68/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.68/0.98  --inst_lit_sel_side                     num_symb
% 2.68/0.98  --inst_solver_per_active                1400
% 2.68/0.98  --inst_solver_calls_frac                1.
% 2.68/0.98  --inst_passive_queue_type               priority_queues
% 2.68/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.68/0.98  --inst_passive_queues_freq              [25;2]
% 2.68/0.98  --inst_dismatching                      true
% 2.68/0.98  --inst_eager_unprocessed_to_passive     true
% 2.68/0.98  --inst_prop_sim_given                   true
% 2.68/0.98  --inst_prop_sim_new                     false
% 2.68/0.98  --inst_subs_new                         false
% 2.68/0.98  --inst_eq_res_simp                      false
% 2.68/0.98  --inst_subs_given                       false
% 2.68/0.98  --inst_orphan_elimination               true
% 2.68/0.98  --inst_learning_loop_flag               true
% 2.68/0.98  --inst_learning_start                   3000
% 2.68/0.98  --inst_learning_factor                  2
% 2.68/0.98  --inst_start_prop_sim_after_learn       3
% 2.68/0.98  --inst_sel_renew                        solver
% 2.68/0.98  --inst_lit_activity_flag                true
% 2.68/0.98  --inst_restr_to_given                   false
% 2.68/0.98  --inst_activity_threshold               500
% 2.68/0.98  --inst_out_proof                        true
% 2.68/0.98  
% 2.68/0.98  ------ Resolution Options
% 2.68/0.98  
% 2.68/0.98  --resolution_flag                       true
% 2.68/0.98  --res_lit_sel                           adaptive
% 2.68/0.98  --res_lit_sel_side                      none
% 2.68/0.98  --res_ordering                          kbo
% 2.68/0.98  --res_to_prop_solver                    active
% 2.68/0.98  --res_prop_simpl_new                    false
% 2.68/0.98  --res_prop_simpl_given                  true
% 2.68/0.98  --res_passive_queue_type                priority_queues
% 2.68/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.68/0.99  --res_passive_queues_freq               [15;5]
% 2.68/0.99  --res_forward_subs                      full
% 2.68/0.99  --res_backward_subs                     full
% 2.68/0.99  --res_forward_subs_resolution           true
% 2.68/0.99  --res_backward_subs_resolution          true
% 2.68/0.99  --res_orphan_elimination                true
% 2.68/0.99  --res_time_limit                        2.
% 2.68/0.99  --res_out_proof                         true
% 2.68/0.99  
% 2.68/0.99  ------ Superposition Options
% 2.68/0.99  
% 2.68/0.99  --superposition_flag                    true
% 2.68/0.99  --sup_passive_queue_type                priority_queues
% 2.68/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.68/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.68/0.99  --demod_completeness_check              fast
% 2.68/0.99  --demod_use_ground                      true
% 2.68/0.99  --sup_to_prop_solver                    passive
% 2.68/0.99  --sup_prop_simpl_new                    true
% 2.68/0.99  --sup_prop_simpl_given                  true
% 2.68/0.99  --sup_fun_splitting                     false
% 2.68/0.99  --sup_smt_interval                      50000
% 2.68/0.99  
% 2.68/0.99  ------ Superposition Simplification Setup
% 2.68/0.99  
% 2.68/0.99  --sup_indices_passive                   []
% 2.68/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.68/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_full_bw                           [BwDemod]
% 2.68/0.99  --sup_immed_triv                        [TrivRules]
% 2.68/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.68/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_immed_bw_main                     []
% 2.68/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.68/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/0.99  
% 2.68/0.99  ------ Combination Options
% 2.68/0.99  
% 2.68/0.99  --comb_res_mult                         3
% 2.68/0.99  --comb_sup_mult                         2
% 2.68/0.99  --comb_inst_mult                        10
% 2.68/0.99  
% 2.68/0.99  ------ Debug Options
% 2.68/0.99  
% 2.68/0.99  --dbg_backtrace                         false
% 2.68/0.99  --dbg_dump_prop_clauses                 false
% 2.68/0.99  --dbg_dump_prop_clauses_file            -
% 2.68/0.99  --dbg_out_stat                          false
% 2.68/0.99  ------ Parsing...
% 2.68/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.68/0.99  
% 2.68/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.68/0.99  
% 2.68/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.68/0.99  
% 2.68/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.68/0.99  ------ Proving...
% 2.68/0.99  ------ Problem Properties 
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  clauses                                 18
% 2.68/0.99  conjectures                             7
% 2.68/0.99  EPR                                     5
% 2.68/0.99  Horn                                    16
% 2.68/0.99  unary                                   4
% 2.68/0.99  binary                                  4
% 2.68/0.99  lits                                    47
% 2.68/0.99  lits eq                                 5
% 2.68/0.99  fd_pure                                 0
% 2.68/0.99  fd_pseudo                               0
% 2.68/0.99  fd_cond                                 0
% 2.68/0.99  fd_pseudo_cond                          0
% 2.68/0.99  AC symbols                              0
% 2.68/0.99  
% 2.68/0.99  ------ Schedule dynamic 5 is on 
% 2.68/0.99  
% 2.68/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  ------ 
% 2.68/0.99  Current options:
% 2.68/0.99  ------ 
% 2.68/0.99  
% 2.68/0.99  ------ Input Options
% 2.68/0.99  
% 2.68/0.99  --out_options                           all
% 2.68/0.99  --tptp_safe_out                         true
% 2.68/0.99  --problem_path                          ""
% 2.68/0.99  --include_path                          ""
% 2.68/0.99  --clausifier                            res/vclausify_rel
% 2.68/0.99  --clausifier_options                    --mode clausify
% 2.68/0.99  --stdin                                 false
% 2.68/0.99  --stats_out                             all
% 2.68/0.99  
% 2.68/0.99  ------ General Options
% 2.68/0.99  
% 2.68/0.99  --fof                                   false
% 2.68/0.99  --time_out_real                         305.
% 2.68/0.99  --time_out_virtual                      -1.
% 2.68/0.99  --symbol_type_check                     false
% 2.68/0.99  --clausify_out                          false
% 2.68/0.99  --sig_cnt_out                           false
% 2.68/0.99  --trig_cnt_out                          false
% 2.68/0.99  --trig_cnt_out_tolerance                1.
% 2.68/0.99  --trig_cnt_out_sk_spl                   false
% 2.68/0.99  --abstr_cl_out                          false
% 2.68/0.99  
% 2.68/0.99  ------ Global Options
% 2.68/0.99  
% 2.68/0.99  --schedule                              default
% 2.68/0.99  --add_important_lit                     false
% 2.68/0.99  --prop_solver_per_cl                    1000
% 2.68/0.99  --min_unsat_core                        false
% 2.68/0.99  --soft_assumptions                      false
% 2.68/0.99  --soft_lemma_size                       3
% 2.68/0.99  --prop_impl_unit_size                   0
% 2.68/0.99  --prop_impl_unit                        []
% 2.68/0.99  --share_sel_clauses                     true
% 2.68/0.99  --reset_solvers                         false
% 2.68/0.99  --bc_imp_inh                            [conj_cone]
% 2.68/0.99  --conj_cone_tolerance                   3.
% 2.68/0.99  --extra_neg_conj                        none
% 2.68/0.99  --large_theory_mode                     true
% 2.68/0.99  --prolific_symb_bound                   200
% 2.68/0.99  --lt_threshold                          2000
% 2.68/0.99  --clause_weak_htbl                      true
% 2.68/0.99  --gc_record_bc_elim                     false
% 2.68/0.99  
% 2.68/0.99  ------ Preprocessing Options
% 2.68/0.99  
% 2.68/0.99  --preprocessing_flag                    true
% 2.68/0.99  --time_out_prep_mult                    0.1
% 2.68/0.99  --splitting_mode                        input
% 2.68/0.99  --splitting_grd                         true
% 2.68/0.99  --splitting_cvd                         false
% 2.68/0.99  --splitting_cvd_svl                     false
% 2.68/0.99  --splitting_nvd                         32
% 2.68/0.99  --sub_typing                            true
% 2.68/0.99  --prep_gs_sim                           true
% 2.68/0.99  --prep_unflatten                        true
% 2.68/0.99  --prep_res_sim                          true
% 2.68/0.99  --prep_upred                            true
% 2.68/0.99  --prep_sem_filter                       exhaustive
% 2.68/0.99  --prep_sem_filter_out                   false
% 2.68/0.99  --pred_elim                             true
% 2.68/0.99  --res_sim_input                         true
% 2.68/0.99  --eq_ax_congr_red                       true
% 2.68/0.99  --pure_diseq_elim                       true
% 2.68/0.99  --brand_transform                       false
% 2.68/0.99  --non_eq_to_eq                          false
% 2.68/0.99  --prep_def_merge                        true
% 2.68/0.99  --prep_def_merge_prop_impl              false
% 2.68/0.99  --prep_def_merge_mbd                    true
% 2.68/0.99  --prep_def_merge_tr_red                 false
% 2.68/0.99  --prep_def_merge_tr_cl                  false
% 2.68/0.99  --smt_preprocessing                     true
% 2.68/0.99  --smt_ac_axioms                         fast
% 2.68/0.99  --preprocessed_out                      false
% 2.68/0.99  --preprocessed_stats                    false
% 2.68/0.99  
% 2.68/0.99  ------ Abstraction refinement Options
% 2.68/0.99  
% 2.68/0.99  --abstr_ref                             []
% 2.68/0.99  --abstr_ref_prep                        false
% 2.68/0.99  --abstr_ref_until_sat                   false
% 2.68/0.99  --abstr_ref_sig_restrict                funpre
% 2.68/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.68/0.99  --abstr_ref_under                       []
% 2.68/0.99  
% 2.68/0.99  ------ SAT Options
% 2.68/0.99  
% 2.68/0.99  --sat_mode                              false
% 2.68/0.99  --sat_fm_restart_options                ""
% 2.68/0.99  --sat_gr_def                            false
% 2.68/0.99  --sat_epr_types                         true
% 2.68/0.99  --sat_non_cyclic_types                  false
% 2.68/0.99  --sat_finite_models                     false
% 2.68/0.99  --sat_fm_lemmas                         false
% 2.68/0.99  --sat_fm_prep                           false
% 2.68/0.99  --sat_fm_uc_incr                        true
% 2.68/0.99  --sat_out_model                         small
% 2.68/0.99  --sat_out_clauses                       false
% 2.68/0.99  
% 2.68/0.99  ------ QBF Options
% 2.68/0.99  
% 2.68/0.99  --qbf_mode                              false
% 2.68/0.99  --qbf_elim_univ                         false
% 2.68/0.99  --qbf_dom_inst                          none
% 2.68/0.99  --qbf_dom_pre_inst                      false
% 2.68/0.99  --qbf_sk_in                             false
% 2.68/0.99  --qbf_pred_elim                         true
% 2.68/0.99  --qbf_split                             512
% 2.68/0.99  
% 2.68/0.99  ------ BMC1 Options
% 2.68/0.99  
% 2.68/0.99  --bmc1_incremental                      false
% 2.68/0.99  --bmc1_axioms                           reachable_all
% 2.68/0.99  --bmc1_min_bound                        0
% 2.68/0.99  --bmc1_max_bound                        -1
% 2.68/0.99  --bmc1_max_bound_default                -1
% 2.68/0.99  --bmc1_symbol_reachability              true
% 2.68/0.99  --bmc1_property_lemmas                  false
% 2.68/0.99  --bmc1_k_induction                      false
% 2.68/0.99  --bmc1_non_equiv_states                 false
% 2.68/0.99  --bmc1_deadlock                         false
% 2.68/0.99  --bmc1_ucm                              false
% 2.68/0.99  --bmc1_add_unsat_core                   none
% 2.68/0.99  --bmc1_unsat_core_children              false
% 2.68/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.68/0.99  --bmc1_out_stat                         full
% 2.68/0.99  --bmc1_ground_init                      false
% 2.68/0.99  --bmc1_pre_inst_next_state              false
% 2.68/0.99  --bmc1_pre_inst_state                   false
% 2.68/0.99  --bmc1_pre_inst_reach_state             false
% 2.68/0.99  --bmc1_out_unsat_core                   false
% 2.68/0.99  --bmc1_aig_witness_out                  false
% 2.68/0.99  --bmc1_verbose                          false
% 2.68/0.99  --bmc1_dump_clauses_tptp                false
% 2.68/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.68/0.99  --bmc1_dump_file                        -
% 2.68/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.68/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.68/0.99  --bmc1_ucm_extend_mode                  1
% 2.68/0.99  --bmc1_ucm_init_mode                    2
% 2.68/0.99  --bmc1_ucm_cone_mode                    none
% 2.68/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.68/0.99  --bmc1_ucm_relax_model                  4
% 2.68/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.68/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.68/0.99  --bmc1_ucm_layered_model                none
% 2.68/0.99  --bmc1_ucm_max_lemma_size               10
% 2.68/0.99  
% 2.68/0.99  ------ AIG Options
% 2.68/0.99  
% 2.68/0.99  --aig_mode                              false
% 2.68/0.99  
% 2.68/0.99  ------ Instantiation Options
% 2.68/0.99  
% 2.68/0.99  --instantiation_flag                    true
% 2.68/0.99  --inst_sos_flag                         false
% 2.68/0.99  --inst_sos_phase                        true
% 2.68/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.68/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.68/0.99  --inst_lit_sel_side                     none
% 2.68/0.99  --inst_solver_per_active                1400
% 2.68/0.99  --inst_solver_calls_frac                1.
% 2.68/0.99  --inst_passive_queue_type               priority_queues
% 2.68/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.68/0.99  --inst_passive_queues_freq              [25;2]
% 2.68/0.99  --inst_dismatching                      true
% 2.68/0.99  --inst_eager_unprocessed_to_passive     true
% 2.68/0.99  --inst_prop_sim_given                   true
% 2.68/0.99  --inst_prop_sim_new                     false
% 2.68/0.99  --inst_subs_new                         false
% 2.68/0.99  --inst_eq_res_simp                      false
% 2.68/0.99  --inst_subs_given                       false
% 2.68/0.99  --inst_orphan_elimination               true
% 2.68/0.99  --inst_learning_loop_flag               true
% 2.68/0.99  --inst_learning_start                   3000
% 2.68/0.99  --inst_learning_factor                  2
% 2.68/0.99  --inst_start_prop_sim_after_learn       3
% 2.68/0.99  --inst_sel_renew                        solver
% 2.68/0.99  --inst_lit_activity_flag                true
% 2.68/0.99  --inst_restr_to_given                   false
% 2.68/0.99  --inst_activity_threshold               500
% 2.68/0.99  --inst_out_proof                        true
% 2.68/0.99  
% 2.68/0.99  ------ Resolution Options
% 2.68/0.99  
% 2.68/0.99  --resolution_flag                       false
% 2.68/0.99  --res_lit_sel                           adaptive
% 2.68/0.99  --res_lit_sel_side                      none
% 2.68/0.99  --res_ordering                          kbo
% 2.68/0.99  --res_to_prop_solver                    active
% 2.68/0.99  --res_prop_simpl_new                    false
% 2.68/0.99  --res_prop_simpl_given                  true
% 2.68/0.99  --res_passive_queue_type                priority_queues
% 2.68/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.68/0.99  --res_passive_queues_freq               [15;5]
% 2.68/0.99  --res_forward_subs                      full
% 2.68/0.99  --res_backward_subs                     full
% 2.68/0.99  --res_forward_subs_resolution           true
% 2.68/0.99  --res_backward_subs_resolution          true
% 2.68/0.99  --res_orphan_elimination                true
% 2.68/0.99  --res_time_limit                        2.
% 2.68/0.99  --res_out_proof                         true
% 2.68/0.99  
% 2.68/0.99  ------ Superposition Options
% 2.68/0.99  
% 2.68/0.99  --superposition_flag                    true
% 2.68/0.99  --sup_passive_queue_type                priority_queues
% 2.68/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.68/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.68/0.99  --demod_completeness_check              fast
% 2.68/0.99  --demod_use_ground                      true
% 2.68/0.99  --sup_to_prop_solver                    passive
% 2.68/0.99  --sup_prop_simpl_new                    true
% 2.68/0.99  --sup_prop_simpl_given                  true
% 2.68/0.99  --sup_fun_splitting                     false
% 2.68/0.99  --sup_smt_interval                      50000
% 2.68/0.99  
% 2.68/0.99  ------ Superposition Simplification Setup
% 2.68/0.99  
% 2.68/0.99  --sup_indices_passive                   []
% 2.68/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.68/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_full_bw                           [BwDemod]
% 2.68/0.99  --sup_immed_triv                        [TrivRules]
% 2.68/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.68/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_immed_bw_main                     []
% 2.68/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.68/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/0.99  
% 2.68/0.99  ------ Combination Options
% 2.68/0.99  
% 2.68/0.99  --comb_res_mult                         3
% 2.68/0.99  --comb_sup_mult                         2
% 2.68/0.99  --comb_inst_mult                        10
% 2.68/0.99  
% 2.68/0.99  ------ Debug Options
% 2.68/0.99  
% 2.68/0.99  --dbg_backtrace                         false
% 2.68/0.99  --dbg_dump_prop_clauses                 false
% 2.68/0.99  --dbg_dump_prop_clauses_file            -
% 2.68/0.99  --dbg_out_stat                          false
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  ------ Proving...
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  % SZS status Theorem for theBenchmark.p
% 2.68/0.99  
% 2.68/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.68/0.99  
% 2.68/0.99  fof(f12,conjecture,(
% 2.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : (r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) <=> (r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f13,negated_conjecture,(
% 2.68/0.99    ~! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ! [X2] : (r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) <=> (r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))))))),
% 2.68/0.99    inference(negated_conjecture,[],[f12])).
% 2.68/0.99  
% 2.68/0.99  fof(f31,plain,(
% 2.68/0.99    ? [X0] : (? [X1] : (? [X2] : (r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) <~> (r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0)))) & (v1_funct_1(X1) & v1_relat_1(X1))) & (v1_funct_1(X0) & v1_relat_1(X0)))),
% 2.68/0.99    inference(ennf_transformation,[],[f13])).
% 2.68/0.99  
% 2.68/0.99  fof(f32,plain,(
% 2.68/0.99    ? [X0] : (? [X1] : (? [X2] : (r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))) <~> (r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0)))) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 2.68/0.99    inference(flattening,[],[f31])).
% 2.68/0.99  
% 2.68/0.99  fof(f33,plain,(
% 2.68/0.99    ? [X0] : (? [X1] : (? [X2] : (((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(X0))) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))))) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 2.68/0.99    inference(nnf_transformation,[],[f32])).
% 2.68/0.99  
% 2.68/0.99  fof(f34,plain,(
% 2.68/0.99    ? [X0] : (? [X1] : (? [X2] : ((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(X0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))))) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0))),
% 2.68/0.99    inference(flattening,[],[f33])).
% 2.68/0.99  
% 2.68/0.99  fof(f37,plain,(
% 2.68/0.99    ( ! [X0,X1] : (? [X2] : ((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(X0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))))) => ((~r1_tarski(k9_relat_1(X0,sK2),k1_relat_1(X1)) | ~r1_tarski(sK2,k1_relat_1(X0)) | ~r1_tarski(sK2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,sK2),k1_relat_1(X1)) & r1_tarski(sK2,k1_relat_1(X0))) | r1_tarski(sK2,k1_relat_1(k5_relat_1(X0,X1)))))) )),
% 2.68/0.99    introduced(choice_axiom,[])).
% 2.68/0.99  
% 2.68/0.99  fof(f36,plain,(
% 2.68/0.99    ( ! [X0] : (? [X1] : (? [X2] : ((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(X0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))))) & v1_funct_1(X1) & v1_relat_1(X1)) => (? [X2] : ((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(sK1)) | ~r1_tarski(X2,k1_relat_1(X0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,sK1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(sK1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,sK1))))) & v1_funct_1(sK1) & v1_relat_1(sK1))) )),
% 2.68/0.99    introduced(choice_axiom,[])).
% 2.68/0.99  
% 2.68/0.99  fof(f35,plain,(
% 2.68/0.99    ? [X0] : (? [X1] : (? [X2] : ((~r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(X0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1)))) & ((r1_tarski(k9_relat_1(X0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(X0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(X0,X1))))) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(X0) & v1_relat_1(X0)) => (? [X1] : (? [X2] : ((~r1_tarski(k9_relat_1(sK0,X2),k1_relat_1(X1)) | ~r1_tarski(X2,k1_relat_1(sK0)) | ~r1_tarski(X2,k1_relat_1(k5_relat_1(sK0,X1)))) & ((r1_tarski(k9_relat_1(sK0,X2),k1_relat_1(X1)) & r1_tarski(X2,k1_relat_1(sK0))) | r1_tarski(X2,k1_relat_1(k5_relat_1(sK0,X1))))) & v1_funct_1(X1) & v1_relat_1(X1)) & v1_funct_1(sK0) & v1_relat_1(sK0))),
% 2.68/0.99    introduced(choice_axiom,[])).
% 2.68/0.99  
% 2.68/0.99  fof(f38,plain,(
% 2.68/0.99    (((~r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) | ~r1_tarski(sK2,k1_relat_1(sK0)) | ~r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))) & ((r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) & r1_tarski(sK2,k1_relat_1(sK0))) | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))))) & v1_funct_1(sK1) & v1_relat_1(sK1)) & v1_funct_1(sK0) & v1_relat_1(sK0)),
% 2.68/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f34,f37,f36,f35])).
% 2.68/0.99  
% 2.68/0.99  fof(f56,plain,(
% 2.68/0.99    r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f10,axiom,(
% 2.68/0.99    ! [X0,X1,X2] : ((v1_funct_1(X2) & v1_relat_1(X2)) => ((r1_tarski(k9_relat_1(X2,X0),X1) & r1_tarski(X0,k1_relat_1(X2))) => r1_tarski(X0,k10_relat_1(X2,X1))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f27,plain,(
% 2.68/0.99    ! [X0,X1,X2] : ((r1_tarski(X0,k10_relat_1(X2,X1)) | (~r1_tarski(k9_relat_1(X2,X0),X1) | ~r1_tarski(X0,k1_relat_1(X2)))) | (~v1_funct_1(X2) | ~v1_relat_1(X2)))),
% 2.68/0.99    inference(ennf_transformation,[],[f10])).
% 2.68/0.99  
% 2.68/0.99  fof(f28,plain,(
% 2.68/0.99    ! [X0,X1,X2] : (r1_tarski(X0,k10_relat_1(X2,X1)) | ~r1_tarski(k9_relat_1(X2,X0),X1) | ~r1_tarski(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2))),
% 2.68/0.99    inference(flattening,[],[f27])).
% 2.68/0.99  
% 2.68/0.99  fof(f49,plain,(
% 2.68/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k10_relat_1(X2,X1)) | ~r1_tarski(k9_relat_1(X2,X0),X1) | ~r1_tarski(X0,k1_relat_1(X2)) | ~v1_funct_1(X2) | ~v1_relat_1(X2)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f28])).
% 2.68/0.99  
% 2.68/0.99  fof(f51,plain,(
% 2.68/0.99    v1_relat_1(sK0)),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f52,plain,(
% 2.68/0.99    v1_funct_1(sK0)),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f53,plain,(
% 2.68/0.99    v1_relat_1(sK1)),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f6,axiom,(
% 2.68/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f21,plain,(
% 2.68/0.99    ! [X0] : (! [X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(ennf_transformation,[],[f6])).
% 2.68/0.99  
% 2.68/0.99  fof(f44,plain,(
% 2.68/0.99    ( ! [X0,X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f21])).
% 2.68/0.99  
% 2.68/0.99  fof(f55,plain,(
% 2.68/0.99    r1_tarski(sK2,k1_relat_1(sK0)) | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f1,axiom,(
% 2.68/0.99    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f14,plain,(
% 2.68/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 2.68/0.99    inference(ennf_transformation,[],[f1])).
% 2.68/0.99  
% 2.68/0.99  fof(f15,plain,(
% 2.68/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 2.68/0.99    inference(flattening,[],[f14])).
% 2.68/0.99  
% 2.68/0.99  fof(f39,plain,(
% 2.68/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f15])).
% 2.68/0.99  
% 2.68/0.99  fof(f7,axiom,(
% 2.68/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f22,plain,(
% 2.68/0.99    ! [X0] : (! [X1] : (r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(ennf_transformation,[],[f7])).
% 2.68/0.99  
% 2.68/0.99  fof(f45,plain,(
% 2.68/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f22])).
% 2.68/0.99  
% 2.68/0.99  fof(f8,axiom,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(X0,k1_relat_1(X1)) => k1_relat_1(k7_relat_1(X1,X0)) = X0))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f23,plain,(
% 2.68/0.99    ! [X0,X1] : ((k1_relat_1(k7_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k1_relat_1(X1))) | ~v1_relat_1(X1))),
% 2.68/0.99    inference(ennf_transformation,[],[f8])).
% 2.68/0.99  
% 2.68/0.99  fof(f24,plain,(
% 2.68/0.99    ! [X0,X1] : (k1_relat_1(k7_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 2.68/0.99    inference(flattening,[],[f23])).
% 2.68/0.99  
% 2.68/0.99  fof(f46,plain,(
% 2.68/0.99    ( ! [X0,X1] : (k1_relat_1(k7_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f24])).
% 2.68/0.99  
% 2.68/0.99  fof(f4,axiom,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0)))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f19,plain,(
% 2.68/0.99    ! [X0,X1] : (! [X2] : (k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 2.68/0.99    inference(ennf_transformation,[],[f4])).
% 2.68/0.99  
% 2.68/0.99  fof(f42,plain,(
% 2.68/0.99    ( ! [X2,X0,X1] : (k5_relat_1(k7_relat_1(X1,X0),X2) = k7_relat_1(k5_relat_1(X1,X2),X0) | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f19])).
% 2.68/0.99  
% 2.68/0.99  fof(f2,axiom,(
% 2.68/0.99    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f16,plain,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 2.68/0.99    inference(ennf_transformation,[],[f2])).
% 2.68/0.99  
% 2.68/0.99  fof(f17,plain,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(flattening,[],[f16])).
% 2.68/0.99  
% 2.68/0.99  fof(f40,plain,(
% 2.68/0.99    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f17])).
% 2.68/0.99  
% 2.68/0.99  fof(f11,axiom,(
% 2.68/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (k1_relat_1(X1) = k1_relat_1(k5_relat_1(X1,X0)) => r1_tarski(k2_relat_1(X1),k1_relat_1(X0)))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f29,plain,(
% 2.68/0.99    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X1),k1_relat_1(X0)) | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.68/0.99    inference(ennf_transformation,[],[f11])).
% 2.68/0.99  
% 2.68/0.99  fof(f30,plain,(
% 2.68/0.99    ! [X0] : (! [X1] : (r1_tarski(k2_relat_1(X1),k1_relat_1(X0)) | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(flattening,[],[f29])).
% 2.68/0.99  
% 2.68/0.99  fof(f50,plain,(
% 2.68/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),k1_relat_1(X0)) | k1_relat_1(X1) != k1_relat_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f30])).
% 2.68/0.99  
% 2.68/0.99  fof(f5,axiom,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f20,plain,(
% 2.68/0.99    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.68/0.99    inference(ennf_transformation,[],[f5])).
% 2.68/0.99  
% 2.68/0.99  fof(f43,plain,(
% 2.68/0.99    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f20])).
% 2.68/0.99  
% 2.68/0.99  fof(f9,axiom,(
% 2.68/0.99    ! [X0,X1] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f25,plain,(
% 2.68/0.99    ! [X0,X1] : ((v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.68/0.99    inference(ennf_transformation,[],[f9])).
% 2.68/0.99  
% 2.68/0.99  fof(f26,plain,(
% 2.68/0.99    ! [X0,X1] : ((v1_funct_1(k7_relat_1(X0,X1)) & v1_relat_1(k7_relat_1(X0,X1))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(flattening,[],[f25])).
% 2.68/0.99  
% 2.68/0.99  fof(f48,plain,(
% 2.68/0.99    ( ! [X0,X1] : (v1_funct_1(k7_relat_1(X0,X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f26])).
% 2.68/0.99  
% 2.68/0.99  fof(f3,axiom,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 2.68/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/0.99  
% 2.68/0.99  fof(f18,plain,(
% 2.68/0.99    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 2.68/0.99    inference(ennf_transformation,[],[f3])).
% 2.68/0.99  
% 2.68/0.99  fof(f41,plain,(
% 2.68/0.99    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 2.68/0.99    inference(cnf_transformation,[],[f18])).
% 2.68/0.99  
% 2.68/0.99  fof(f57,plain,(
% 2.68/0.99    ~r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) | ~r1_tarski(sK2,k1_relat_1(sK0)) | ~r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  fof(f54,plain,(
% 2.68/0.99    v1_funct_1(sK1)),
% 2.68/0.99    inference(cnf_transformation,[],[f38])).
% 2.68/0.99  
% 2.68/0.99  cnf(c_13,negated_conjecture,
% 2.68/0.99      ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
% 2.68/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_338,negated_conjecture,
% 2.68/0.99      ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_13]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_704,plain,
% 2.68/0.99      ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_338]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_10,plain,
% 2.68/0.99      ( r1_tarski(X0,k10_relat_1(X1,X2))
% 2.68/0.99      | ~ r1_tarski(X0,k1_relat_1(X1))
% 2.68/0.99      | ~ r1_tarski(k9_relat_1(X1,X0),X2)
% 2.68/0.99      | ~ v1_funct_1(X1)
% 2.68/0.99      | ~ v1_relat_1(X1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_341,plain,
% 2.68/0.99      ( r1_tarski(X0_41,k10_relat_1(X0_40,X1_41))
% 2.68/0.99      | ~ r1_tarski(X0_41,k1_relat_1(X0_40))
% 2.68/0.99      | ~ r1_tarski(k9_relat_1(X0_40,X0_41),X1_41)
% 2.68/0.99      | ~ v1_funct_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X0_40) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_10]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_701,plain,
% 2.68/0.99      ( r1_tarski(X0_41,k10_relat_1(X0_40,X1_41)) = iProver_top
% 2.68/0.99      | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
% 2.68/0.99      | r1_tarski(k9_relat_1(X0_40,X0_41),X1_41) != iProver_top
% 2.68/0.99      | v1_funct_1(X0_40) != iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_341]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1905,plain,
% 2.68/0.99      ( r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top
% 2.68/0.99      | v1_funct_1(sK0) != iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_704,c_701]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_18,negated_conjecture,
% 2.68/0.99      ( v1_relat_1(sK0) ),
% 2.68/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_19,plain,
% 2.68/0.99      ( v1_relat_1(sK0) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_17,negated_conjecture,
% 2.68/0.99      ( v1_funct_1(sK0) ),
% 2.68/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_20,plain,
% 2.68/0.99      ( v1_funct_1(sK0) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_16,negated_conjecture,
% 2.68/0.99      ( v1_relat_1(sK1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_353,plain,( X0_41 = X0_41 ),theory(equality) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_376,plain,
% 2.68/0.99      ( sK2 = sK2 ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_353]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_356,plain,
% 2.68/0.99      ( ~ r1_tarski(X0_41,X1_41)
% 2.68/0.99      | r1_tarski(X2_41,X3_41)
% 2.68/0.99      | X2_41 != X0_41
% 2.68/0.99      | X3_41 != X1_41 ),
% 2.68/0.99      theory(equality) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_863,plain,
% 2.68/0.99      ( r1_tarski(X0_41,X1_41)
% 2.68/0.99      | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | X1_41 != k1_relat_1(k5_relat_1(sK0,sK1))
% 2.68/0.99      | X0_41 != sK2 ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_356]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_920,plain,
% 2.68/0.99      ( r1_tarski(X0_41,k10_relat_1(sK0,k1_relat_1(sK1)))
% 2.68/0.99      | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | X0_41 != sK2
% 2.68/0.99      | k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1)) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_863]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_922,plain,
% 2.68/0.99      ( X0_41 != sK2
% 2.68/0.99      | k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1))
% 2.68/0.99      | r1_tarski(X0_41,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_920]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_924,plain,
% 2.68/0.99      ( k10_relat_1(sK0,k1_relat_1(sK1)) != k1_relat_1(k5_relat_1(sK0,sK1))
% 2.68/0.99      | sK2 != sK2
% 2.68/0.99      | r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_922]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_5,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0)
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | k10_relat_1(X1,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(X1,X0)) ),
% 2.68/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_345,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X1_40)
% 2.68/0.99      | k10_relat_1(X1_40,k1_relat_1(X0_40)) = k1_relat_1(k5_relat_1(X1_40,X0_40)) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_5]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_921,plain,
% 2.68/0.99      ( ~ v1_relat_1(sK1)
% 2.68/0.99      | ~ v1_relat_1(sK0)
% 2.68/0.99      | k10_relat_1(sK0,k1_relat_1(sK1)) = k1_relat_1(k5_relat_1(sK0,sK1)) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_345]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_14,negated_conjecture,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) ),
% 2.68/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_337,negated_conjecture,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_14]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_705,plain,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_337]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_0,plain,
% 2.68/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X2,X0) | r1_tarski(X2,X1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_350,plain,
% 2.68/0.99      ( ~ r1_tarski(X0_41,X1_41)
% 2.68/0.99      | ~ r1_tarski(X2_41,X0_41)
% 2.68/0.99      | r1_tarski(X2_41,X1_41) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_0]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_692,plain,
% 2.68/0.99      ( r1_tarski(X0_41,X1_41) != iProver_top
% 2.68/0.99      | r1_tarski(X2_41,X0_41) != iProver_top
% 2.68/0.99      | r1_tarski(X2_41,X1_41) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_350]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_981,plain,
% 2.68/0.99      ( r1_tarski(X0_41,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(X0_41,sK2) != iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_705,c_692]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_21,plain,
% 2.68/0.99      ( v1_relat_1(sK1) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_23,plain,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_858,plain,
% 2.68/0.99      ( r1_tarski(X0_41,k1_relat_1(X0_40))
% 2.68/0.99      | ~ r1_tarski(X0_41,k1_relat_1(k5_relat_1(X0_40,X1_40)))
% 2.68/0.99      | ~ r1_tarski(k1_relat_1(k5_relat_1(X0_40,X1_40)),k1_relat_1(X0_40)) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_350]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_946,plain,
% 2.68/0.99      ( ~ r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0))
% 2.68/0.99      | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_858]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_947,plain,
% 2.68/0.99      ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0)) != iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_946]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_6,plain,
% 2.68/0.99      ( r1_tarski(k1_relat_1(k5_relat_1(X0,X1)),k1_relat_1(X0))
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | ~ v1_relat_1(X0) ),
% 2.68/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_344,plain,
% 2.68/0.99      ( r1_tarski(k1_relat_1(k5_relat_1(X0_40,X1_40)),k1_relat_1(X0_40))
% 2.68/0.99      | ~ v1_relat_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X1_40) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_6]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1014,plain,
% 2.68/0.99      ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0))
% 2.68/0.99      | ~ v1_relat_1(sK1)
% 2.68/0.99      | ~ v1_relat_1(sK0) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_344]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1015,plain,
% 2.68/0.99      ( r1_tarski(k1_relat_1(k5_relat_1(sK0,sK1)),k1_relat_1(sK0)) = iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_1014]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1301,plain,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(sK0)) = iProver_top ),
% 2.68/0.99      inference(global_propositional_subsumption,
% 2.68/0.99                [status(thm)],
% 2.68/0.99                [c_981,c_19,c_21,c_23,c_947,c_1015]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3616,plain,
% 2.68/0.99      ( r1_tarski(sK2,k10_relat_1(sK0,k1_relat_1(sK1))) = iProver_top ),
% 2.68/0.99      inference(global_propositional_subsumption,
% 2.68/0.99                [status(thm)],
% 2.68/0.99                [c_1905,c_18,c_19,c_20,c_16,c_21,c_23,c_376,c_924,c_921,
% 2.68/0.99                 c_947,c_1015]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_335,negated_conjecture,
% 2.68/0.99      ( v1_relat_1(sK1) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_16]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_707,plain,
% 2.68/0.99      ( v1_relat_1(sK1) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_335]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_333,negated_conjecture,
% 2.68/0.99      ( v1_relat_1(sK0) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_18]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_709,plain,
% 2.68/0.99      ( v1_relat_1(sK0) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_333]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_697,plain,
% 2.68/0.99      ( k10_relat_1(X0_40,k1_relat_1(X1_40)) = k1_relat_1(k5_relat_1(X0_40,X1_40))
% 2.68/0.99      | v1_relat_1(X1_40) != iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_345]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1748,plain,
% 2.68/0.99      ( k10_relat_1(sK0,k1_relat_1(X0_40)) = k1_relat_1(k5_relat_1(sK0,X0_40))
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_709,c_697]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_2263,plain,
% 2.68/0.99      ( k10_relat_1(sK0,k1_relat_1(sK1)) = k1_relat_1(k5_relat_1(sK0,sK1)) ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_707,c_1748]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3620,plain,
% 2.68/0.99      ( r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) = iProver_top ),
% 2.68/0.99      inference(light_normalisation,[status(thm)],[c_3616,c_2263]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_7,plain,
% 2.68/0.99      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | k1_relat_1(k7_relat_1(X1,X0)) = X0 ),
% 2.68/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_343,plain,
% 2.68/0.99      ( ~ r1_tarski(X0_41,k1_relat_1(X0_40))
% 2.68/0.99      | ~ v1_relat_1(X0_40)
% 2.68/0.99      | k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41 ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_7]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_699,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41
% 2.68/0.99      | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_343]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3624,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(k5_relat_1(sK0,sK1),sK2)) = sK2
% 2.68/0.99      | v1_relat_1(k5_relat_1(sK0,sK1)) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_3620,c_699]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0)
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | k7_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(k7_relat_1(X0,X2),X1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_347,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X1_40)
% 2.68/0.99      | k7_relat_1(k5_relat_1(X0_40,X1_40),X0_41) = k5_relat_1(k7_relat_1(X0_40,X0_41),X1_40) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_3]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_695,plain,
% 2.68/0.99      ( k7_relat_1(k5_relat_1(X0_40,X1_40),X0_41) = k5_relat_1(k7_relat_1(X0_40,X0_41),X1_40)
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top
% 2.68/0.99      | v1_relat_1(X1_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_347]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1577,plain,
% 2.68/0.99      ( k7_relat_1(k5_relat_1(sK0,X0_40),X0_41) = k5_relat_1(k7_relat_1(sK0,X0_41),X0_40)
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_709,c_695]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3181,plain,
% 2.68/0.99      ( k7_relat_1(k5_relat_1(sK0,sK1),X0_41) = k5_relat_1(k7_relat_1(sK0,X0_41),sK1) ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_707,c_1577]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_3633,plain,
% 2.68/0.99      ( k1_relat_1(k5_relat_1(k7_relat_1(sK0,sK2),sK1)) = sK2
% 2.68/0.99      | v1_relat_1(k5_relat_1(sK0,sK1)) != iProver_top ),
% 2.68/0.99      inference(demodulation,[status(thm)],[c_3624,c_3181]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0)
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | v1_relat_1(k5_relat_1(X1,X0)) ),
% 2.68/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_349,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X1_40)
% 2.68/0.99      | v1_relat_1(k5_relat_1(X1_40,X0_40)) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_970,plain,
% 2.68/0.99      ( v1_relat_1(k5_relat_1(sK0,sK1))
% 2.68/0.99      | ~ v1_relat_1(sK1)
% 2.68/0.99      | ~ v1_relat_1(sK0) ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_349]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_971,plain,
% 2.68/0.99      ( v1_relat_1(k5_relat_1(sK0,sK1)) = iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_970]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4598,plain,
% 2.68/0.99      ( k1_relat_1(k5_relat_1(k7_relat_1(sK0,sK2),sK1)) = sK2 ),
% 2.68/0.99      inference(global_propositional_subsumption,
% 2.68/0.99                [status(thm)],
% 2.68/0.99                [c_3633,c_19,c_21,c_971]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_11,plain,
% 2.68/0.99      ( r1_tarski(k2_relat_1(X0),k1_relat_1(X1))
% 2.68/0.99      | ~ v1_funct_1(X1)
% 2.68/0.99      | ~ v1_funct_1(X0)
% 2.68/0.99      | ~ v1_relat_1(X0)
% 2.68/0.99      | ~ v1_relat_1(X1)
% 2.68/0.99      | k1_relat_1(k5_relat_1(X0,X1)) != k1_relat_1(X0) ),
% 2.68/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_340,plain,
% 2.68/0.99      ( r1_tarski(k2_relat_1(X0_40),k1_relat_1(X1_40))
% 2.68/0.99      | ~ v1_funct_1(X1_40)
% 2.68/0.99      | ~ v1_funct_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X0_40)
% 2.68/0.99      | ~ v1_relat_1(X1_40)
% 2.68/0.99      | k1_relat_1(k5_relat_1(X0_40,X1_40)) != k1_relat_1(X0_40) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_702,plain,
% 2.68/0.99      ( k1_relat_1(k5_relat_1(X0_40,X1_40)) != k1_relat_1(X0_40)
% 2.68/0.99      | r1_tarski(k2_relat_1(X0_40),k1_relat_1(X1_40)) = iProver_top
% 2.68/0.99      | v1_funct_1(X1_40) != iProver_top
% 2.68/0.99      | v1_funct_1(X0_40) != iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top
% 2.68/0.99      | v1_relat_1(X1_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_340]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4601,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(sK0,sK2)) != sK2
% 2.68/0.99      | r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
% 2.68/0.99      | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_funct_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_4598,c_702]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1617,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_1301,c_699]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_392,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(X0_40,X0_41)) = X0_41
% 2.68/0.99      | r1_tarski(X0_41,k1_relat_1(X0_40)) != iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_343]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_394,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_392]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_2714,plain,
% 2.68/0.99      ( k1_relat_1(k7_relat_1(sK0,sK2)) = sK2 ),
% 2.68/0.99      inference(global_propositional_subsumption,
% 2.68/0.99                [status(thm)],
% 2.68/0.99                [c_1617,c_19,c_21,c_23,c_394,c_947,c_1015]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4630,plain,
% 2.68/0.99      ( sK2 != sK2
% 2.68/0.99      | r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
% 2.68/0.99      | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_funct_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top ),
% 2.68/0.99      inference(light_normalisation,[status(thm)],[c_4601,c_2714]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4631,plain,
% 2.68/0.99      ( r1_tarski(k2_relat_1(k7_relat_1(sK0,sK2)),k1_relat_1(sK1)) = iProver_top
% 2.68/0.99      | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_funct_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top ),
% 2.68/0.99      inference(equality_resolution_simp,[status(thm)],[c_4630]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0)
% 2.68/0.99      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_346,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0_40)
% 2.68/0.99      | k2_relat_1(k7_relat_1(X0_40,X0_41)) = k9_relat_1(X0_40,X0_41) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_4]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_696,plain,
% 2.68/0.99      ( k2_relat_1(k7_relat_1(X0_40,X0_41)) = k9_relat_1(X0_40,X0_41)
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_346]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_1050,plain,
% 2.68/0.99      ( k2_relat_1(k7_relat_1(sK0,X0_41)) = k9_relat_1(sK0,X0_41) ),
% 2.68/0.99      inference(superposition,[status(thm)],[c_709,c_696]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_4632,plain,
% 2.68/0.99      ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) = iProver_top
% 2.68/0.99      | v1_funct_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_funct_1(sK1) != iProver_top
% 2.68/0.99      | v1_relat_1(k7_relat_1(sK0,sK2)) != iProver_top
% 2.68/0.99      | v1_relat_1(sK1) != iProver_top ),
% 2.68/0.99      inference(demodulation,[status(thm)],[c_4631,c_1050]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_8,plain,
% 2.68/0.99      ( ~ v1_funct_1(X0)
% 2.68/0.99      | v1_funct_1(k7_relat_1(X0,X1))
% 2.68/0.99      | ~ v1_relat_1(X0) ),
% 2.68/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_342,plain,
% 2.68/0.99      ( ~ v1_funct_1(X0_40)
% 2.68/0.99      | v1_funct_1(k7_relat_1(X0_40,X0_41))
% 2.68/0.99      | ~ v1_relat_1(X0_40) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_8]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_395,plain,
% 2.68/0.99      ( v1_funct_1(X0_40) != iProver_top
% 2.68/0.99      | v1_funct_1(k7_relat_1(X0_40,X0_41)) = iProver_top
% 2.68/0.99      | v1_relat_1(X0_40) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_342]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_397,plain,
% 2.68/0.99      ( v1_funct_1(k7_relat_1(sK0,sK2)) = iProver_top
% 2.68/0.99      | v1_funct_1(sK0) != iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_395]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_2,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0) | v1_relat_1(k7_relat_1(X0,X1)) ),
% 2.68/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_348,plain,
% 2.68/0.99      ( ~ v1_relat_1(X0_40) | v1_relat_1(k7_relat_1(X0_40,X0_41)) ),
% 2.68/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_379,plain,
% 2.68/0.99      ( v1_relat_1(X0_40) != iProver_top
% 2.68/0.99      | v1_relat_1(k7_relat_1(X0_40,X0_41)) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_348]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_381,plain,
% 2.68/0.99      ( v1_relat_1(k7_relat_1(sK0,sK2)) = iProver_top
% 2.68/0.99      | v1_relat_1(sK0) != iProver_top ),
% 2.68/0.99      inference(instantiation,[status(thm)],[c_379]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_12,negated_conjecture,
% 2.68/0.99      ( ~ r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1))
% 2.68/0.99      | ~ r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1)))
% 2.68/0.99      | ~ r1_tarski(sK2,k1_relat_1(sK0)) ),
% 2.68/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_25,plain,
% 2.68/0.99      ( r1_tarski(k9_relat_1(sK0,sK2),k1_relat_1(sK1)) != iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(k5_relat_1(sK0,sK1))) != iProver_top
% 2.68/0.99      | r1_tarski(sK2,k1_relat_1(sK0)) != iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_15,negated_conjecture,
% 2.68/0.99      ( v1_funct_1(sK1) ),
% 2.68/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(c_22,plain,
% 2.68/0.99      ( v1_funct_1(sK1) = iProver_top ),
% 2.68/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.68/0.99  
% 2.68/0.99  cnf(contradiction,plain,
% 2.68/0.99      ( $false ),
% 2.68/0.99      inference(minisat,
% 2.68/0.99                [status(thm)],
% 2.68/0.99                [c_4632,c_3620,c_1301,c_397,c_381,c_25,c_22,c_21,c_20,
% 2.68/0.99                 c_19]) ).
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.68/0.99  
% 2.68/0.99  ------                               Statistics
% 2.68/0.99  
% 2.68/0.99  ------ General
% 2.68/0.99  
% 2.68/0.99  abstr_ref_over_cycles:                  0
% 2.68/0.99  abstr_ref_under_cycles:                 0
% 2.68/0.99  gc_basic_clause_elim:                   0
% 2.68/0.99  forced_gc_time:                         0
% 2.68/0.99  parsing_time:                           0.008
% 2.68/0.99  unif_index_cands_time:                  0.
% 2.68/0.99  unif_index_add_time:                    0.
% 2.68/0.99  orderings_time:                         0.
% 2.68/0.99  out_proof_time:                         0.009
% 2.68/0.99  total_time:                             0.134
% 2.68/0.99  num_of_symbols:                         45
% 2.68/0.99  num_of_terms:                           4378
% 2.68/0.99  
% 2.68/0.99  ------ Preprocessing
% 2.68/0.99  
% 2.68/0.99  num_of_splits:                          0
% 2.68/0.99  num_of_split_atoms:                     0
% 2.68/0.99  num_of_reused_defs:                     0
% 2.68/0.99  num_eq_ax_congr_red:                    6
% 2.68/0.99  num_of_sem_filtered_clauses:            1
% 2.68/0.99  num_of_subtypes:                        2
% 2.68/0.99  monotx_restored_types:                  1
% 2.68/0.99  sat_num_of_epr_types:                   0
% 2.68/0.99  sat_num_of_non_cyclic_types:            0
% 2.68/0.99  sat_guarded_non_collapsed_types:        0
% 2.68/0.99  num_pure_diseq_elim:                    0
% 2.68/0.99  simp_replaced_by:                       0
% 2.68/0.99  res_preprocessed:                       99
% 2.68/0.99  prep_upred:                             0
% 2.68/0.99  prep_unflattend:                        0
% 2.68/0.99  smt_new_axioms:                         0
% 2.68/0.99  pred_elim_cands:                        3
% 2.68/0.99  pred_elim:                              0
% 2.68/0.99  pred_elim_cl:                           0
% 2.68/0.99  pred_elim_cycles:                       2
% 2.68/0.99  merged_defs:                            0
% 2.68/0.99  merged_defs_ncl:                        0
% 2.68/0.99  bin_hyper_res:                          0
% 2.68/0.99  prep_cycles:                            4
% 2.68/0.99  pred_elim_time:                         0.001
% 2.68/0.99  splitting_time:                         0.
% 2.68/0.99  sem_filter_time:                        0.
% 2.68/0.99  monotx_time:                            0.
% 2.68/0.99  subtype_inf_time:                       0.001
% 2.68/0.99  
% 2.68/0.99  ------ Problem properties
% 2.68/0.99  
% 2.68/0.99  clauses:                                18
% 2.68/0.99  conjectures:                            7
% 2.68/0.99  epr:                                    5
% 2.68/0.99  horn:                                   16
% 2.68/0.99  ground:                                 7
% 2.68/0.99  unary:                                  4
% 2.68/0.99  binary:                                 4
% 2.68/0.99  lits:                                   47
% 2.68/0.99  lits_eq:                                5
% 2.68/0.99  fd_pure:                                0
% 2.68/0.99  fd_pseudo:                              0
% 2.68/0.99  fd_cond:                                0
% 2.68/0.99  fd_pseudo_cond:                         0
% 2.68/0.99  ac_symbols:                             0
% 2.68/0.99  
% 2.68/0.99  ------ Propositional Solver
% 2.68/0.99  
% 2.68/0.99  prop_solver_calls:                      28
% 2.68/0.99  prop_fast_solver_calls:                 637
% 2.68/0.99  smt_solver_calls:                       0
% 2.68/0.99  smt_fast_solver_calls:                  0
% 2.68/0.99  prop_num_of_clauses:                    1632
% 2.68/0.99  prop_preprocess_simplified:             4378
% 2.68/0.99  prop_fo_subsumed:                       14
% 2.68/0.99  prop_solver_time:                       0.
% 2.68/0.99  smt_solver_time:                        0.
% 2.68/0.99  smt_fast_solver_time:                   0.
% 2.68/0.99  prop_fast_solver_time:                  0.
% 2.68/0.99  prop_unsat_core_time:                   0.
% 2.68/0.99  
% 2.68/0.99  ------ QBF
% 2.68/0.99  
% 2.68/0.99  qbf_q_res:                              0
% 2.68/0.99  qbf_num_tautologies:                    0
% 2.68/0.99  qbf_prep_cycles:                        0
% 2.68/0.99  
% 2.68/0.99  ------ BMC1
% 2.68/0.99  
% 2.68/0.99  bmc1_current_bound:                     -1
% 2.68/0.99  bmc1_last_solved_bound:                 -1
% 2.68/0.99  bmc1_unsat_core_size:                   -1
% 2.68/0.99  bmc1_unsat_core_parents_size:           -1
% 2.68/0.99  bmc1_merge_next_fun:                    0
% 2.68/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.68/0.99  
% 2.68/0.99  ------ Instantiation
% 2.68/0.99  
% 2.68/0.99  inst_num_of_clauses:                    505
% 2.68/0.99  inst_num_in_passive:                    40
% 2.68/0.99  inst_num_in_active:                     230
% 2.68/0.99  inst_num_in_unprocessed:                235
% 2.68/0.99  inst_num_of_loops:                      260
% 2.68/0.99  inst_num_of_learning_restarts:          0
% 2.68/0.99  inst_num_moves_active_passive:          27
% 2.68/0.99  inst_lit_activity:                      0
% 2.68/0.99  inst_lit_activity_moves:                0
% 2.68/0.99  inst_num_tautologies:                   0
% 2.68/0.99  inst_num_prop_implied:                  0
% 2.68/0.99  inst_num_existing_simplified:           0
% 2.68/0.99  inst_num_eq_res_simplified:             0
% 2.68/0.99  inst_num_child_elim:                    0
% 2.68/0.99  inst_num_of_dismatching_blockings:      424
% 2.68/0.99  inst_num_of_non_proper_insts:           426
% 2.68/0.99  inst_num_of_duplicates:                 0
% 2.68/0.99  inst_inst_num_from_inst_to_res:         0
% 2.68/0.99  inst_dismatching_checking_time:         0.
% 2.68/0.99  
% 2.68/0.99  ------ Resolution
% 2.68/0.99  
% 2.68/0.99  res_num_of_clauses:                     0
% 2.68/0.99  res_num_in_passive:                     0
% 2.68/0.99  res_num_in_active:                      0
% 2.68/0.99  res_num_of_loops:                       103
% 2.68/0.99  res_forward_subset_subsumed:            15
% 2.68/0.99  res_backward_subset_subsumed:           0
% 2.68/0.99  res_forward_subsumed:                   0
% 2.68/0.99  res_backward_subsumed:                  0
% 2.68/0.99  res_forward_subsumption_resolution:     0
% 2.68/0.99  res_backward_subsumption_resolution:    0
% 2.68/0.99  res_clause_to_clause_subsumption:       292
% 2.68/0.99  res_orphan_elimination:                 0
% 2.68/0.99  res_tautology_del:                      91
% 2.68/0.99  res_num_eq_res_simplified:              0
% 2.68/0.99  res_num_sel_changes:                    0
% 2.68/0.99  res_moves_from_active_to_pass:          0
% 2.68/0.99  
% 2.68/0.99  ------ Superposition
% 2.68/0.99  
% 2.68/0.99  sup_time_total:                         0.
% 2.68/0.99  sup_time_generating:                    0.
% 2.68/0.99  sup_time_sim_full:                      0.
% 2.68/0.99  sup_time_sim_immed:                     0.
% 2.68/0.99  
% 2.68/0.99  sup_num_of_clauses:                     119
% 2.68/0.99  sup_num_in_active:                      50
% 2.68/0.99  sup_num_in_passive:                     69
% 2.68/0.99  sup_num_of_loops:                       51
% 2.68/0.99  sup_fw_superposition:                   52
% 2.68/0.99  sup_bw_superposition:                   62
% 2.68/0.99  sup_immediate_simplified:               12
% 2.68/0.99  sup_given_eliminated:                   0
% 2.68/0.99  comparisons_done:                       0
% 2.68/0.99  comparisons_avoided:                    0
% 2.68/0.99  
% 2.68/0.99  ------ Simplifications
% 2.68/0.99  
% 2.68/0.99  
% 2.68/0.99  sim_fw_subset_subsumed:                 6
% 2.68/0.99  sim_bw_subset_subsumed:                 3
% 2.68/0.99  sim_fw_subsumed:                        1
% 2.68/0.99  sim_bw_subsumed:                        0
% 2.68/0.99  sim_fw_subsumption_res:                 0
% 2.68/0.99  sim_bw_subsumption_res:                 0
% 2.68/0.99  sim_tautology_del:                      1
% 2.68/0.99  sim_eq_tautology_del:                   0
% 2.68/0.99  sim_eq_res_simp:                        1
% 2.68/0.99  sim_fw_demodulated:                     3
% 2.68/0.99  sim_bw_demodulated:                     0
% 2.68/0.99  sim_light_normalised:                   4
% 2.68/0.99  sim_joinable_taut:                      0
% 2.68/0.99  sim_joinable_simp:                      0
% 2.68/0.99  sim_ac_normalised:                      0
% 2.68/0.99  sim_smt_subsumption:                    0
% 2.68/0.99  
%------------------------------------------------------------------------------
