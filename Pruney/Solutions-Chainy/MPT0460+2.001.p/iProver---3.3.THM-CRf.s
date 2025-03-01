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
% DateTime   : Thu Dec  3 11:43:28 EST 2020

% Result     : Theorem 3.63s
% Output     : CNFRefutation 3.63s
% Verified   : 
% Statistics : Number of formulae       :   92 ( 195 expanded)
%              Number of clauses        :   47 (  58 expanded)
%              Number of leaves         :   12 (  50 expanded)
%              Depth                    :   25
%              Number of atoms          :  418 (1016 expanded)
%              Number of equality atoms :  152 ( 182 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   17 (   4 average)
%              Maximal term depth       :    5 (   2 average)

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

fof(f7,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(X0,X1)
        <=> ! [X2,X3] :
              ( r2_hidden(k4_tarski(X2,X3),X1)
              | ~ r2_hidden(k4_tarski(X2,X3),X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f15,plain,(
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
    inference(nnf_transformation,[],[f7])).

fof(f16,plain,(
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
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X1,X0] :
      ( ? [X2,X3] :
          ( ~ r2_hidden(k4_tarski(X2,X3),X1)
          & r2_hidden(k4_tarski(X2,X3),X0) )
     => ( ~ r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1)
        & r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(X0,X1)
            | ( ~ r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1)
              & r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) ) )
          & ( ! [X4,X5] :
                ( r2_hidden(k4_tarski(X4,X5),X1)
                | ~ r2_hidden(k4_tarski(X4,X5),X0) )
            | ~ r1_tarski(X0,X1) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f17])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ( k5_relat_1(X0,X1) = X2
              <=> ! [X3,X4] :
                    ( r2_hidden(k4_tarski(X3,X4),X2)
                  <=> ? [X5] :
                        ( r2_hidden(k4_tarski(X5,X4),X1)
                        & r2_hidden(k4_tarski(X3,X5),X0) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k5_relat_1(X0,X1) = X2
              <=> ! [X3,X4] :
                    ( r2_hidden(k4_tarski(X3,X4),X2)
                  <=> ? [X5] :
                        ( r2_hidden(k4_tarski(X5,X4),X1)
                        & r2_hidden(k4_tarski(X3,X5),X0) ) ) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k5_relat_1(X0,X1) = X2
                  | ? [X3,X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(k4_tarski(X5,X4),X1)
                            | ~ r2_hidden(k4_tarski(X3,X5),X0) )
                        | ~ r2_hidden(k4_tarski(X3,X4),X2) )
                      & ( ? [X5] :
                            ( r2_hidden(k4_tarski(X5,X4),X1)
                            & r2_hidden(k4_tarski(X3,X5),X0) )
                        | r2_hidden(k4_tarski(X3,X4),X2) ) ) )
                & ( ! [X3,X4] :
                      ( ( r2_hidden(k4_tarski(X3,X4),X2)
                        | ! [X5] :
                            ( ~ r2_hidden(k4_tarski(X5,X4),X1)
                            | ~ r2_hidden(k4_tarski(X3,X5),X0) ) )
                      & ( ? [X5] :
                            ( r2_hidden(k4_tarski(X5,X4),X1)
                            & r2_hidden(k4_tarski(X3,X5),X0) )
                        | ~ r2_hidden(k4_tarski(X3,X4),X2) ) )
                  | k5_relat_1(X0,X1) != X2 ) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k5_relat_1(X0,X1) = X2
                  | ? [X3,X4] :
                      ( ( ! [X5] :
                            ( ~ r2_hidden(k4_tarski(X5,X4),X1)
                            | ~ r2_hidden(k4_tarski(X3,X5),X0) )
                        | ~ r2_hidden(k4_tarski(X3,X4),X2) )
                      & ( ? [X6] :
                            ( r2_hidden(k4_tarski(X6,X4),X1)
                            & r2_hidden(k4_tarski(X3,X6),X0) )
                        | r2_hidden(k4_tarski(X3,X4),X2) ) ) )
                & ( ! [X7,X8] :
                      ( ( r2_hidden(k4_tarski(X7,X8),X2)
                        | ! [X9] :
                            ( ~ r2_hidden(k4_tarski(X9,X8),X1)
                            | ~ r2_hidden(k4_tarski(X7,X9),X0) ) )
                      & ( ? [X10] :
                            ( r2_hidden(k4_tarski(X10,X8),X1)
                            & r2_hidden(k4_tarski(X7,X10),X0) )
                        | ~ r2_hidden(k4_tarski(X7,X8),X2) ) )
                  | k5_relat_1(X0,X1) != X2 ) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f19])).

fof(f23,plain,(
    ! [X8,X7,X1,X0] :
      ( ? [X10] :
          ( r2_hidden(k4_tarski(X10,X8),X1)
          & r2_hidden(k4_tarski(X7,X10),X0) )
     => ( r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1)
        & r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X4,X3,X2,X1,X0] :
      ( ? [X6] :
          ( r2_hidden(k4_tarski(X6,X4),X1)
          & r2_hidden(k4_tarski(X3,X6),X0) )
     => ( r2_hidden(k4_tarski(sK4(X0,X1,X2),X4),X1)
        & r2_hidden(k4_tarski(X3,sK4(X0,X1,X2)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3,X4] :
          ( ( ! [X5] :
                ( ~ r2_hidden(k4_tarski(X5,X4),X1)
                | ~ r2_hidden(k4_tarski(X3,X5),X0) )
            | ~ r2_hidden(k4_tarski(X3,X4),X2) )
          & ( ? [X6] :
                ( r2_hidden(k4_tarski(X6,X4),X1)
                & r2_hidden(k4_tarski(X3,X6),X0) )
            | r2_hidden(k4_tarski(X3,X4),X2) ) )
     => ( ( ! [X5] :
              ( ~ r2_hidden(k4_tarski(X5,sK3(X0,X1,X2)),X1)
              | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),X5),X0) )
          | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) )
        & ( ? [X6] :
              ( r2_hidden(k4_tarski(X6,sK3(X0,X1,X2)),X1)
              & r2_hidden(k4_tarski(sK2(X0,X1,X2),X6),X0) )
          | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k5_relat_1(X0,X1) = X2
                  | ( ( ! [X5] :
                          ( ~ r2_hidden(k4_tarski(X5,sK3(X0,X1,X2)),X1)
                          | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),X5),X0) )
                      | ~ r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) )
                    & ( ( r2_hidden(k4_tarski(sK4(X0,X1,X2),sK3(X0,X1,X2)),X1)
                        & r2_hidden(k4_tarski(sK2(X0,X1,X2),sK4(X0,X1,X2)),X0) )
                      | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2) ) ) )
                & ( ! [X7,X8] :
                      ( ( r2_hidden(k4_tarski(X7,X8),X2)
                        | ! [X9] :
                            ( ~ r2_hidden(k4_tarski(X9,X8),X1)
                            | ~ r2_hidden(k4_tarski(X7,X9),X0) ) )
                      & ( ( r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1)
                          & r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0) )
                        | ~ r2_hidden(k4_tarski(X7,X8),X2) ) )
                  | k5_relat_1(X0,X1) != X2 ) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f20,f23,f22,f21])).

fof(f35,plain,(
    ! [X2,X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0)
      | ~ r2_hidden(k4_tarski(X7,X8),X2)
      | k5_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f51,plain,(
    ! [X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0)
      | ~ r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1))
      | ~ v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f35])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f10,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f9])).

fof(f41,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f5,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => ( r1_tarski(X0,X1)
               => r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => ! [X2] :
                ( v1_relat_1(X2)
               => ( r1_tarski(X0,X1)
                 => r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) ) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f11,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))
              & r1_tarski(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f12,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))
              & r1_tarski(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f11])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))
          & r1_tarski(X0,X1)
          & v1_relat_1(X2) )
     => ( ~ r1_tarski(k5_relat_1(sK8,X0),k5_relat_1(sK8,X1))
        & r1_tarski(X0,X1)
        & v1_relat_1(sK8) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))
              & r1_tarski(X0,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
     => ( ? [X2] :
            ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,sK7))
            & r1_tarski(X0,sK7)
            & v1_relat_1(X2) )
        & v1_relat_1(sK7) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))
                & r1_tarski(X0,X1)
                & v1_relat_1(X2) )
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k5_relat_1(X2,sK6),k5_relat_1(X2,X1))
              & r1_tarski(sK6,X1)
              & v1_relat_1(X2) )
          & v1_relat_1(X1) )
      & v1_relat_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ~ r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7))
    & r1_tarski(sK6,sK7)
    & v1_relat_1(sK8)
    & v1_relat_1(sK7)
    & v1_relat_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7,sK8])],[f12,f27,f26,f25])).

fof(f45,plain,(
    r1_tarski(sK6,sK7) ),
    inference(cnf_transformation,[],[f28])).

fof(f36,plain,(
    ! [X2,X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X8),X2)
      | k5_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f50,plain,(
    ! [X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1))
      | ~ v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f36])).

fof(f32,plain,(
    ! [X4,X0,X5,X1] :
      ( r2_hidden(k4_tarski(X4,X5),X1)
      | ~ r2_hidden(k4_tarski(X4,X5),X0)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f42,plain,(
    v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f28])).

fof(f37,plain,(
    ! [X2,X0,X8,X7,X1,X9] :
      ( r2_hidden(k4_tarski(X7,X8),X2)
      | ~ r2_hidden(k4_tarski(X9,X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X9),X0)
      | k5_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f49,plain,(
    ! [X0,X8,X7,X1,X9] :
      ( r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1))
      | ~ r2_hidden(k4_tarski(X9,X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X9),X0)
      | ~ v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f37])).

fof(f43,plain,(
    v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f28])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f46,plain,(
    ~ r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) ),
    inference(cnf_transformation,[],[f28])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f13])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f48,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f29])).

fof(f44,plain,(
    v1_relat_1(sK8) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_4,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
    | r1_tarski(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_603,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_11,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
    | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_596,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_12,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_595,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_656,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_596,c_595])).

cnf(c_14,negated_conjecture,
    ( r1_tarski(sK6,sK7) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_593,plain,
    ( r1_tarski(sK6,sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_10,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_597,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_666,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_597,c_595])).

cnf(c_5,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | r2_hidden(k4_tarski(X0,X1),X3)
    | ~ r1_tarski(X2,X3)
    | ~ v1_relat_1(X2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_602,plain,
    ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
    | r2_hidden(k4_tarski(X0,X1),X3) = iProver_top
    | r1_tarski(X2,X3) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1391,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X4) = iProver_top
    | r1_tarski(X3,X4) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(superposition,[status(thm)],[c_666,c_602])).

cnf(c_1627,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X4) = iProver_top
    | r1_tarski(X3,X5) != iProver_top
    | r1_tarski(X5,X4) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1391,c_602])).

cnf(c_6190,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_593,c_1627])).

cnf(c_17,negated_conjecture,
    ( v1_relat_1(sK6) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_18,plain,
    ( v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_6302,plain,
    ( v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6190,c_18])).

cnf(c_6303,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(renaming,[status(thm)],[c_6302])).

cnf(c_9,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),X2)
    | ~ r2_hidden(k4_tarski(X3,X0),X4)
    | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2))
    | ~ v1_relat_1(X4)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k5_relat_1(X4,X2)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_598,plain,
    ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
    | r2_hidden(k4_tarski(X3,X0),X4) != iProver_top
    | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2)) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X4) != iProver_top
    | v1_relat_1(k5_relat_1(X4,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_677,plain,
    ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
    | r2_hidden(k4_tarski(X3,X0),X4) != iProver_top
    | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2)) = iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X4) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_598,c_595])).

cnf(c_6311,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
    | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X5) != iProver_top
    | v1_relat_1(sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_6303,c_677])).

cnf(c_16,negated_conjecture,
    ( v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_19,plain,
    ( v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_6720,plain,
    ( v1_relat_1(X5) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
    | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6311,c_19])).

cnf(c_6721,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
    | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X5) != iProver_top ),
    inference(renaming,[status(thm)],[c_6720])).

cnf(c_6734,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,sK7)) = iProver_top
    | r1_tarski(X3,sK6) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X3) != iProver_top ),
    inference(superposition,[status(thm)],[c_656,c_6721])).

cnf(c_9128,plain,
    ( r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top
    | r1_tarski(X1,sK6) != iProver_top
    | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_603,c_6734])).

cnf(c_23,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_11227,plain,
    ( v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
    | r1_tarski(X1,sK6) != iProver_top
    | r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9128,c_23])).

cnf(c_11228,plain,
    ( r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top
    | r1_tarski(X1,sK6) != iProver_top
    | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_11227])).

cnf(c_3,plain,
    ( ~ r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1)
    | r1_tarski(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_604,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_11236,plain,
    ( r1_tarski(X0,sK6) != iProver_top
    | r1_tarski(k5_relat_1(X1,X0),k5_relat_1(X1,sK7)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_11228,c_604])).

cnf(c_11334,plain,
    ( r1_tarski(X0,sK6) != iProver_top
    | r1_tarski(k5_relat_1(X1,X0),k5_relat_1(X1,sK7)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_11236,c_595])).

cnf(c_13,negated_conjecture,
    ( ~ r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_594,plain,
    ( r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_11339,plain,
    ( r1_tarski(sK6,sK6) != iProver_top
    | v1_relat_1(sK6) != iProver_top
    | v1_relat_1(sK8) != iProver_top ),
    inference(superposition,[status(thm)],[c_11334,c_594])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_51,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_53,plain,
    ( r1_tarski(sK6,sK6) = iProver_top ),
    inference(instantiation,[status(thm)],[c_51])).

cnf(c_15,negated_conjecture,
    ( v1_relat_1(sK8) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_20,plain,
    ( v1_relat_1(sK8) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_11339,c_53,c_20,c_18])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n004.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 13:11:08 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.63/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.63/0.98  
% 3.63/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.63/0.98  
% 3.63/0.98  ------  iProver source info
% 3.63/0.98  
% 3.63/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.63/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.63/0.98  git: non_committed_changes: false
% 3.63/0.98  git: last_make_outside_of_git: false
% 3.63/0.98  
% 3.63/0.98  ------ 
% 3.63/0.98  
% 3.63/0.98  ------ Input Options
% 3.63/0.98  
% 3.63/0.98  --out_options                           all
% 3.63/0.98  --tptp_safe_out                         true
% 3.63/0.98  --problem_path                          ""
% 3.63/0.98  --include_path                          ""
% 3.63/0.98  --clausifier                            res/vclausify_rel
% 3.63/0.98  --clausifier_options                    --mode clausify
% 3.63/0.98  --stdin                                 false
% 3.63/0.98  --stats_out                             all
% 3.63/0.98  
% 3.63/0.98  ------ General Options
% 3.63/0.98  
% 3.63/0.98  --fof                                   false
% 3.63/0.98  --time_out_real                         305.
% 3.63/0.98  --time_out_virtual                      -1.
% 3.63/0.98  --symbol_type_check                     false
% 3.63/0.98  --clausify_out                          false
% 3.63/0.98  --sig_cnt_out                           false
% 3.63/0.98  --trig_cnt_out                          false
% 3.63/0.98  --trig_cnt_out_tolerance                1.
% 3.63/0.98  --trig_cnt_out_sk_spl                   false
% 3.63/0.98  --abstr_cl_out                          false
% 3.63/0.98  
% 3.63/0.98  ------ Global Options
% 3.63/0.98  
% 3.63/0.98  --schedule                              default
% 3.63/0.98  --add_important_lit                     false
% 3.63/0.98  --prop_solver_per_cl                    1000
% 3.63/0.98  --min_unsat_core                        false
% 3.63/0.98  --soft_assumptions                      false
% 3.63/0.98  --soft_lemma_size                       3
% 3.63/0.98  --prop_impl_unit_size                   0
% 3.63/0.98  --prop_impl_unit                        []
% 3.63/0.98  --share_sel_clauses                     true
% 3.63/0.98  --reset_solvers                         false
% 3.63/0.98  --bc_imp_inh                            [conj_cone]
% 3.63/0.98  --conj_cone_tolerance                   3.
% 3.63/0.98  --extra_neg_conj                        none
% 3.63/0.98  --large_theory_mode                     true
% 3.63/0.98  --prolific_symb_bound                   200
% 3.63/0.98  --lt_threshold                          2000
% 3.63/0.98  --clause_weak_htbl                      true
% 3.63/0.98  --gc_record_bc_elim                     false
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing Options
% 3.63/0.98  
% 3.63/0.98  --preprocessing_flag                    true
% 3.63/0.98  --time_out_prep_mult                    0.1
% 3.63/0.98  --splitting_mode                        input
% 3.63/0.98  --splitting_grd                         true
% 3.63/0.98  --splitting_cvd                         false
% 3.63/0.98  --splitting_cvd_svl                     false
% 3.63/0.98  --splitting_nvd                         32
% 3.63/0.98  --sub_typing                            true
% 3.63/0.98  --prep_gs_sim                           true
% 3.63/0.98  --prep_unflatten                        true
% 3.63/0.98  --prep_res_sim                          true
% 3.63/0.98  --prep_upred                            true
% 3.63/0.98  --prep_sem_filter                       exhaustive
% 3.63/0.98  --prep_sem_filter_out                   false
% 3.63/0.98  --pred_elim                             true
% 3.63/0.98  --res_sim_input                         true
% 3.63/0.98  --eq_ax_congr_red                       true
% 3.63/0.98  --pure_diseq_elim                       true
% 3.63/0.98  --brand_transform                       false
% 3.63/0.98  --non_eq_to_eq                          false
% 3.63/0.98  --prep_def_merge                        true
% 3.63/0.98  --prep_def_merge_prop_impl              false
% 3.63/0.98  --prep_def_merge_mbd                    true
% 3.63/0.98  --prep_def_merge_tr_red                 false
% 3.63/0.98  --prep_def_merge_tr_cl                  false
% 3.63/0.98  --smt_preprocessing                     true
% 3.63/0.98  --smt_ac_axioms                         fast
% 3.63/0.98  --preprocessed_out                      false
% 3.63/0.98  --preprocessed_stats                    false
% 3.63/0.98  
% 3.63/0.98  ------ Abstraction refinement Options
% 3.63/0.98  
% 3.63/0.98  --abstr_ref                             []
% 3.63/0.98  --abstr_ref_prep                        false
% 3.63/0.98  --abstr_ref_until_sat                   false
% 3.63/0.98  --abstr_ref_sig_restrict                funpre
% 3.63/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.98  --abstr_ref_under                       []
% 3.63/0.98  
% 3.63/0.98  ------ SAT Options
% 3.63/0.98  
% 3.63/0.98  --sat_mode                              false
% 3.63/0.98  --sat_fm_restart_options                ""
% 3.63/0.98  --sat_gr_def                            false
% 3.63/0.98  --sat_epr_types                         true
% 3.63/0.98  --sat_non_cyclic_types                  false
% 3.63/0.98  --sat_finite_models                     false
% 3.63/0.98  --sat_fm_lemmas                         false
% 3.63/0.98  --sat_fm_prep                           false
% 3.63/0.98  --sat_fm_uc_incr                        true
% 3.63/0.98  --sat_out_model                         small
% 3.63/0.98  --sat_out_clauses                       false
% 3.63/0.98  
% 3.63/0.98  ------ QBF Options
% 3.63/0.98  
% 3.63/0.98  --qbf_mode                              false
% 3.63/0.98  --qbf_elim_univ                         false
% 3.63/0.98  --qbf_dom_inst                          none
% 3.63/0.98  --qbf_dom_pre_inst                      false
% 3.63/0.98  --qbf_sk_in                             false
% 3.63/0.98  --qbf_pred_elim                         true
% 3.63/0.98  --qbf_split                             512
% 3.63/0.98  
% 3.63/0.98  ------ BMC1 Options
% 3.63/0.98  
% 3.63/0.98  --bmc1_incremental                      false
% 3.63/0.98  --bmc1_axioms                           reachable_all
% 3.63/0.98  --bmc1_min_bound                        0
% 3.63/0.98  --bmc1_max_bound                        -1
% 3.63/0.98  --bmc1_max_bound_default                -1
% 3.63/0.98  --bmc1_symbol_reachability              true
% 3.63/0.98  --bmc1_property_lemmas                  false
% 3.63/0.98  --bmc1_k_induction                      false
% 3.63/0.98  --bmc1_non_equiv_states                 false
% 3.63/0.98  --bmc1_deadlock                         false
% 3.63/0.98  --bmc1_ucm                              false
% 3.63/0.98  --bmc1_add_unsat_core                   none
% 3.63/0.98  --bmc1_unsat_core_children              false
% 3.63/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.98  --bmc1_out_stat                         full
% 3.63/0.98  --bmc1_ground_init                      false
% 3.63/0.98  --bmc1_pre_inst_next_state              false
% 3.63/0.98  --bmc1_pre_inst_state                   false
% 3.63/0.98  --bmc1_pre_inst_reach_state             false
% 3.63/0.98  --bmc1_out_unsat_core                   false
% 3.63/0.98  --bmc1_aig_witness_out                  false
% 3.63/0.98  --bmc1_verbose                          false
% 3.63/0.98  --bmc1_dump_clauses_tptp                false
% 3.63/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.98  --bmc1_dump_file                        -
% 3.63/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.98  --bmc1_ucm_extend_mode                  1
% 3.63/0.98  --bmc1_ucm_init_mode                    2
% 3.63/0.98  --bmc1_ucm_cone_mode                    none
% 3.63/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.98  --bmc1_ucm_relax_model                  4
% 3.63/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.98  --bmc1_ucm_layered_model                none
% 3.63/0.98  --bmc1_ucm_max_lemma_size               10
% 3.63/0.98  
% 3.63/0.98  ------ AIG Options
% 3.63/0.98  
% 3.63/0.98  --aig_mode                              false
% 3.63/0.98  
% 3.63/0.98  ------ Instantiation Options
% 3.63/0.98  
% 3.63/0.98  --instantiation_flag                    true
% 3.63/0.98  --inst_sos_flag                         false
% 3.63/0.98  --inst_sos_phase                        true
% 3.63/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.98  --inst_lit_sel_side                     num_symb
% 3.63/0.98  --inst_solver_per_active                1400
% 3.63/0.98  --inst_solver_calls_frac                1.
% 3.63/0.98  --inst_passive_queue_type               priority_queues
% 3.63/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.98  --inst_passive_queues_freq              [25;2]
% 3.63/0.98  --inst_dismatching                      true
% 3.63/0.98  --inst_eager_unprocessed_to_passive     true
% 3.63/0.98  --inst_prop_sim_given                   true
% 3.63/0.98  --inst_prop_sim_new                     false
% 3.63/0.98  --inst_subs_new                         false
% 3.63/0.98  --inst_eq_res_simp                      false
% 3.63/0.98  --inst_subs_given                       false
% 3.63/0.98  --inst_orphan_elimination               true
% 3.63/0.98  --inst_learning_loop_flag               true
% 3.63/0.98  --inst_learning_start                   3000
% 3.63/0.98  --inst_learning_factor                  2
% 3.63/0.98  --inst_start_prop_sim_after_learn       3
% 3.63/0.98  --inst_sel_renew                        solver
% 3.63/0.98  --inst_lit_activity_flag                true
% 3.63/0.98  --inst_restr_to_given                   false
% 3.63/0.98  --inst_activity_threshold               500
% 3.63/0.98  --inst_out_proof                        true
% 3.63/0.98  
% 3.63/0.98  ------ Resolution Options
% 3.63/0.98  
% 3.63/0.98  --resolution_flag                       true
% 3.63/0.98  --res_lit_sel                           adaptive
% 3.63/0.98  --res_lit_sel_side                      none
% 3.63/0.98  --res_ordering                          kbo
% 3.63/0.98  --res_to_prop_solver                    active
% 3.63/0.98  --res_prop_simpl_new                    false
% 3.63/0.98  --res_prop_simpl_given                  true
% 3.63/0.98  --res_passive_queue_type                priority_queues
% 3.63/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.98  --res_passive_queues_freq               [15;5]
% 3.63/0.98  --res_forward_subs                      full
% 3.63/0.98  --res_backward_subs                     full
% 3.63/0.98  --res_forward_subs_resolution           true
% 3.63/0.98  --res_backward_subs_resolution          true
% 3.63/0.98  --res_orphan_elimination                true
% 3.63/0.98  --res_time_limit                        2.
% 3.63/0.98  --res_out_proof                         true
% 3.63/0.98  
% 3.63/0.98  ------ Superposition Options
% 3.63/0.98  
% 3.63/0.98  --superposition_flag                    true
% 3.63/0.98  --sup_passive_queue_type                priority_queues
% 3.63/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.98  --demod_completeness_check              fast
% 3.63/0.98  --demod_use_ground                      true
% 3.63/0.98  --sup_to_prop_solver                    passive
% 3.63/0.98  --sup_prop_simpl_new                    true
% 3.63/0.98  --sup_prop_simpl_given                  true
% 3.63/0.98  --sup_fun_splitting                     false
% 3.63/0.98  --sup_smt_interval                      50000
% 3.63/0.98  
% 3.63/0.98  ------ Superposition Simplification Setup
% 3.63/0.98  
% 3.63/0.98  --sup_indices_passive                   []
% 3.63/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_full_bw                           [BwDemod]
% 3.63/0.98  --sup_immed_triv                        [TrivRules]
% 3.63/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_immed_bw_main                     []
% 3.63/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.63/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.63/0.98  
% 3.63/0.98  ------ Combination Options
% 3.63/0.98  
% 3.63/0.98  --comb_res_mult                         3
% 3.63/0.98  --comb_sup_mult                         2
% 3.63/0.98  --comb_inst_mult                        10
% 3.63/0.98  
% 3.63/0.98  ------ Debug Options
% 3.63/0.98  
% 3.63/0.98  --dbg_backtrace                         false
% 3.63/0.98  --dbg_dump_prop_clauses                 false
% 3.63/0.98  --dbg_dump_prop_clauses_file            -
% 3.63/0.98  --dbg_out_stat                          false
% 3.63/0.98  ------ Parsing...
% 3.63/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.63/0.98  ------ Proving...
% 3.63/0.98  ------ Problem Properties 
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  clauses                                 17
% 3.63/0.98  conjectures                             5
% 3.63/0.98  EPR                                     6
% 3.63/0.98  Horn                                    14
% 3.63/0.98  unary                                   6
% 3.63/0.98  binary                                  0
% 3.63/0.98  lits                                    57
% 3.63/0.98  lits eq                                 4
% 3.63/0.98  fd_pure                                 0
% 3.63/0.98  fd_pseudo                               0
% 3.63/0.98  fd_cond                                 0
% 3.63/0.98  fd_pseudo_cond                          4
% 3.63/0.98  AC symbols                              0
% 3.63/0.98  
% 3.63/0.98  ------ Schedule dynamic 5 is on 
% 3.63/0.98  
% 3.63/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  ------ 
% 3.63/0.98  Current options:
% 3.63/0.98  ------ 
% 3.63/0.98  
% 3.63/0.98  ------ Input Options
% 3.63/0.98  
% 3.63/0.98  --out_options                           all
% 3.63/0.98  --tptp_safe_out                         true
% 3.63/0.98  --problem_path                          ""
% 3.63/0.98  --include_path                          ""
% 3.63/0.98  --clausifier                            res/vclausify_rel
% 3.63/0.98  --clausifier_options                    --mode clausify
% 3.63/0.98  --stdin                                 false
% 3.63/0.98  --stats_out                             all
% 3.63/0.98  
% 3.63/0.98  ------ General Options
% 3.63/0.98  
% 3.63/0.98  --fof                                   false
% 3.63/0.98  --time_out_real                         305.
% 3.63/0.98  --time_out_virtual                      -1.
% 3.63/0.98  --symbol_type_check                     false
% 3.63/0.98  --clausify_out                          false
% 3.63/0.98  --sig_cnt_out                           false
% 3.63/0.98  --trig_cnt_out                          false
% 3.63/0.98  --trig_cnt_out_tolerance                1.
% 3.63/0.98  --trig_cnt_out_sk_spl                   false
% 3.63/0.98  --abstr_cl_out                          false
% 3.63/0.98  
% 3.63/0.98  ------ Global Options
% 3.63/0.98  
% 3.63/0.98  --schedule                              default
% 3.63/0.98  --add_important_lit                     false
% 3.63/0.98  --prop_solver_per_cl                    1000
% 3.63/0.98  --min_unsat_core                        false
% 3.63/0.98  --soft_assumptions                      false
% 3.63/0.98  --soft_lemma_size                       3
% 3.63/0.98  --prop_impl_unit_size                   0
% 3.63/0.98  --prop_impl_unit                        []
% 3.63/0.98  --share_sel_clauses                     true
% 3.63/0.98  --reset_solvers                         false
% 3.63/0.98  --bc_imp_inh                            [conj_cone]
% 3.63/0.98  --conj_cone_tolerance                   3.
% 3.63/0.98  --extra_neg_conj                        none
% 3.63/0.98  --large_theory_mode                     true
% 3.63/0.98  --prolific_symb_bound                   200
% 3.63/0.98  --lt_threshold                          2000
% 3.63/0.98  --clause_weak_htbl                      true
% 3.63/0.98  --gc_record_bc_elim                     false
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing Options
% 3.63/0.98  
% 3.63/0.98  --preprocessing_flag                    true
% 3.63/0.98  --time_out_prep_mult                    0.1
% 3.63/0.98  --splitting_mode                        input
% 3.63/0.98  --splitting_grd                         true
% 3.63/0.98  --splitting_cvd                         false
% 3.63/0.98  --splitting_cvd_svl                     false
% 3.63/0.98  --splitting_nvd                         32
% 3.63/0.98  --sub_typing                            true
% 3.63/0.98  --prep_gs_sim                           true
% 3.63/0.98  --prep_unflatten                        true
% 3.63/0.98  --prep_res_sim                          true
% 3.63/0.98  --prep_upred                            true
% 3.63/0.98  --prep_sem_filter                       exhaustive
% 3.63/0.98  --prep_sem_filter_out                   false
% 3.63/0.98  --pred_elim                             true
% 3.63/0.98  --res_sim_input                         true
% 3.63/0.98  --eq_ax_congr_red                       true
% 3.63/0.98  --pure_diseq_elim                       true
% 3.63/0.98  --brand_transform                       false
% 3.63/0.98  --non_eq_to_eq                          false
% 3.63/0.98  --prep_def_merge                        true
% 3.63/0.98  --prep_def_merge_prop_impl              false
% 3.63/0.98  --prep_def_merge_mbd                    true
% 3.63/0.98  --prep_def_merge_tr_red                 false
% 3.63/0.98  --prep_def_merge_tr_cl                  false
% 3.63/0.98  --smt_preprocessing                     true
% 3.63/0.98  --smt_ac_axioms                         fast
% 3.63/0.98  --preprocessed_out                      false
% 3.63/0.98  --preprocessed_stats                    false
% 3.63/0.98  
% 3.63/0.98  ------ Abstraction refinement Options
% 3.63/0.98  
% 3.63/0.98  --abstr_ref                             []
% 3.63/0.98  --abstr_ref_prep                        false
% 3.63/0.98  --abstr_ref_until_sat                   false
% 3.63/0.98  --abstr_ref_sig_restrict                funpre
% 3.63/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.98  --abstr_ref_under                       []
% 3.63/0.98  
% 3.63/0.98  ------ SAT Options
% 3.63/0.98  
% 3.63/0.98  --sat_mode                              false
% 3.63/0.98  --sat_fm_restart_options                ""
% 3.63/0.98  --sat_gr_def                            false
% 3.63/0.98  --sat_epr_types                         true
% 3.63/0.98  --sat_non_cyclic_types                  false
% 3.63/0.98  --sat_finite_models                     false
% 3.63/0.98  --sat_fm_lemmas                         false
% 3.63/0.98  --sat_fm_prep                           false
% 3.63/0.98  --sat_fm_uc_incr                        true
% 3.63/0.98  --sat_out_model                         small
% 3.63/0.98  --sat_out_clauses                       false
% 3.63/0.98  
% 3.63/0.98  ------ QBF Options
% 3.63/0.98  
% 3.63/0.98  --qbf_mode                              false
% 3.63/0.98  --qbf_elim_univ                         false
% 3.63/0.98  --qbf_dom_inst                          none
% 3.63/0.98  --qbf_dom_pre_inst                      false
% 3.63/0.98  --qbf_sk_in                             false
% 3.63/0.98  --qbf_pred_elim                         true
% 3.63/0.98  --qbf_split                             512
% 3.63/0.98  
% 3.63/0.98  ------ BMC1 Options
% 3.63/0.98  
% 3.63/0.98  --bmc1_incremental                      false
% 3.63/0.98  --bmc1_axioms                           reachable_all
% 3.63/0.98  --bmc1_min_bound                        0
% 3.63/0.98  --bmc1_max_bound                        -1
% 3.63/0.98  --bmc1_max_bound_default                -1
% 3.63/0.98  --bmc1_symbol_reachability              true
% 3.63/0.98  --bmc1_property_lemmas                  false
% 3.63/0.98  --bmc1_k_induction                      false
% 3.63/0.98  --bmc1_non_equiv_states                 false
% 3.63/0.98  --bmc1_deadlock                         false
% 3.63/0.98  --bmc1_ucm                              false
% 3.63/0.98  --bmc1_add_unsat_core                   none
% 3.63/0.98  --bmc1_unsat_core_children              false
% 3.63/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.98  --bmc1_out_stat                         full
% 3.63/0.98  --bmc1_ground_init                      false
% 3.63/0.98  --bmc1_pre_inst_next_state              false
% 3.63/0.98  --bmc1_pre_inst_state                   false
% 3.63/0.98  --bmc1_pre_inst_reach_state             false
% 3.63/0.98  --bmc1_out_unsat_core                   false
% 3.63/0.98  --bmc1_aig_witness_out                  false
% 3.63/0.98  --bmc1_verbose                          false
% 3.63/0.98  --bmc1_dump_clauses_tptp                false
% 3.63/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.98  --bmc1_dump_file                        -
% 3.63/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.98  --bmc1_ucm_extend_mode                  1
% 3.63/0.98  --bmc1_ucm_init_mode                    2
% 3.63/0.98  --bmc1_ucm_cone_mode                    none
% 3.63/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.98  --bmc1_ucm_relax_model                  4
% 3.63/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.98  --bmc1_ucm_layered_model                none
% 3.63/0.98  --bmc1_ucm_max_lemma_size               10
% 3.63/0.98  
% 3.63/0.98  ------ AIG Options
% 3.63/0.98  
% 3.63/0.98  --aig_mode                              false
% 3.63/0.98  
% 3.63/0.98  ------ Instantiation Options
% 3.63/0.98  
% 3.63/0.98  --instantiation_flag                    true
% 3.63/0.98  --inst_sos_flag                         false
% 3.63/0.98  --inst_sos_phase                        true
% 3.63/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.98  --inst_lit_sel_side                     none
% 3.63/0.98  --inst_solver_per_active                1400
% 3.63/0.98  --inst_solver_calls_frac                1.
% 3.63/0.98  --inst_passive_queue_type               priority_queues
% 3.63/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.98  --inst_passive_queues_freq              [25;2]
% 3.63/0.98  --inst_dismatching                      true
% 3.63/0.98  --inst_eager_unprocessed_to_passive     true
% 3.63/0.98  --inst_prop_sim_given                   true
% 3.63/0.98  --inst_prop_sim_new                     false
% 3.63/0.98  --inst_subs_new                         false
% 3.63/0.98  --inst_eq_res_simp                      false
% 3.63/0.98  --inst_subs_given                       false
% 3.63/0.98  --inst_orphan_elimination               true
% 3.63/0.98  --inst_learning_loop_flag               true
% 3.63/0.98  --inst_learning_start                   3000
% 3.63/0.98  --inst_learning_factor                  2
% 3.63/0.98  --inst_start_prop_sim_after_learn       3
% 3.63/0.98  --inst_sel_renew                        solver
% 3.63/0.98  --inst_lit_activity_flag                true
% 3.63/0.98  --inst_restr_to_given                   false
% 3.63/0.98  --inst_activity_threshold               500
% 3.63/0.98  --inst_out_proof                        true
% 3.63/0.98  
% 3.63/0.98  ------ Resolution Options
% 3.63/0.98  
% 3.63/0.98  --resolution_flag                       false
% 3.63/0.98  --res_lit_sel                           adaptive
% 3.63/0.98  --res_lit_sel_side                      none
% 3.63/0.98  --res_ordering                          kbo
% 3.63/0.98  --res_to_prop_solver                    active
% 3.63/0.98  --res_prop_simpl_new                    false
% 3.63/0.98  --res_prop_simpl_given                  true
% 3.63/0.98  --res_passive_queue_type                priority_queues
% 3.63/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.98  --res_passive_queues_freq               [15;5]
% 3.63/0.98  --res_forward_subs                      full
% 3.63/0.98  --res_backward_subs                     full
% 3.63/0.98  --res_forward_subs_resolution           true
% 3.63/0.98  --res_backward_subs_resolution          true
% 3.63/0.98  --res_orphan_elimination                true
% 3.63/0.98  --res_time_limit                        2.
% 3.63/0.98  --res_out_proof                         true
% 3.63/0.98  
% 3.63/0.98  ------ Superposition Options
% 3.63/0.98  
% 3.63/0.98  --superposition_flag                    true
% 3.63/0.98  --sup_passive_queue_type                priority_queues
% 3.63/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.98  --demod_completeness_check              fast
% 3.63/0.98  --demod_use_ground                      true
% 3.63/0.98  --sup_to_prop_solver                    passive
% 3.63/0.98  --sup_prop_simpl_new                    true
% 3.63/0.98  --sup_prop_simpl_given                  true
% 3.63/0.98  --sup_fun_splitting                     false
% 3.63/0.98  --sup_smt_interval                      50000
% 3.63/0.98  
% 3.63/0.98  ------ Superposition Simplification Setup
% 3.63/0.98  
% 3.63/0.98  --sup_indices_passive                   []
% 3.63/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_full_bw                           [BwDemod]
% 3.63/0.98  --sup_immed_triv                        [TrivRules]
% 3.63/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_immed_bw_main                     []
% 3.63/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.63/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.63/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.63/0.98  
% 3.63/0.98  ------ Combination Options
% 3.63/0.98  
% 3.63/0.98  --comb_res_mult                         3
% 3.63/0.98  --comb_sup_mult                         2
% 3.63/0.98  --comb_inst_mult                        10
% 3.63/0.98  
% 3.63/0.98  ------ Debug Options
% 3.63/0.98  
% 3.63/0.98  --dbg_backtrace                         false
% 3.63/0.98  --dbg_dump_prop_clauses                 false
% 3.63/0.98  --dbg_dump_prop_clauses_file            -
% 3.63/0.98  --dbg_out_stat                          false
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  ------ Proving...
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  % SZS status Theorem for theBenchmark.p
% 3.63/0.98  
% 3.63/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.63/0.98  
% 3.63/0.98  fof(f2,axiom,(
% 3.63/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (r1_tarski(X0,X1) <=> ! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X0) => r2_hidden(k4_tarski(X2,X3),X1))))),
% 3.63/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.63/0.98  
% 3.63/0.98  fof(f7,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : (r1_tarski(X0,X1) <=> ! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X1) | ~r2_hidden(k4_tarski(X2,X3),X0))) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(ennf_transformation,[],[f2])).
% 3.63/0.98  
% 3.63/0.98  fof(f15,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | ? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0))) & (! [X2,X3] : (r2_hidden(k4_tarski(X2,X3),X1) | ~r2_hidden(k4_tarski(X2,X3),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(nnf_transformation,[],[f7])).
% 3.63/0.98  
% 3.63/0.98  fof(f16,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | ? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0))) & (! [X4,X5] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(rectify,[],[f15])).
% 3.63/0.98  
% 3.63/0.98  fof(f17,plain,(
% 3.63/0.98    ! [X1,X0] : (? [X2,X3] : (~r2_hidden(k4_tarski(X2,X3),X1) & r2_hidden(k4_tarski(X2,X3),X0)) => (~r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1) & r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)))),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f18,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : ((r1_tarski(X0,X1) | (~r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1) & r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0))) & (! [X4,X5] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0)) | ~r1_tarski(X0,X1))) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f17])).
% 3.63/0.98  
% 3.63/0.98  fof(f33,plain,(
% 3.63/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f18])).
% 3.63/0.98  
% 3.63/0.98  fof(f3,axiom,(
% 3.63/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (k5_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> ? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)))))))),
% 3.63/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.63/0.98  
% 3.63/0.98  fof(f8,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : (! [X2] : ((k5_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> ? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)))) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(ennf_transformation,[],[f3])).
% 3.63/0.98  
% 3.63/0.98  fof(f19,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X2) | ! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0))) & (? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(nnf_transformation,[],[f8])).
% 3.63/0.98  
% 3.63/0.98  fof(f20,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X7,X8] : ((r2_hidden(k4_tarski(X7,X8),X2) | ! [X9] : (~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0))) & (? [X10] : (r2_hidden(k4_tarski(X10,X8),X1) & r2_hidden(k4_tarski(X7,X10),X0)) | ~r2_hidden(k4_tarski(X7,X8),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(rectify,[],[f19])).
% 3.63/0.98  
% 3.63/0.98  fof(f23,plain,(
% 3.63/0.98    ! [X8,X7,X1,X0] : (? [X10] : (r2_hidden(k4_tarski(X10,X8),X1) & r2_hidden(k4_tarski(X7,X10),X0)) => (r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1) & r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0)))),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f22,plain,(
% 3.63/0.98    ( ! [X4,X3] : (! [X2,X1,X0] : (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) => (r2_hidden(k4_tarski(sK4(X0,X1,X2),X4),X1) & r2_hidden(k4_tarski(X3,sK4(X0,X1,X2)),X0)))) )),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f21,plain,(
% 3.63/0.98    ! [X2,X1,X0] : (? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) | r2_hidden(k4_tarski(X3,X4),X2))) => ((! [X5] : (~r2_hidden(k4_tarski(X5,sK3(X0,X1,X2)),X1) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),X5),X0)) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,sK3(X0,X1,X2)),X1) & r2_hidden(k4_tarski(sK2(X0,X1,X2),X6),X0)) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2))))),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f24,plain,(
% 3.63/0.98    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ((! [X5] : (~r2_hidden(k4_tarski(X5,sK3(X0,X1,X2)),X1) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),X5),X0)) | ~r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(sK4(X0,X1,X2),sK3(X0,X1,X2)),X1) & r2_hidden(k4_tarski(sK2(X0,X1,X2),sK4(X0,X1,X2)),X0)) | r2_hidden(k4_tarski(sK2(X0,X1,X2),sK3(X0,X1,X2)),X2)))) & (! [X7,X8] : ((r2_hidden(k4_tarski(X7,X8),X2) | ! [X9] : (~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0))) & ((r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1) & r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0)) | ~r2_hidden(k4_tarski(X7,X8),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f20,f23,f22,f21])).
% 3.63/0.98  
% 3.63/0.98  fof(f35,plain,(
% 3.63/0.98    ( ! [X2,X0,X8,X7,X1] : (r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0) | ~r2_hidden(k4_tarski(X7,X8),X2) | k5_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f24])).
% 3.63/0.98  
% 3.63/0.98  fof(f51,plain,(
% 3.63/0.98    ( ! [X0,X8,X7,X1] : (r2_hidden(k4_tarski(X7,sK5(X0,X1,X7,X8)),X0) | ~r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1)) | ~v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(equality_resolution,[],[f35])).
% 3.63/0.98  
% 3.63/0.98  fof(f4,axiom,(
% 3.63/0.98    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 3.63/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.63/0.98  
% 3.63/0.98  fof(f9,plain,(
% 3.63/0.98    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 3.63/0.98    inference(ennf_transformation,[],[f4])).
% 3.63/0.98  
% 3.63/0.98  fof(f10,plain,(
% 3.63/0.98    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 3.63/0.98    inference(flattening,[],[f9])).
% 3.63/0.98  
% 3.63/0.98  fof(f41,plain,(
% 3.63/0.98    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f10])).
% 3.63/0.98  
% 3.63/0.98  fof(f5,conjecture,(
% 3.63/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))))))),
% 3.63/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.63/0.98  
% 3.63/0.98  fof(f6,negated_conjecture,(
% 3.63/0.98    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1))))))),
% 3.63/0.98    inference(negated_conjecture,[],[f5])).
% 3.63/0.98  
% 3.63/0.98  fof(f11,plain,(
% 3.63/0.98    ? [X0] : (? [X1] : (? [X2] : ((~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) & r1_tarski(X0,X1)) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 3.63/0.98    inference(ennf_transformation,[],[f6])).
% 3.63/0.98  
% 3.63/0.98  fof(f12,plain,(
% 3.63/0.98    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 3.63/0.98    inference(flattening,[],[f11])).
% 3.63/0.98  
% 3.63/0.98  fof(f27,plain,(
% 3.63/0.98    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) => (~r1_tarski(k5_relat_1(sK8,X0),k5_relat_1(sK8,X1)) & r1_tarski(X0,X1) & v1_relat_1(sK8))) )),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f26,plain,(
% 3.63/0.98    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) => (? [X2] : (~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,sK7)) & r1_tarski(X0,sK7) & v1_relat_1(X2)) & v1_relat_1(sK7))) )),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f25,plain,(
% 3.63/0.98    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X2,X0),k5_relat_1(X2,X1)) & r1_tarski(X0,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k5_relat_1(X2,sK6),k5_relat_1(X2,X1)) & r1_tarski(sK6,X1) & v1_relat_1(X2)) & v1_relat_1(X1)) & v1_relat_1(sK6))),
% 3.63/0.98    introduced(choice_axiom,[])).
% 3.63/0.98  
% 3.63/0.98  fof(f28,plain,(
% 3.63/0.98    ((~r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) & r1_tarski(sK6,sK7) & v1_relat_1(sK8)) & v1_relat_1(sK7)) & v1_relat_1(sK6)),
% 3.63/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6,sK7,sK8])],[f12,f27,f26,f25])).
% 3.63/0.98  
% 3.63/0.98  fof(f45,plain,(
% 3.63/0.98    r1_tarski(sK6,sK7)),
% 3.63/0.98    inference(cnf_transformation,[],[f28])).
% 3.63/0.98  
% 3.63/0.98  fof(f36,plain,(
% 3.63/0.98    ( ! [X2,X0,X8,X7,X1] : (r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1) | ~r2_hidden(k4_tarski(X7,X8),X2) | k5_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f24])).
% 3.63/0.98  
% 3.63/0.98  fof(f50,plain,(
% 3.63/0.98    ( ! [X0,X8,X7,X1] : (r2_hidden(k4_tarski(sK5(X0,X1,X7,X8),X8),X1) | ~r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1)) | ~v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(equality_resolution,[],[f36])).
% 3.63/0.98  
% 3.63/0.98  fof(f32,plain,(
% 3.63/0.98    ( ! [X4,X0,X5,X1] : (r2_hidden(k4_tarski(X4,X5),X1) | ~r2_hidden(k4_tarski(X4,X5),X0) | ~r1_tarski(X0,X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f18])).
% 3.63/0.98  
% 3.63/0.98  fof(f42,plain,(
% 3.63/0.98    v1_relat_1(sK6)),
% 3.63/0.98    inference(cnf_transformation,[],[f28])).
% 3.63/0.98  
% 3.63/0.98  fof(f37,plain,(
% 3.63/0.98    ( ! [X2,X0,X8,X7,X1,X9] : (r2_hidden(k4_tarski(X7,X8),X2) | ~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0) | k5_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f24])).
% 3.63/0.98  
% 3.63/0.98  fof(f49,plain,(
% 3.63/0.98    ( ! [X0,X8,X7,X1,X9] : (r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1)) | ~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0) | ~v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(equality_resolution,[],[f37])).
% 3.63/0.98  
% 3.63/0.98  fof(f43,plain,(
% 3.63/0.98    v1_relat_1(sK7)),
% 3.63/0.98    inference(cnf_transformation,[],[f28])).
% 3.63/0.98  
% 3.63/0.98  fof(f34,plain,(
% 3.63/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1) | ~v1_relat_1(X0)) )),
% 3.63/0.98    inference(cnf_transformation,[],[f18])).
% 3.63/0.98  
% 3.63/0.98  fof(f46,plain,(
% 3.63/0.98    ~r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7))),
% 3.63/0.98    inference(cnf_transformation,[],[f28])).
% 3.63/0.98  
% 3.63/0.98  fof(f1,axiom,(
% 3.63/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.63/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.63/0.98  
% 3.63/0.98  fof(f13,plain,(
% 3.63/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.63/0.98    inference(nnf_transformation,[],[f1])).
% 3.63/0.98  
% 3.63/0.98  fof(f14,plain,(
% 3.63/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.63/0.98    inference(flattening,[],[f13])).
% 3.63/0.98  
% 3.63/0.98  fof(f29,plain,(
% 3.63/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.63/0.98    inference(cnf_transformation,[],[f14])).
% 3.63/0.98  
% 3.63/0.98  fof(f48,plain,(
% 3.63/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.63/0.98    inference(equality_resolution,[],[f29])).
% 3.63/0.98  
% 3.63/0.98  fof(f44,plain,(
% 3.63/0.98    v1_relat_1(sK8)),
% 3.63/0.98    inference(cnf_transformation,[],[f28])).
% 3.63/0.98  
% 3.63/0.98  cnf(c_4,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
% 3.63/0.98      | r1_tarski(X0,X1)
% 3.63/0.98      | ~ v1_relat_1(X0) ),
% 3.63/0.98      inference(cnf_transformation,[],[f33]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_603,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) = iProver_top
% 3.63/0.98      | r1_tarski(X0,X1) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11,plain,
% 3.63/0.98      ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
% 3.63/0.98      | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2)
% 3.63/0.98      | ~ v1_relat_1(X2)
% 3.63/0.98      | ~ v1_relat_1(X3)
% 3.63/0.98      | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
% 3.63/0.98      inference(cnf_transformation,[],[f51]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_596,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_12,plain,
% 3.63/0.98      ( ~ v1_relat_1(X0)
% 3.63/0.98      | ~ v1_relat_1(X1)
% 3.63/0.98      | v1_relat_1(k5_relat_1(X0,X1)) ),
% 3.63/0.98      inference(cnf_transformation,[],[f41]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_595,plain,
% 3.63/0.98      ( v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X0,X1)) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_656,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,sK5(X2,X3,X0,X1)),X2) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top ),
% 3.63/0.98      inference(forward_subsumption_resolution,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_596,c_595]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_14,negated_conjecture,
% 3.63/0.98      ( r1_tarski(sK6,sK7) ),
% 3.63/0.98      inference(cnf_transformation,[],[f45]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_593,plain,
% 3.63/0.98      ( r1_tarski(sK6,sK7) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_10,plain,
% 3.63/0.98      ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3)
% 3.63/0.98      | ~ v1_relat_1(X2)
% 3.63/0.98      | ~ v1_relat_1(X3)
% 3.63/0.98      | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
% 3.63/0.98      inference(cnf_transformation,[],[f50]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_597,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_666,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X3) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top ),
% 3.63/0.98      inference(forward_subsumption_resolution,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_597,c_595]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_5,plain,
% 3.63/0.98      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 3.63/0.98      | r2_hidden(k4_tarski(X0,X1),X3)
% 3.63/0.98      | ~ r1_tarski(X2,X3)
% 3.63/0.98      | ~ v1_relat_1(X2) ),
% 3.63/0.98      inference(cnf_transformation,[],[f32]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_602,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,X1),X3) = iProver_top
% 3.63/0.98      | r1_tarski(X2,X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_1391,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X4) = iProver_top
% 3.63/0.98      | r1_tarski(X3,X4) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_666,c_602]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_1627,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),X4) = iProver_top
% 3.63/0.98      | r1_tarski(X3,X5) != iProver_top
% 3.63/0.98      | r1_tarski(X5,X4) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X5) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_1391,c_602]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6190,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(sK6) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_593,c_1627]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_17,negated_conjecture,
% 3.63/0.98      ( v1_relat_1(sK6) ),
% 3.63/0.98      inference(cnf_transformation,[],[f42]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_18,plain,
% 3.63/0.98      ( v1_relat_1(sK6) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6302,plain,
% 3.63/0.98      ( v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top ),
% 3.63/0.98      inference(global_propositional_subsumption,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_6190,c_18]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6303,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK5(X2,X3,X0,X1),X1),sK7) = iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top ),
% 3.63/0.98      inference(renaming,[status(thm)],[c_6302]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_9,plain,
% 3.63/0.98      ( ~ r2_hidden(k4_tarski(X0,X1),X2)
% 3.63/0.98      | ~ r2_hidden(k4_tarski(X3,X0),X4)
% 3.63/0.98      | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2))
% 3.63/0.98      | ~ v1_relat_1(X4)
% 3.63/0.98      | ~ v1_relat_1(X2)
% 3.63/0.98      | ~ v1_relat_1(k5_relat_1(X4,X2)) ),
% 3.63/0.98      inference(cnf_transformation,[],[f49]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_598,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X3,X0),X4) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2)) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X4) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X4,X2)) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_677,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),X2) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X3,X0),X4) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X3,X1),k5_relat_1(X4,X2)) = iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X4) != iProver_top ),
% 3.63/0.98      inference(forward_subsumption_resolution,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_598,c_595]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6311,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X5) != iProver_top
% 3.63/0.98      | v1_relat_1(sK7) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_6303,c_677]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_16,negated_conjecture,
% 3.63/0.98      ( v1_relat_1(sK7) ),
% 3.63/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_19,plain,
% 3.63/0.98      ( v1_relat_1(sK7) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6720,plain,
% 3.63/0.98      ( v1_relat_1(X5) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top ),
% 3.63/0.98      inference(global_propositional_subsumption,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_6311,c_19]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6721,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,X1),k5_relat_1(X5,sK7)) = iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X4,sK5(X2,X3,X0,X1)),X5) != iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top
% 3.63/0.98      | v1_relat_1(X5) != iProver_top ),
% 3.63/0.98      inference(renaming,[status(thm)],[c_6720]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_6734,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,sK7)) = iProver_top
% 3.63/0.98      | r1_tarski(X3,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(X2) != iProver_top
% 3.63/0.98      | v1_relat_1(X3) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_656,c_6721]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_9128,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top
% 3.63/0.98      | r1_tarski(X1,sK6) != iProver_top
% 3.63/0.98      | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X0,X1)) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_603,c_6734]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_23,plain,
% 3.63/0.98      ( v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X0,X1)) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11227,plain,
% 3.63/0.98      ( v1_relat_1(X1) != iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top
% 3.63/0.98      | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
% 3.63/0.98      | r1_tarski(X1,sK6) != iProver_top
% 3.63/0.98      | r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top ),
% 3.63/0.98      inference(global_propositional_subsumption,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_9128,c_23]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11228,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(sK0(k5_relat_1(X0,X1),X2),sK1(k5_relat_1(X0,X1),X2)),k5_relat_1(X0,sK7)) = iProver_top
% 3.63/0.98      | r1_tarski(X1,sK6) != iProver_top
% 3.63/0.98      | r1_tarski(k5_relat_1(X0,X1),X2) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top ),
% 3.63/0.98      inference(renaming,[status(thm)],[c_11227]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_3,plain,
% 3.63/0.98      ( ~ r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1)
% 3.63/0.98      | r1_tarski(X0,X1)
% 3.63/0.98      | ~ v1_relat_1(X0) ),
% 3.63/0.98      inference(cnf_transformation,[],[f34]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_604,plain,
% 3.63/0.98      ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X1) != iProver_top
% 3.63/0.98      | r1_tarski(X0,X1) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11236,plain,
% 3.63/0.98      ( r1_tarski(X0,sK6) != iProver_top
% 3.63/0.98      | r1_tarski(k5_relat_1(X1,X0),k5_relat_1(X1,sK7)) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top
% 3.63/0.98      | v1_relat_1(k5_relat_1(X1,X0)) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_11228,c_604]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11334,plain,
% 3.63/0.98      ( r1_tarski(X0,sK6) != iProver_top
% 3.63/0.98      | r1_tarski(k5_relat_1(X1,X0),k5_relat_1(X1,sK7)) = iProver_top
% 3.63/0.98      | v1_relat_1(X0) != iProver_top
% 3.63/0.98      | v1_relat_1(X1) != iProver_top ),
% 3.63/0.98      inference(forward_subsumption_resolution,
% 3.63/0.98                [status(thm)],
% 3.63/0.98                [c_11236,c_595]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_13,negated_conjecture,
% 3.63/0.98      ( ~ r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) ),
% 3.63/0.98      inference(cnf_transformation,[],[f46]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_594,plain,
% 3.63/0.98      ( r1_tarski(k5_relat_1(sK8,sK6),k5_relat_1(sK8,sK7)) != iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_11339,plain,
% 3.63/0.98      ( r1_tarski(sK6,sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(sK6) != iProver_top
% 3.63/0.98      | v1_relat_1(sK8) != iProver_top ),
% 3.63/0.98      inference(superposition,[status(thm)],[c_11334,c_594]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_2,plain,
% 3.63/0.98      ( r1_tarski(X0,X0) ),
% 3.63/0.98      inference(cnf_transformation,[],[f48]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_51,plain,
% 3.63/0.98      ( r1_tarski(X0,X0) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_53,plain,
% 3.63/0.98      ( r1_tarski(sK6,sK6) = iProver_top ),
% 3.63/0.98      inference(instantiation,[status(thm)],[c_51]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_15,negated_conjecture,
% 3.63/0.98      ( v1_relat_1(sK8) ),
% 3.63/0.98      inference(cnf_transformation,[],[f44]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(c_20,plain,
% 3.63/0.98      ( v1_relat_1(sK8) = iProver_top ),
% 3.63/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.63/0.98  
% 3.63/0.98  cnf(contradiction,plain,
% 3.63/0.98      ( $false ),
% 3.63/0.98      inference(minisat,[status(thm)],[c_11339,c_53,c_20,c_18]) ).
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.63/0.98  
% 3.63/0.98  ------                               Statistics
% 3.63/0.98  
% 3.63/0.98  ------ General
% 3.63/0.98  
% 3.63/0.98  abstr_ref_over_cycles:                  0
% 3.63/0.98  abstr_ref_under_cycles:                 0
% 3.63/0.98  gc_basic_clause_elim:                   0
% 3.63/0.98  forced_gc_time:                         0
% 3.63/0.98  parsing_time:                           0.01
% 3.63/0.98  unif_index_cands_time:                  0.
% 3.63/0.98  unif_index_add_time:                    0.
% 3.63/0.98  orderings_time:                         0.
% 3.63/0.98  out_proof_time:                         0.007
% 3.63/0.98  total_time:                             0.328
% 3.63/0.98  num_of_symbols:                         45
% 3.63/0.98  num_of_terms:                           8827
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing
% 3.63/0.98  
% 3.63/0.98  num_of_splits:                          0
% 3.63/0.98  num_of_split_atoms:                     0
% 3.63/0.98  num_of_reused_defs:                     0
% 3.63/0.98  num_eq_ax_congr_red:                    51
% 3.63/0.98  num_of_sem_filtered_clauses:            1
% 3.63/0.98  num_of_subtypes:                        0
% 3.63/0.98  monotx_restored_types:                  0
% 3.63/0.98  sat_num_of_epr_types:                   0
% 3.63/0.98  sat_num_of_non_cyclic_types:            0
% 3.63/0.98  sat_guarded_non_collapsed_types:        0
% 3.63/0.98  num_pure_diseq_elim:                    0
% 3.63/0.98  simp_replaced_by:                       0
% 3.63/0.98  res_preprocessed:                       83
% 3.63/0.98  prep_upred:                             0
% 3.63/0.98  prep_unflattend:                        0
% 3.63/0.98  smt_new_axioms:                         0
% 3.63/0.98  pred_elim_cands:                        3
% 3.63/0.98  pred_elim:                              0
% 3.63/0.98  pred_elim_cl:                           0
% 3.63/0.98  pred_elim_cycles:                       2
% 3.63/0.98  merged_defs:                            0
% 3.63/0.98  merged_defs_ncl:                        0
% 3.63/0.98  bin_hyper_res:                          0
% 3.63/0.98  prep_cycles:                            4
% 3.63/0.98  pred_elim_time:                         0.
% 3.63/0.98  splitting_time:                         0.
% 3.63/0.98  sem_filter_time:                        0.
% 3.63/0.98  monotx_time:                            0.001
% 3.63/0.98  subtype_inf_time:                       0.
% 3.63/0.98  
% 3.63/0.98  ------ Problem properties
% 3.63/0.98  
% 3.63/0.98  clauses:                                17
% 3.63/0.98  conjectures:                            5
% 3.63/0.98  epr:                                    6
% 3.63/0.98  horn:                                   14
% 3.63/0.98  ground:                                 5
% 3.63/0.98  unary:                                  6
% 3.63/0.98  binary:                                 0
% 3.63/0.98  lits:                                   57
% 3.63/0.98  lits_eq:                                4
% 3.63/0.98  fd_pure:                                0
% 3.63/0.98  fd_pseudo:                              0
% 3.63/0.98  fd_cond:                                0
% 3.63/0.98  fd_pseudo_cond:                         4
% 3.63/0.98  ac_symbols:                             0
% 3.63/0.98  
% 3.63/0.98  ------ Propositional Solver
% 3.63/0.98  
% 3.63/0.98  prop_solver_calls:                      29
% 3.63/0.98  prop_fast_solver_calls:                 1076
% 3.63/0.98  smt_solver_calls:                       0
% 3.63/0.98  smt_fast_solver_calls:                  0
% 3.63/0.98  prop_num_of_clauses:                    2648
% 3.63/0.98  prop_preprocess_simplified:             6070
% 3.63/0.98  prop_fo_subsumed:                       21
% 3.63/0.98  prop_solver_time:                       0.
% 3.63/0.98  smt_solver_time:                        0.
% 3.63/0.98  smt_fast_solver_time:                   0.
% 3.63/0.98  prop_fast_solver_time:                  0.
% 3.63/0.98  prop_unsat_core_time:                   0.
% 3.63/0.98  
% 3.63/0.98  ------ QBF
% 3.63/0.98  
% 3.63/0.98  qbf_q_res:                              0
% 3.63/0.98  qbf_num_tautologies:                    0
% 3.63/0.98  qbf_prep_cycles:                        0
% 3.63/0.98  
% 3.63/0.98  ------ BMC1
% 3.63/0.98  
% 3.63/0.98  bmc1_current_bound:                     -1
% 3.63/0.98  bmc1_last_solved_bound:                 -1
% 3.63/0.98  bmc1_unsat_core_size:                   -1
% 3.63/0.98  bmc1_unsat_core_parents_size:           -1
% 3.63/0.98  bmc1_merge_next_fun:                    0
% 3.63/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.63/0.98  
% 3.63/0.98  ------ Instantiation
% 3.63/0.98  
% 3.63/0.98  inst_num_of_clauses:                    643
% 3.63/0.98  inst_num_in_passive:                    155
% 3.63/0.98  inst_num_in_active:                     295
% 3.63/0.98  inst_num_in_unprocessed:                193
% 3.63/0.98  inst_num_of_loops:                      380
% 3.63/0.98  inst_num_of_learning_restarts:          0
% 3.63/0.98  inst_num_moves_active_passive:          82
% 3.63/0.98  inst_lit_activity:                      0
% 3.63/0.98  inst_lit_activity_moves:                0
% 3.63/0.98  inst_num_tautologies:                   0
% 3.63/0.98  inst_num_prop_implied:                  0
% 3.63/0.98  inst_num_existing_simplified:           0
% 3.63/0.98  inst_num_eq_res_simplified:             0
% 3.63/0.98  inst_num_child_elim:                    0
% 3.63/0.98  inst_num_of_dismatching_blockings:      257
% 3.63/0.98  inst_num_of_non_proper_insts:           684
% 3.63/0.98  inst_num_of_duplicates:                 0
% 3.63/0.98  inst_inst_num_from_inst_to_res:         0
% 3.63/0.98  inst_dismatching_checking_time:         0.
% 3.63/0.98  
% 3.63/0.98  ------ Resolution
% 3.63/0.98  
% 3.63/0.98  res_num_of_clauses:                     0
% 3.63/0.98  res_num_in_passive:                     0
% 3.63/0.98  res_num_in_active:                      0
% 3.63/0.98  res_num_of_loops:                       87
% 3.63/0.98  res_forward_subset_subsumed:            149
% 3.63/0.98  res_backward_subset_subsumed:           0
% 3.63/0.98  res_forward_subsumed:                   0
% 3.63/0.98  res_backward_subsumed:                  0
% 3.63/0.98  res_forward_subsumption_resolution:     0
% 3.63/0.98  res_backward_subsumption_resolution:    0
% 3.63/0.98  res_clause_to_clause_subsumption:       5417
% 3.63/0.98  res_orphan_elimination:                 0
% 3.63/0.98  res_tautology_del:                      47
% 3.63/0.98  res_num_eq_res_simplified:              0
% 3.63/0.98  res_num_sel_changes:                    0
% 3.63/0.98  res_moves_from_active_to_pass:          0
% 3.63/0.98  
% 3.63/0.98  ------ Superposition
% 3.63/0.98  
% 3.63/0.98  sup_time_total:                         0.
% 3.63/0.98  sup_time_generating:                    0.
% 3.63/0.98  sup_time_sim_full:                      0.
% 3.63/0.98  sup_time_sim_immed:                     0.
% 3.63/0.98  
% 3.63/0.98  sup_num_of_clauses:                     305
% 3.63/0.98  sup_num_in_active:                      76
% 3.63/0.98  sup_num_in_passive:                     229
% 3.63/0.98  sup_num_of_loops:                       75
% 3.63/0.98  sup_fw_superposition:                   169
% 3.63/0.98  sup_bw_superposition:                   177
% 3.63/0.98  sup_immediate_simplified:               34
% 3.63/0.98  sup_given_eliminated:                   0
% 3.63/0.98  comparisons_done:                       0
% 3.63/0.98  comparisons_avoided:                    0
% 3.63/0.98  
% 3.63/0.98  ------ Simplifications
% 3.63/0.98  
% 3.63/0.98  
% 3.63/0.98  sim_fw_subset_subsumed:                 28
% 3.63/0.98  sim_bw_subset_subsumed:                 0
% 3.63/0.98  sim_fw_subsumed:                        8
% 3.63/0.98  sim_bw_subsumed:                        0
% 3.63/0.98  sim_fw_subsumption_res:                 6
% 3.63/0.98  sim_bw_subsumption_res:                 0
% 3.63/0.98  sim_tautology_del:                      2
% 3.63/0.98  sim_eq_tautology_del:                   4
% 3.63/0.98  sim_eq_res_simp:                        0
% 3.63/0.98  sim_fw_demodulated:                     0
% 3.63/0.98  sim_bw_demodulated:                     0
% 3.63/0.98  sim_light_normalised:                   0
% 3.63/0.98  sim_joinable_taut:                      0
% 3.63/0.98  sim_joinable_simp:                      0
% 3.63/0.98  sim_ac_normalised:                      0
% 3.63/0.98  sim_smt_subsumption:                    0
% 3.63/0.98  
%------------------------------------------------------------------------------
