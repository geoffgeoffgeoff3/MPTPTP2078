%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:45:41 EST 2020

% Result     : Theorem 3.78s
% Output     : CNFRefutation 3.78s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 180 expanded)
%              Number of clauses        :   52 (  60 expanded)
%              Number of leaves         :   11 (  40 expanded)
%              Depth                    :   13
%              Number of atoms          :  378 ( 912 expanded)
%              Number of equality atoms :   44 (  64 expanded)
%              Maximal formula depth    :   14 (   6 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( r1_tarski(X0,X1)
        <=> ! [X2,X3] :
              ( r2_hidden(k4_tarski(X2,X3),X0)
             => r2_hidden(k4_tarski(X2,X3),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(X0,X1)
        <=> ! [X2,X3] :
              ( r2_hidden(k4_tarski(X2,X3),X1)
              | ~ r2_hidden(k4_tarski(X2,X3),X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(X0,X1)
            | ? [X2,X3] :
                ( ~ r2_hidden(k4_tarski(X2,X3),X1)
                & r2_hidden(k4_tarski(X2,X3),X0) ) )
          & ( ! [X2,X3] :
                ( r2_hidden(k4_tarski(X2,X3),X1)
                | ~ r2_hidden(k4_tarski(X2,X3),X0) )
            | ~ r1_tarski(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(X0,X1)
            | ? [X2,X3] :
                ( ~ r2_hidden(k4_tarski(X2,X3),X1)
                & r2_hidden(k4_tarski(X2,X3),X0) ) )
          & ( ! [X4,X5] :
                ( r2_hidden(k4_tarski(X4,X5),X1)
                | ~ r2_hidden(k4_tarski(X4,X5),X0) )
            | ~ r1_tarski(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X1,X0] :
      ( ? [X2,X3] :
          ( ~ r2_hidden(k4_tarski(X2,X3),X1)
          & r2_hidden(k4_tarski(X2,X3),X0) )
     => ( ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
        & r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(X0,X1)
            | ( ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
              & r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) ) )
          & ( ! [X4,X5] :
                ( r2_hidden(k4_tarski(X4,X5),X1)
                | ~ r2_hidden(k4_tarski(X4,X5),X0) )
            | ~ r1_tarski(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f20,f21])).

fof(f32,plain,(
    ! [X4,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X4,X5),X1)
      | ~ r2_hidden(k4_tarski(X4,X5),X0)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( k8_relat_1(X0,X1) = X2
          <=> ! [X3,X4] :
                ( r2_hidden(k4_tarski(X3,X4),X2)
              <=> ( r2_hidden(k4_tarski(X3,X4),X1)
                  & r2_hidden(X4,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( k8_relat_1(X0,X1) = X2
          <=> ! [X3,X4] :
                ( r2_hidden(k4_tarski(X3,X4),X2)
              <=> ( r2_hidden(k4_tarski(X3,X4),X1)
                  & r2_hidden(X4,X0) ) ) )
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( k8_relat_1(X0,X1) = X2
              | ? [X3,X4] :
                  ( ( ~ r2_hidden(k4_tarski(X3,X4),X1)
                    | ~ r2_hidden(X4,X0)
                    | ~ r2_hidden(k4_tarski(X3,X4),X2) )
                  & ( ( r2_hidden(k4_tarski(X3,X4),X1)
                      & r2_hidden(X4,X0) )
                    | r2_hidden(k4_tarski(X3,X4),X2) ) ) )
            & ( ! [X3,X4] :
                  ( ( r2_hidden(k4_tarski(X3,X4),X2)
                    | ~ r2_hidden(k4_tarski(X3,X4),X1)
                    | ~ r2_hidden(X4,X0) )
                  & ( ( r2_hidden(k4_tarski(X3,X4),X1)
                      & r2_hidden(X4,X0) )
                    | ~ r2_hidden(k4_tarski(X3,X4),X2) ) )
              | k8_relat_1(X0,X1) != X2 ) )
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f7])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( k8_relat_1(X0,X1) = X2
              | ? [X3,X4] :
                  ( ( ~ r2_hidden(k4_tarski(X3,X4),X1)
                    | ~ r2_hidden(X4,X0)
                    | ~ r2_hidden(k4_tarski(X3,X4),X2) )
                  & ( ( r2_hidden(k4_tarski(X3,X4),X1)
                      & r2_hidden(X4,X0) )
                    | r2_hidden(k4_tarski(X3,X4),X2) ) ) )
            & ( ! [X3,X4] :
                  ( ( r2_hidden(k4_tarski(X3,X4),X2)
                    | ~ r2_hidden(k4_tarski(X3,X4),X1)
                    | ~ r2_hidden(X4,X0) )
                  & ( ( r2_hidden(k4_tarski(X3,X4),X1)
                      & r2_hidden(X4,X0) )
                    | ~ r2_hidden(k4_tarski(X3,X4),X2) ) )
              | k8_relat_1(X0,X1) != X2 ) )
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f14])).

fof(f16,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( k8_relat_1(X0,X1) = X2
              | ? [X3,X4] :
                  ( ( ~ r2_hidden(k4_tarski(X3,X4),X1)
                    | ~ r2_hidden(X4,X0)
                    | ~ r2_hidden(k4_tarski(X3,X4),X2) )
                  & ( ( r2_hidden(k4_tarski(X3,X4),X1)
                      & r2_hidden(X4,X0) )
                    | r2_hidden(k4_tarski(X3,X4),X2) ) ) )
            & ( ! [X5,X6] :
                  ( ( r2_hidden(k4_tarski(X5,X6),X2)
                    | ~ r2_hidden(k4_tarski(X5,X6),X1)
                    | ~ r2_hidden(X6,X0) )
                  & ( ( r2_hidden(k4_tarski(X5,X6),X1)
                      & r2_hidden(X6,X0) )
                    | ~ r2_hidden(k4_tarski(X5,X6),X2) ) )
              | k8_relat_1(X0,X1) != X2 ) )
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X2,X1,X0] :
      ( ? [X3,X4] :
          ( ( ~ r2_hidden(k4_tarski(X3,X4),X1)
            | ~ r2_hidden(X4,X0)
            | ~ r2_hidden(k4_tarski(X3,X4),X2) )
          & ( ( r2_hidden(k4_tarski(X3,X4),X1)
              & r2_hidden(X4,X0) )
            | r2_hidden(k4_tarski(X3,X4),X2) ) )
     => ( ( ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1)
          | ~ r2_hidden(sK1(X0,X1,X2),X0)
          | ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2) )
        & ( ( r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1)
            & r2_hidden(sK1(X0,X1,X2),X0) )
          | r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( k8_relat_1(X0,X1) = X2
              | ( ( ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1)
                  | ~ r2_hidden(sK1(X0,X1,X2),X0)
                  | ~ r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2) )
                & ( ( r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1)
                    & r2_hidden(sK1(X0,X1,X2),X0) )
                  | r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2) ) ) )
            & ( ! [X5,X6] :
                  ( ( r2_hidden(k4_tarski(X5,X6),X2)
                    | ~ r2_hidden(k4_tarski(X5,X6),X1)
                    | ~ r2_hidden(X6,X0) )
                  & ( ( r2_hidden(k4_tarski(X5,X6),X1)
                      & r2_hidden(X6,X0) )
                    | ~ r2_hidden(k4_tarski(X5,X6),X2) ) )
              | k8_relat_1(X0,X1) != X2 ) )
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f17])).

fof(f26,plain,(
    ! [X6,X2,X0,X5,X1] :
      ( r2_hidden(X6,X0)
      | ~ r2_hidden(k4_tarski(X5,X6),X2)
      | k8_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f44,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X6,X0)
      | ~ r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1))
      | ~ v1_relat_1(k8_relat_1(X0,X1))
      | ~ v1_relat_1(X1) ) ),
    inference(equality_resolution,[],[f26])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => v1_relat_1(k8_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k8_relat_1(X0,X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k8_relat_1(X0,X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X6,X2,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,X6),X2)
      | ~ r2_hidden(k4_tarski(X5,X6),X1)
      | ~ r2_hidden(X6,X0)
      | k8_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f42,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1))
      | ~ r2_hidden(k4_tarski(X5,X6),X1)
      | ~ r2_hidden(X6,X0)
      | ~ v1_relat_1(k8_relat_1(X0,X1))
      | ~ v1_relat_1(X1) ) ),
    inference(equality_resolution,[],[f28])).

fof(f5,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ! [X3] :
          ( v1_relat_1(X3)
         => ( ( r1_tarski(X0,X1)
              & r1_tarski(X2,X3) )
           => r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ! [X3] :
            ( v1_relat_1(X3)
           => ( ( r1_tarski(X0,X1)
                & r1_tarski(X2,X3) )
             => r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f12,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3))
          & r1_tarski(X0,X1)
          & r1_tarski(X2,X3)
          & v1_relat_1(X3) )
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f13,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3))
          & r1_tarski(X0,X1)
          & r1_tarski(X2,X3)
          & v1_relat_1(X3) )
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f12])).

fof(f24,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3))
          & r1_tarski(X0,X1)
          & r1_tarski(X2,X3)
          & v1_relat_1(X3) )
     => ( ~ r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,sK7))
        & r1_tarski(X0,X1)
        & r1_tarski(X2,sK7)
        & v1_relat_1(sK7) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ~ r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3))
            & r1_tarski(X0,X1)
            & r1_tarski(X2,X3)
            & v1_relat_1(X3) )
        & v1_relat_1(X2) )
   => ( ? [X3] :
          ( ~ r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,X3))
          & r1_tarski(sK4,sK5)
          & r1_tarski(sK6,X3)
          & v1_relat_1(X3) )
      & v1_relat_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ~ r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))
    & r1_tarski(sK4,sK5)
    & r1_tarski(sK6,sK7)
    & v1_relat_1(sK7)
    & v1_relat_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f13,f24,f23])).

fof(f40,plain,(
    r1_tarski(sK4,sK5) ),
    inference(cnf_transformation,[],[f25])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f10])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X6,X2,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,X6),X1)
      | ~ r2_hidden(k4_tarski(X5,X6),X2)
      | k8_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f43,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X5,X6),X1)
      | ~ r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1))
      | ~ v1_relat_1(k8_relat_1(X0,X1))
      | ~ v1_relat_1(X1) ) ),
    inference(equality_resolution,[],[f27])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f41,plain,(
    ~ r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)) ),
    inference(cnf_transformation,[],[f25])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f39,plain,(
    r1_tarski(sK6,sK7) ),
    inference(cnf_transformation,[],[f25])).

fof(f38,plain,(
    v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f25])).

fof(f37,plain,(
    v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_8,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(k4_tarski(X2,X3),X0)
    | r2_hidden(k4_tarski(X2,X3),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_368,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
    | r2_hidden(k4_tarski(X0_43,X0_42),X1_41)
    | ~ v1_relat_1(X0_41) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1034,plain,
    ( ~ r1_tarski(sK6,X0_41)
    | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X0_41)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_368])).

cnf(c_16361,plain,
    ( ~ r1_tarski(sK6,sK7)
    | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK7)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_1034])).

cnf(c_384,plain,
    ( ~ r2_hidden(X0_42,X0_41)
    | r2_hidden(X1_42,X1_41)
    | X1_42 != X0_42
    | X1_41 != X0_41 ),
    theory(equality)).

cnf(c_972,plain,
    ( r2_hidden(X0_42,X0_41)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | X0_42 != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
    | X0_41 != k8_relat_1(sK4,sK6) ),
    inference(instantiation,[status(thm)],[c_384])).

cnf(c_1105,plain,
    ( r2_hidden(X0_42,k8_relat_1(X0_41,k8_relat_1(sK4,sK6)))
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | X0_42 != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
    | k8_relat_1(X0_41,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
    inference(instantiation,[status(thm)],[c_972])).

cnf(c_1624,plain,
    ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,k8_relat_1(sK4,sK6)))
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
    | k8_relat_1(X0_41,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
    inference(instantiation,[status(thm)],[c_1105])).

cnf(c_15281,plain,
    ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
    | k8_relat_1(sK5,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
    inference(instantiation,[status(thm)],[c_1624])).

cnf(c_5,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X2,X0),k8_relat_1(X1,X3))
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(k8_relat_1(X1,X3)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_371,plain,
    ( r2_hidden(X0_42,X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X0_41,X1_41))
    | ~ v1_relat_1(X1_41)
    | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1067,plain,
    ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
    | ~ v1_relat_1(X1_41)
    | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
    inference(instantiation,[status(thm)],[c_371])).

cnf(c_6185,plain,
    ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,X0_41))
    | ~ v1_relat_1(X0_41)
    | ~ v1_relat_1(k8_relat_1(sK5,X0_41)) ),
    inference(instantiation,[status(thm)],[c_1067])).

cnf(c_15279,plain,
    ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
    | ~ v1_relat_1(k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
    | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
    inference(instantiation,[status(thm)],[c_6185])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k8_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_367,plain,
    ( ~ v1_relat_1(X0_41)
    | v1_relat_1(k8_relat_1(X1_41,X0_41)) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_4969,plain,
    ( ~ v1_relat_1(X0_41)
    | v1_relat_1(k8_relat_1(sK5,X0_41)) ),
    inference(instantiation,[status(thm)],[c_367])).

cnf(c_6392,plain,
    ( v1_relat_1(k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
    | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
    inference(instantiation,[status(thm)],[c_4969])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X2,X0),X3)
    | r2_hidden(k4_tarski(X2,X0),k8_relat_1(X1,X3))
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(k8_relat_1(X1,X3)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_373,plain,
    ( ~ r2_hidden(X0_42,X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),X1_41)
    | r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X0_41,X1_41))
    | ~ v1_relat_1(X1_41)
    | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_1510,plain,
    ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X1_41)
    | r2_hidden(k4_tarski(X0_43,sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
    | ~ v1_relat_1(X1_41)
    | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
    inference(instantiation,[status(thm)],[c_373])).

cnf(c_3375,plain,
    ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X1_41)
    | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
    | ~ v1_relat_1(X1_41)
    | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
    inference(instantiation,[status(thm)],[c_1510])).

cnf(c_5064,plain,
    ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
    | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,sK7))
    | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK7)
    | ~ v1_relat_1(k8_relat_1(sK5,sK7))
    | ~ v1_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_3375])).

cnf(c_1869,plain,
    ( v1_relat_1(k8_relat_1(sK5,sK7))
    | ~ v1_relat_1(sK7) ),
    inference(instantiation,[status(thm)],[c_367])).

cnf(c_379,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_1332,plain,
    ( k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) = k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) ),
    inference(instantiation,[status(thm)],[c_379])).

cnf(c_12,negated_conjecture,
    ( r1_tarski(sK4,sK5) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_364,negated_conjecture,
    ( r1_tarski(sK4,sK5) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_693,plain,
    ( r1_tarski(sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_364])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X2)
    | k8_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_366,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | ~ v1_relat_1(X2_41)
    | k8_relat_1(X1_41,k8_relat_1(X0_41,X2_41)) = k8_relat_1(X0_41,X2_41) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_691,plain,
    ( k8_relat_1(X0_41,k8_relat_1(X1_41,X2_41)) = k8_relat_1(X1_41,X2_41)
    | r1_tarski(X1_41,X0_41) != iProver_top
    | v1_relat_1(X2_41) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_366])).

cnf(c_986,plain,
    ( k8_relat_1(sK5,k8_relat_1(sK4,X0_41)) = k8_relat_1(sK4,X0_41)
    | v1_relat_1(X0_41) != iProver_top ),
    inference(superposition,[status(thm)],[c_693,c_691])).

cnf(c_997,plain,
    ( k8_relat_1(sK5,k8_relat_1(sK4,sK6)) = k8_relat_1(sK4,sK6)
    | v1_relat_1(sK6) != iProver_top ),
    inference(instantiation,[status(thm)],[c_986])).

cnf(c_4,plain,
    ( r2_hidden(k4_tarski(X0,X1),X2)
    | ~ r2_hidden(k4_tarski(X0,X1),k8_relat_1(X3,X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k8_relat_1(X3,X2)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_372,plain,
    ( r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
    | ~ v1_relat_1(X0_41)
    | ~ v1_relat_1(k8_relat_1(X1_41,X0_41)) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_453,plain,
    ( ~ v1_relat_1(X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
    | r2_hidden(k4_tarski(X0_43,X0_42),X0_41) ),
    inference(global_propositional_subsumption,[status(thm)],[c_372,c_367])).

cnf(c_454,plain,
    ( r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
    | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
    | ~ v1_relat_1(X0_41) ),
    inference(renaming,[status(thm)],[c_453])).

cnf(c_969,plain,
    ( ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_454])).

cnf(c_925,plain,
    ( v1_relat_1(k8_relat_1(sK4,sK6))
    | ~ v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_367])).

cnf(c_6,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_11,negated_conjecture,
    ( ~ r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_247,plain,
    ( ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
    | ~ v1_relat_1(X0)
    | k8_relat_1(sK5,sK7) != X1
    | k8_relat_1(sK4,sK6) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_11])).

cnf(c_248,plain,
    ( ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,sK7))
    | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
    inference(unflattening,[status(thm)],[c_247])).

cnf(c_7,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_237,plain,
    ( r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
    | ~ v1_relat_1(X0)
    | k8_relat_1(sK5,sK7) != X1
    | k8_relat_1(sK4,sK6) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_11])).

cnf(c_238,plain,
    ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
    | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
    inference(unflattening,[status(thm)],[c_237])).

cnf(c_13,negated_conjecture,
    ( r1_tarski(sK6,sK7) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_14,negated_conjecture,
    ( v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_15,negated_conjecture,
    ( v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_16,plain,
    ( v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_16361,c_15281,c_15279,c_6392,c_5064,c_1869,c_1332,c_997,c_969,c_925,c_248,c_238,c_13,c_14,c_16,c_15])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n015.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:11:38 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.78/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.78/0.98  
% 3.78/0.98  ------  iProver source info
% 3.78/0.98  
% 3.78/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.78/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.78/0.98  git: non_committed_changes: false
% 3.78/0.98  git: last_make_outside_of_git: false
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     num_symb
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       true
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  ------ Parsing...
% 3.78/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.78/0.98  ------ Proving...
% 3.78/0.98  ------ Problem Properties 
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  clauses                                 16
% 3.78/0.98  conjectures                             5
% 3.78/0.98  EPR                                     4
% 3.78/0.98  Horn                                    13
% 3.78/0.98  unary                                   5
% 3.78/0.98  binary                                  1
% 3.78/0.98  lits                                    49
% 3.78/0.98  lits eq                                 4
% 3.78/0.98  fd_pure                                 0
% 3.78/0.98  fd_pseudo                               0
% 3.78/0.98  fd_cond                                 0
% 3.78/0.98  fd_pseudo_cond                          3
% 3.78/0.98  AC symbols                              0
% 3.78/0.98  
% 3.78/0.98  ------ Schedule dynamic 5 is on 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  Current options:
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     none
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       false
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ Proving...
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  % SZS status Theorem for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  fof(f2,axiom,(
% 3.78/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (r1_tarski(X0,X1) <=> ! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X0) => r2_hidden(k4_tarski(X2,X3),X1))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f8,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : (r1_tarski(X0,X1) <=> ! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X1) | ~r2_hidden(k4_tarski(X2,X3),X0))) | ~v1_relat_1(X0))),
% 3.78/0.98    inference(ennf_transformation,[],[f2])).
% 3.78/0.98  
% 3.78/0.98  fof(f19,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | ? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0))) & (! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X1) | ~r2_hidden(k4_tarski(X2,X3),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.78/0.98    inference(nnf_transformation,[],[f8])).
% 3.78/0.98  
% 3.78/0.98  fof(f20,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | ? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0))) & (! [X4,X5] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.78/0.98    inference(rectify,[],[f19])).
% 3.78/0.98  
% 3.78/0.98  fof(f21,plain,(
% 3.78/0.98    ! [X1,X0] : (? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0)) => (~r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1) & r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)))),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f22,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | (~r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1) & r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0))) & (! [X4,X5] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.78/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f20,f21])).
% 3.78/0.98  
% 3.78/0.98  fof(f32,plain,(
% 3.78/0.98    ( ! [X4,X0,X5,X1] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0) | ~r1_tarski(X0,X1) | ~v1_relat_1(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f22])).
% 3.78/0.98  
% 3.78/0.98  fof(f1,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (k8_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> (r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0))))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f7,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : ((k8_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> (r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)))) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f1])).
% 3.78/0.98  
% 3.78/0.98  fof(f14,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (((k8_relat_1(X0,X1) = X2 | ? [X3,X4] : (((~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X2) | (~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0))) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | ~r2_hidden(k4_tarski(X3,X4),X2))) | k8_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(nnf_transformation,[],[f7])).
% 3.78/0.98  
% 3.78/0.98  fof(f15,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (((k8_relat_1(X0,X1) = X2 | ? [X3,X4] : ((~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X2) | ~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | ~r2_hidden(k4_tarski(X3,X4),X2))) | k8_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(flattening,[],[f14])).
% 3.78/0.98  
% 3.78/0.98  fof(f16,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (((k8_relat_1(X0,X1) = X2 | ? [X3,X4] : ((~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X5,X6] : ((r2_hidden(k4_tarski(X5,X6),X2) | ~r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(X6,X0)) & ((r2_hidden(k4_tarski(X5,X6),X1) & r2_hidden(X6,X0)) | ~r2_hidden(k4_tarski(X5,X6),X2))) | k8_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(rectify,[],[f15])).
% 3.78/0.98  
% 3.78/0.98  fof(f17,plain,(
% 3.78/0.98    ! [X2,X1,X0] : (? [X3,X4] : ((~r2_hidden(k4_tarski(X3,X4),X1) | ~r2_hidden(X4,X0) | ~r2_hidden(k4_tarski(X3,X4),X2)) & ((r2_hidden(k4_tarski(X3,X4),X1) & r2_hidden(X4,X0)) | r2_hidden(k4_tarski(X3,X4),X2))) => ((~r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2))))),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f18,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (((k8_relat_1(X0,X1) = X2 | ((~r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(k4_tarski(sK0(X0,X1,X2),sK1(X0,X1,X2)),X2)))) & (! [X5,X6] : ((r2_hidden(k4_tarski(X5,X6),X2) | ~r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(X6,X0)) & ((r2_hidden(k4_tarski(X5,X6),X1) & r2_hidden(X6,X0)) | ~r2_hidden(k4_tarski(X5,X6),X2))) | k8_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f17])).
% 3.78/0.98  
% 3.78/0.98  fof(f26,plain,(
% 3.78/0.98    ( ! [X6,X2,X0,X5,X1] : (r2_hidden(X6,X0) | ~r2_hidden(k4_tarski(X5,X6),X2) | k8_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f18])).
% 3.78/0.98  
% 3.78/0.98  fof(f44,plain,(
% 3.78/0.98    ( ! [X6,X0,X5,X1] : (r2_hidden(X6,X0) | ~r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1)) | ~v1_relat_1(k8_relat_1(X0,X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(equality_resolution,[],[f26])).
% 3.78/0.98  
% 3.78/0.98  fof(f3,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => v1_relat_1(k8_relat_1(X0,X1)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f9,plain,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(k8_relat_1(X0,X1)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f3])).
% 3.78/0.98  
% 3.78/0.98  fof(f35,plain,(
% 3.78/0.98    ( ! [X0,X1] : (v1_relat_1(k8_relat_1(X0,X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f9])).
% 3.78/0.98  
% 3.78/0.98  fof(f28,plain,(
% 3.78/0.98    ( ! [X6,X2,X0,X5,X1] : (r2_hidden(k4_tarski(X5,X6),X2) | ~r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(X6,X0) | k8_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f18])).
% 3.78/0.98  
% 3.78/0.98  fof(f42,plain,(
% 3.78/0.98    ( ! [X6,X0,X5,X1] : (r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1)) | ~r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(X6,X0) | ~v1_relat_1(k8_relat_1(X0,X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(equality_resolution,[],[f28])).
% 3.78/0.98  
% 3.78/0.98  fof(f5,conjecture,(
% 3.78/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) => ! [X3] : (v1_relat_1(X3) => ((r1_tarski(X0,X1) & r1_tarski(X2,X3)) => r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f6,negated_conjecture,(
% 3.78/0.98    ~! [X0,X1,X2] : (v1_relat_1(X2) => ! [X3] : (v1_relat_1(X3) => ((r1_tarski(X0,X1) & r1_tarski(X2,X3)) => r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)))))),
% 3.78/0.98    inference(negated_conjecture,[],[f5])).
% 3.78/0.98  
% 3.78/0.98  fof(f12,plain,(
% 3.78/0.98    ? [X0,X1,X2] : (? [X3] : ((~r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) & (r1_tarski(X0,X1) & r1_tarski(X2,X3))) & v1_relat_1(X3)) & v1_relat_1(X2))),
% 3.78/0.98    inference(ennf_transformation,[],[f6])).
% 3.78/0.98  
% 3.78/0.98  fof(f13,plain,(
% 3.78/0.98    ? [X0,X1,X2] : (? [X3] : (~r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) & r1_tarski(X0,X1) & r1_tarski(X2,X3) & v1_relat_1(X3)) & v1_relat_1(X2))),
% 3.78/0.98    inference(flattening,[],[f12])).
% 3.78/0.98  
% 3.78/0.98  fof(f24,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (? [X3] : (~r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) & r1_tarski(X0,X1) & r1_tarski(X2,X3) & v1_relat_1(X3)) => (~r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,sK7)) & r1_tarski(X0,X1) & r1_tarski(X2,sK7) & v1_relat_1(sK7))) )),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f23,plain,(
% 3.78/0.98    ? [X0,X1,X2] : (? [X3] : (~r1_tarski(k8_relat_1(X0,X2),k8_relat_1(X1,X3)) & r1_tarski(X0,X1) & r1_tarski(X2,X3) & v1_relat_1(X3)) & v1_relat_1(X2)) => (? [X3] : (~r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,X3)) & r1_tarski(sK4,sK5) & r1_tarski(sK6,X3) & v1_relat_1(X3)) & v1_relat_1(sK6))),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f25,plain,(
% 3.78/0.98    (~r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)) & r1_tarski(sK4,sK5) & r1_tarski(sK6,sK7) & v1_relat_1(sK7)) & v1_relat_1(sK6)),
% 3.78/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f13,f24,f23])).
% 3.78/0.98  
% 3.78/0.98  fof(f40,plain,(
% 3.78/0.98    r1_tarski(sK4,sK5)),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f4,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f10,plain,(
% 3.78/0.98    ! [X0,X1,X2] : ((k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2)) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X2))),
% 3.78/0.98    inference(ennf_transformation,[],[f4])).
% 3.78/0.98  
% 3.78/0.98  fof(f11,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X2))),
% 3.78/0.98    inference(flattening,[],[f10])).
% 3.78/0.98  
% 3.78/0.98  fof(f36,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (k8_relat_1(X0,X2) = k8_relat_1(X1,k8_relat_1(X0,X2)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X2)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f11])).
% 3.78/0.98  
% 3.78/0.98  fof(f27,plain,(
% 3.78/0.98    ( ! [X6,X2,X0,X5,X1] : (r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(k4_tarski(X5,X6),X2) | k8_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f18])).
% 3.78/0.98  
% 3.78/0.98  fof(f43,plain,(
% 3.78/0.98    ( ! [X6,X0,X5,X1] : (r2_hidden(k4_tarski(X5,X6),X1) | ~r2_hidden(k4_tarski(X5,X6),k8_relat_1(X0,X1)) | ~v1_relat_1(k8_relat_1(X0,X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(equality_resolution,[],[f27])).
% 3.78/0.98  
% 3.78/0.98  fof(f34,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1) | ~v1_relat_1(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f22])).
% 3.78/0.98  
% 3.78/0.98  fof(f41,plain,(
% 3.78/0.98    ~r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f33,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0) | ~v1_relat_1(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f22])).
% 3.78/0.98  
% 3.78/0.98  fof(f39,plain,(
% 3.78/0.98    r1_tarski(sK6,sK7)),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f38,plain,(
% 3.78/0.98    v1_relat_1(sK7)),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f37,plain,(
% 3.78/0.98    v1_relat_1(sK6)),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  cnf(c_8,plain,
% 3.78/0.98      ( ~ r1_tarski(X0,X1)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X2,X3),X0)
% 3.78/0.98      | r2_hidden(k4_tarski(X2,X3),X1)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f32]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_368,plain,
% 3.78/0.98      ( ~ r1_tarski(X0_41,X1_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
% 3.78/0.98      | r2_hidden(k4_tarski(X0_43,X0_42),X1_41)
% 3.78/0.98      | ~ v1_relat_1(X0_41) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_8]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1034,plain,
% 3.78/0.98      ( ~ r1_tarski(sK6,X0_41)
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
% 3.78/0.98      | ~ v1_relat_1(sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_368]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_16361,plain,
% 3.78/0.98      ( ~ r1_tarski(sK6,sK7)
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK7)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
% 3.78/0.98      | ~ v1_relat_1(sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1034]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_384,plain,
% 3.78/0.98      ( ~ r2_hidden(X0_42,X0_41)
% 3.78/0.98      | r2_hidden(X1_42,X1_41)
% 3.78/0.98      | X1_42 != X0_42
% 3.78/0.98      | X1_41 != X0_41 ),
% 3.78/0.98      theory(equality) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_972,plain,
% 3.78/0.98      ( r2_hidden(X0_42,X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | X0_42 != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
% 3.78/0.98      | X0_41 != k8_relat_1(sK4,sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_384]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1105,plain,
% 3.78/0.98      ( r2_hidden(X0_42,k8_relat_1(X0_41,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | X0_42 != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
% 3.78/0.98      | k8_relat_1(X0_41,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_972]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1624,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
% 3.78/0.98      | k8_relat_1(X0_41,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1105]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_15281,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) != k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)))
% 3.78/0.98      | k8_relat_1(sK5,k8_relat_1(sK4,sK6)) != k8_relat_1(sK4,sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1624]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_5,plain,
% 3.78/0.98      ( r2_hidden(X0,X1)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X2,X0),k8_relat_1(X1,X3))
% 3.78/0.98      | ~ v1_relat_1(X3)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X1,X3)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f44]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_371,plain,
% 3.78/0.98      ( r2_hidden(X0_42,X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X0_41,X1_41))
% 3.78/0.98      | ~ v1_relat_1(X1_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_5]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1067,plain,
% 3.78/0.98      ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
% 3.78/0.98      | ~ v1_relat_1(X1_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_371]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_6185,plain,
% 3.78/0.98      ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,X0_41))
% 3.78/0.98      | ~ v1_relat_1(X0_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK5,X0_41)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1067]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_15279,plain,
% 3.78/0.98      ( r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_6185]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_9,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0) | v1_relat_1(k8_relat_1(X1,X0)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f35]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_367,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0_41) | v1_relat_1(k8_relat_1(X1_41,X0_41)) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_4969,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0_41) | v1_relat_1(k8_relat_1(sK5,X0_41)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_367]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_6392,plain,
% 3.78/0.98      ( v1_relat_1(k8_relat_1(sK5,k8_relat_1(sK4,sK6)))
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_4969]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3,plain,
% 3.78/0.98      ( ~ r2_hidden(X0,X1)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X2,X0),X3)
% 3.78/0.98      | r2_hidden(k4_tarski(X2,X0),k8_relat_1(X1,X3))
% 3.78/0.98      | ~ v1_relat_1(X3)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X1,X3)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f42]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_373,plain,
% 3.78/0.98      ( ~ r2_hidden(X0_42,X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),X1_41)
% 3.78/0.98      | r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X0_41,X1_41))
% 3.78/0.98      | ~ v1_relat_1(X1_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1510,plain,
% 3.78/0.98      ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X1_41)
% 3.78/0.98      | r2_hidden(k4_tarski(X0_43,sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
% 3.78/0.98      | ~ v1_relat_1(X1_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_373]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3375,plain,
% 3.78/0.98      ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),X1_41)
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(X0_41,X1_41))
% 3.78/0.98      | ~ v1_relat_1(X1_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X0_41,X1_41)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1510]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_5064,plain,
% 3.78/0.98      ( ~ r2_hidden(sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK5)
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,sK7))
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK7)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK5,sK7))
% 3.78/0.98      | ~ v1_relat_1(sK7) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_3375]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1869,plain,
% 3.78/0.98      ( v1_relat_1(k8_relat_1(sK5,sK7)) | ~ v1_relat_1(sK7) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_367]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_379,plain,( X0_42 = X0_42 ),theory(equality) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1332,plain,
% 3.78/0.98      ( k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) = k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_379]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12,negated_conjecture,
% 3.78/0.98      ( r1_tarski(sK4,sK5) ),
% 3.78/0.98      inference(cnf_transformation,[],[f40]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_364,negated_conjecture,
% 3.78/0.98      ( r1_tarski(sK4,sK5) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_12]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_693,plain,
% 3.78/0.98      ( r1_tarski(sK4,sK5) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_364]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_10,plain,
% 3.78/0.98      ( ~ r1_tarski(X0,X1)
% 3.78/0.98      | ~ v1_relat_1(X2)
% 3.78/0.98      | k8_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,X2) ),
% 3.78/0.98      inference(cnf_transformation,[],[f36]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_366,plain,
% 3.78/0.98      ( ~ r1_tarski(X0_41,X1_41)
% 3.78/0.98      | ~ v1_relat_1(X2_41)
% 3.78/0.98      | k8_relat_1(X1_41,k8_relat_1(X0_41,X2_41)) = k8_relat_1(X0_41,X2_41) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_10]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_691,plain,
% 3.78/0.98      ( k8_relat_1(X0_41,k8_relat_1(X1_41,X2_41)) = k8_relat_1(X1_41,X2_41)
% 3.78/0.98      | r1_tarski(X1_41,X0_41) != iProver_top
% 3.78/0.98      | v1_relat_1(X2_41) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_366]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_986,plain,
% 3.78/0.98      ( k8_relat_1(sK5,k8_relat_1(sK4,X0_41)) = k8_relat_1(sK4,X0_41)
% 3.78/0.98      | v1_relat_1(X0_41) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_693,c_691]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_997,plain,
% 3.78/0.98      ( k8_relat_1(sK5,k8_relat_1(sK4,sK6)) = k8_relat_1(sK4,sK6)
% 3.78/0.98      | v1_relat_1(sK6) != iProver_top ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_986]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_4,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(X0,X1),X2)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0,X1),k8_relat_1(X3,X2))
% 3.78/0.98      | ~ v1_relat_1(X2)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X3,X2)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_372,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
% 3.78/0.98      | ~ v1_relat_1(X0_41)
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(X1_41,X0_41)) ),
% 3.78/0.98      inference(subtyping,[status(esa)],[c_4]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_453,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
% 3.78/0.98      | r2_hidden(k4_tarski(X0_43,X0_42),X0_41) ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_372,c_367]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_454,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(X0_43,X0_42),X0_41)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(X0_43,X0_42),k8_relat_1(X1_41,X0_41))
% 3.78/0.98      | ~ v1_relat_1(X0_41) ),
% 3.78/0.98      inference(renaming,[status(thm)],[c_453]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_969,plain,
% 3.78/0.98      ( ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),sK6)
% 3.78/0.98      | ~ v1_relat_1(sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_454]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_925,plain,
% 3.78/0.98      ( v1_relat_1(k8_relat_1(sK4,sK6)) | ~ v1_relat_1(sK6) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_367]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_6,plain,
% 3.78/0.98      ( r1_tarski(X0,X1)
% 3.78/0.98      | ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f34]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_11,negated_conjecture,
% 3.78/0.98      ( ~ r1_tarski(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f41]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_247,plain,
% 3.78/0.98      ( ~ r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X1)
% 3.78/0.98      | ~ v1_relat_1(X0)
% 3.78/0.98      | k8_relat_1(sK5,sK7) != X1
% 3.78/0.98      | k8_relat_1(sK4,sK6) != X0 ),
% 3.78/0.98      inference(resolution_lifted,[status(thm)],[c_6,c_11]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_248,plain,
% 3.78/0.98      ( ~ r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK5,sK7))
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
% 3.78/0.98      inference(unflattening,[status(thm)],[c_247]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7,plain,
% 3.78/0.98      ( r1_tarski(X0,X1)
% 3.78/0.98      | r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f33]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_237,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(sK2(X0,X1),sK3(X0,X1)),X0)
% 3.78/0.98      | ~ v1_relat_1(X0)
% 3.78/0.98      | k8_relat_1(sK5,sK7) != X1
% 3.78/0.98      | k8_relat_1(sK4,sK6) != X0 ),
% 3.78/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_11]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_238,plain,
% 3.78/0.98      ( r2_hidden(k4_tarski(sK2(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7)),sK3(k8_relat_1(sK4,sK6),k8_relat_1(sK5,sK7))),k8_relat_1(sK4,sK6))
% 3.78/0.98      | ~ v1_relat_1(k8_relat_1(sK4,sK6)) ),
% 3.78/0.98      inference(unflattening,[status(thm)],[c_237]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_13,negated_conjecture,
% 3.78/0.98      ( r1_tarski(sK6,sK7) ),
% 3.78/0.98      inference(cnf_transformation,[],[f39]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_14,negated_conjecture,
% 3.78/0.98      ( v1_relat_1(sK7) ),
% 3.78/0.98      inference(cnf_transformation,[],[f38]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_15,negated_conjecture,
% 3.78/0.98      ( v1_relat_1(sK6) ),
% 3.78/0.98      inference(cnf_transformation,[],[f37]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_16,plain,
% 3.78/0.98      ( v1_relat_1(sK6) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(contradiction,plain,
% 3.78/0.98      ( $false ),
% 3.78/0.98      inference(minisat,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_16361,c_15281,c_15279,c_6392,c_5064,c_1869,c_1332,
% 3.78/0.98                 c_997,c_969,c_925,c_248,c_238,c_13,c_14,c_16,c_15]) ).
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  ------                               Statistics
% 3.78/0.98  
% 3.78/0.98  ------ General
% 3.78/0.98  
% 3.78/0.98  abstr_ref_over_cycles:                  0
% 3.78/0.98  abstr_ref_under_cycles:                 0
% 3.78/0.98  gc_basic_clause_elim:                   0
% 3.78/0.98  forced_gc_time:                         0
% 3.78/0.98  parsing_time:                           0.01
% 3.78/0.98  unif_index_cands_time:                  0.
% 3.78/0.98  unif_index_add_time:                    0.
% 3.78/0.98  orderings_time:                         0.
% 3.78/0.98  out_proof_time:                         0.008
% 3.78/0.98  total_time:                             0.472
% 3.78/0.98  num_of_symbols:                         47
% 3.78/0.98  num_of_terms:                           15268
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing
% 3.78/0.98  
% 3.78/0.98  num_of_splits:                          0
% 3.78/0.98  num_of_split_atoms:                     0
% 3.78/0.98  num_of_reused_defs:                     0
% 3.78/0.98  num_eq_ax_congr_red:                    20
% 3.78/0.98  num_of_sem_filtered_clauses:            1
% 3.78/0.98  num_of_subtypes:                        3
% 3.78/0.98  monotx_restored_types:                  0
% 3.78/0.98  sat_num_of_epr_types:                   0
% 3.78/0.98  sat_num_of_non_cyclic_types:            0
% 3.78/0.98  sat_guarded_non_collapsed_types:        1
% 3.78/0.98  num_pure_diseq_elim:                    0
% 3.78/0.98  simp_replaced_by:                       0
% 3.78/0.98  res_preprocessed:                       67
% 3.78/0.98  prep_upred:                             0
% 3.78/0.98  prep_unflattend:                        12
% 3.78/0.98  smt_new_axioms:                         0
% 3.78/0.98  pred_elim_cands:                        3
% 3.78/0.98  pred_elim:                              0
% 3.78/0.98  pred_elim_cl:                           0
% 3.78/0.98  pred_elim_cycles:                       1
% 3.78/0.98  merged_defs:                            0
% 3.78/0.98  merged_defs_ncl:                        0
% 3.78/0.98  bin_hyper_res:                          0
% 3.78/0.98  prep_cycles:                            3
% 3.78/0.98  pred_elim_time:                         0.003
% 3.78/0.98  splitting_time:                         0.
% 3.78/0.98  sem_filter_time:                        0.
% 3.78/0.98  monotx_time:                            0.
% 3.78/0.98  subtype_inf_time:                       0.001
% 3.78/0.98  
% 3.78/0.98  ------ Problem properties
% 3.78/0.98  
% 3.78/0.98  clauses:                                16
% 3.78/0.98  conjectures:                            5
% 3.78/0.98  epr:                                    4
% 3.78/0.98  horn:                                   13
% 3.78/0.98  ground:                                 5
% 3.78/0.98  unary:                                  5
% 3.78/0.98  binary:                                 1
% 3.78/0.98  lits:                                   49
% 3.78/0.98  lits_eq:                                4
% 3.78/0.98  fd_pure:                                0
% 3.78/0.98  fd_pseudo:                              0
% 3.78/0.98  fd_cond:                                0
% 3.78/0.98  fd_pseudo_cond:                         3
% 3.78/0.98  ac_symbols:                             0
% 3.78/0.98  
% 3.78/0.98  ------ Propositional Solver
% 3.78/0.98  
% 3.78/0.98  prop_solver_calls:                      28
% 3.78/0.98  prop_fast_solver_calls:                 744
% 3.78/0.98  smt_solver_calls:                       0
% 3.78/0.98  smt_fast_solver_calls:                  0
% 3.78/0.98  prop_num_of_clauses:                    4660
% 3.78/0.98  prop_preprocess_simplified:             6374
% 3.78/0.98  prop_fo_subsumed:                       12
% 3.78/0.98  prop_solver_time:                       0.
% 3.78/0.98  smt_solver_time:                        0.
% 3.78/0.98  smt_fast_solver_time:                   0.
% 3.78/0.98  prop_fast_solver_time:                  0.
% 3.78/0.98  prop_unsat_core_time:                   0.
% 3.78/0.98  
% 3.78/0.98  ------ QBF
% 3.78/0.98  
% 3.78/0.98  qbf_q_res:                              0
% 3.78/0.98  qbf_num_tautologies:                    0
% 3.78/0.98  qbf_prep_cycles:                        0
% 3.78/0.98  
% 3.78/0.98  ------ BMC1
% 3.78/0.98  
% 3.78/0.98  bmc1_current_bound:                     -1
% 3.78/0.98  bmc1_last_solved_bound:                 -1
% 3.78/0.98  bmc1_unsat_core_size:                   -1
% 3.78/0.98  bmc1_unsat_core_parents_size:           -1
% 3.78/0.98  bmc1_merge_next_fun:                    0
% 3.78/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation
% 3.78/0.98  
% 3.78/0.98  inst_num_of_clauses:                    924
% 3.78/0.98  inst_num_in_passive:                    370
% 3.78/0.98  inst_num_in_active:                     484
% 3.78/0.98  inst_num_in_unprocessed:                69
% 3.78/0.98  inst_num_of_loops:                      592
% 3.78/0.98  inst_num_of_learning_restarts:          0
% 3.78/0.98  inst_num_moves_active_passive:          101
% 3.78/0.98  inst_lit_activity:                      0
% 3.78/0.98  inst_lit_activity_moves:                0
% 3.78/0.98  inst_num_tautologies:                   0
% 3.78/0.98  inst_num_prop_implied:                  0
% 3.78/0.98  inst_num_existing_simplified:           0
% 3.78/0.98  inst_num_eq_res_simplified:             0
% 3.78/0.98  inst_num_child_elim:                    0
% 3.78/0.98  inst_num_of_dismatching_blockings:      1210
% 3.78/0.98  inst_num_of_non_proper_insts:           1601
% 3.78/0.98  inst_num_of_duplicates:                 0
% 3.78/0.98  inst_inst_num_from_inst_to_res:         0
% 3.78/0.98  inst_dismatching_checking_time:         0.
% 3.78/0.98  
% 3.78/0.98  ------ Resolution
% 3.78/0.98  
% 3.78/0.98  res_num_of_clauses:                     0
% 3.78/0.98  res_num_in_passive:                     0
% 3.78/0.98  res_num_in_active:                      0
% 3.78/0.98  res_num_of_loops:                       70
% 3.78/0.98  res_forward_subset_subsumed:            87
% 3.78/0.98  res_backward_subset_subsumed:           0
% 3.78/0.98  res_forward_subsumed:                   0
% 3.78/0.98  res_backward_subsumed:                  0
% 3.78/0.98  res_forward_subsumption_resolution:     0
% 3.78/0.98  res_backward_subsumption_resolution:    0
% 3.78/0.98  res_clause_to_clause_subsumption:       2661
% 3.78/0.98  res_orphan_elimination:                 0
% 3.78/0.98  res_tautology_del:                      198
% 3.78/0.98  res_num_eq_res_simplified:              0
% 3.78/0.98  res_num_sel_changes:                    0
% 3.78/0.98  res_moves_from_active_to_pass:          0
% 3.78/0.98  
% 3.78/0.98  ------ Superposition
% 3.78/0.98  
% 3.78/0.98  sup_time_total:                         0.
% 3.78/0.98  sup_time_generating:                    0.
% 3.78/0.98  sup_time_sim_full:                      0.
% 3.78/0.98  sup_time_sim_immed:                     0.
% 3.78/0.98  
% 3.78/0.98  sup_num_of_clauses:                     557
% 3.78/0.98  sup_num_in_active:                      118
% 3.78/0.98  sup_num_in_passive:                     439
% 3.78/0.98  sup_num_of_loops:                       118
% 3.78/0.98  sup_fw_superposition:                   491
% 3.78/0.98  sup_bw_superposition:                   412
% 3.78/0.98  sup_immediate_simplified:               284
% 3.78/0.98  sup_given_eliminated:                   0
% 3.78/0.98  comparisons_done:                       0
% 3.78/0.98  comparisons_avoided:                    0
% 3.78/0.98  
% 3.78/0.98  ------ Simplifications
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  sim_fw_subset_subsumed:                 4
% 3.78/0.98  sim_bw_subset_subsumed:                 0
% 3.78/0.98  sim_fw_subsumed:                        163
% 3.78/0.98  sim_bw_subsumed:                        0
% 3.78/0.98  sim_fw_subsumption_res:                 6
% 3.78/0.98  sim_bw_subsumption_res:                 0
% 3.78/0.98  sim_tautology_del:                      123
% 3.78/0.98  sim_eq_tautology_del:                   16
% 3.78/0.98  sim_eq_res_simp:                        3
% 3.78/0.98  sim_fw_demodulated:                     8
% 3.78/0.98  sim_bw_demodulated:                     0
% 3.78/0.98  sim_light_normalised:                   195
% 3.78/0.98  sim_joinable_taut:                      0
% 3.78/0.98  sim_joinable_simp:                      0
% 3.78/0.98  sim_ac_normalised:                      0
% 3.78/0.98  sim_smt_subsumption:                    0
% 3.78/0.98  
%------------------------------------------------------------------------------
