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
% DateTime   : Thu Dec  3 11:44:14 EST 2020

% Result     : Theorem 2.69s
% Output     : CNFRefutation 2.69s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 221 expanded)
%              Number of clauses        :   51 (  73 expanded)
%              Number of leaves         :   18 (  50 expanded)
%              Depth                    :   18
%              Number of atoms          :  368 ( 823 expanded)
%              Number of equality atoms :  129 ( 252 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   17 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k5_relat_1(X0,k1_xboole_0)
        & k1_xboole_0 = k5_relat_1(k1_xboole_0,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ( k1_xboole_0 = k5_relat_1(X0,k1_xboole_0)
          & k1_xboole_0 = k5_relat_1(k1_xboole_0,X0) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f21,plain,(
    ? [X0] :
      ( ( k1_xboole_0 != k5_relat_1(X0,k1_xboole_0)
        | k1_xboole_0 != k5_relat_1(k1_xboole_0,X0) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f36,plain,
    ( ? [X0] :
        ( ( k1_xboole_0 != k5_relat_1(X0,k1_xboole_0)
          | k1_xboole_0 != k5_relat_1(k1_xboole_0,X0) )
        & v1_relat_1(X0) )
   => ( ( k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0)
        | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7) )
      & v1_relat_1(sK7) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ( k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0)
      | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7) )
    & v1_relat_1(sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7])],[f21,f36])).

fof(f59,plain,(
    v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f24])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f63,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f42])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) != X0 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ! [X1,X2] : ~ r2_hidden(k4_tarski(X1,X2),X0)
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f20,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0)
     => r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f20,f34])).

fof(f58,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f7,axiom,(
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

fof(f15,plain,(
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
    inference(ennf_transformation,[],[f7])).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f15])).

fof(f29,plain,(
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
    inference(rectify,[],[f28])).

fof(f32,plain,(
    ! [X8,X7,X1,X0] :
      ( ? [X10] :
          ( r2_hidden(k4_tarski(X10,X8),X1)
          & r2_hidden(k4_tarski(X7,X10),X0) )
     => ( r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1)
        & r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X4,X3,X2,X1,X0] :
      ( ? [X6] :
          ( r2_hidden(k4_tarski(X6,X4),X1)
          & r2_hidden(k4_tarski(X3,X6),X0) )
     => ( r2_hidden(k4_tarski(sK3(X0,X1,X2),X4),X1)
        & r2_hidden(k4_tarski(X3,sK3(X0,X1,X2)),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
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
              ( ~ r2_hidden(k4_tarski(X5,sK2(X0,X1,X2)),X1)
              | ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),X5),X0) )
          | ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2) )
        & ( ? [X6] :
              ( r2_hidden(k4_tarski(X6,sK2(X0,X1,X2)),X1)
              & r2_hidden(k4_tarski(sK1(X0,X1,X2),X6),X0) )
          | r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k5_relat_1(X0,X1) = X2
                  | ( ( ! [X5] :
                          ( ~ r2_hidden(k4_tarski(X5,sK2(X0,X1,X2)),X1)
                          | ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),X5),X0) )
                      | ~ r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2) )
                    & ( ( r2_hidden(k4_tarski(sK3(X0,X1,X2),sK2(X0,X1,X2)),X1)
                        & r2_hidden(k4_tarski(sK1(X0,X1,X2),sK3(X0,X1,X2)),X0) )
                      | r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2) ) ) )
                & ( ! [X7,X8] :
                      ( ( r2_hidden(k4_tarski(X7,X8),X2)
                        | ! [X9] :
                            ( ~ r2_hidden(k4_tarski(X9,X8),X1)
                            | ~ r2_hidden(k4_tarski(X7,X9),X0) ) )
                      & ( ( r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1)
                          & r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0) )
                        | ~ r2_hidden(k4_tarski(X7,X8),X2) ) )
                  | k5_relat_1(X0,X1) != X2 ) )
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f29,f32,f31,f30])).

fof(f50,plain,(
    ! [X2,X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0)
      | ~ r2_hidden(k4_tarski(X7,X8),X2)
      | k5_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f67,plain,(
    ! [X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0)
      | ~ r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1))
      | ~ v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f17,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f16])).

fof(f56,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f1])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f22])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f4,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f61,plain,(
    ! [X0] : k1_xboole_0 = k1_setfam_1(k2_tarski(X0,k1_xboole_0)) ),
    inference(definition_unfolding,[],[f46,f49])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k3_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f57,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f62,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k1_setfam_1(k2_tarski(X0,X1)))
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f57,f49])).

fof(f51,plain,(
    ! [X2,X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X8),X2)
      | k5_relat_1(X0,X1) != X2
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f66,plain,(
    ! [X0,X8,X7,X1] :
      ( r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1)
      | ~ r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1))
      | ~ v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f51])).

fof(f43,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f64,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f41])).

fof(f60,plain,
    ( k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0)
    | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_21,negated_conjecture,
    ( v1_relat_1(sK7) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1087,plain,
    ( v1_relat_1(sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1101,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1100,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1476,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1101,c_1100])).

cnf(c_9,plain,
    ( r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) != X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1098,plain,
    ( k4_xboole_0(X0,X1) != X0
    | r1_xboole_0(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1602,plain,
    ( k1_xboole_0 != X0
    | r1_xboole_0(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1476,c_1098])).

cnf(c_1613,plain,
    ( r1_xboole_0(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1602])).

cnf(c_19,plain,
    ( r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0)
    | ~ v1_relat_1(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1088,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_16,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
    | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1091,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2) = iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_17,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1090,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1173,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2) = iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1091,c_1090])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r1_xboole_0(X2,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1105,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) != iProver_top
    | r1_xboole_0(X2,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2487,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X4) != iProver_top
    | r1_xboole_0(X4,X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1173,c_1105])).

cnf(c_2866,plain,
    ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
    | r1_xboole_0(X2,X2) != iProver_top
    | v1_relat_1(X3) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1173,c_2487])).

cnf(c_2881,plain,
    ( k5_relat_1(X0,X1) = k1_xboole_0
    | r1_xboole_0(X0,X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1088,c_2866])).

cnf(c_3065,plain,
    ( k5_relat_1(X0,X1) = k1_xboole_0
    | r1_xboole_0(X0,X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2881,c_1090])).

cnf(c_3069,plain,
    ( k5_relat_1(k1_xboole_0,X0) = k1_xboole_0
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1613,c_3065])).

cnf(c_8,plain,
    ( k1_setfam_1(k2_tarski(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_18,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k1_setfam_1(k2_tarski(X0,X1))) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1089,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(k1_setfam_1(k2_tarski(X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1503,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_8,c_1089])).

cnf(c_1542,plain,
    ( v1_relat_1(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1087,c_1503])).

cnf(c_3076,plain,
    ( v1_relat_1(X0) != iProver_top
    | k5_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3069,c_1542])).

cnf(c_3077,plain,
    ( k5_relat_1(k1_xboole_0,X0) = k1_xboole_0
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3076])).

cnf(c_3084,plain,
    ( k5_relat_1(k1_xboole_0,sK7) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1087,c_3077])).

cnf(c_2566,plain,
    ( ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),X0)
    | ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
    | ~ r1_xboole_0(X0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_2573,plain,
    ( ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
    | ~ r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_2566])).

cnf(c_15,plain,
    ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
    | r2_hidden(k4_tarski(sK4(X2,X3,X0,X1),X1),X3)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1705,plain,
    ( r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
    | ~ r2_hidden(k4_tarski(sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),k5_relat_1(sK7,k1_xboole_0))
    | ~ v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
    | ~ v1_relat_1(sK7)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_623,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1598,plain,
    ( k5_relat_1(k1_xboole_0,sK7) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k5_relat_1(k1_xboole_0,sK7) ),
    inference(instantiation,[status(thm)],[c_623])).

cnf(c_1599,plain,
    ( k5_relat_1(k1_xboole_0,sK7) != k1_xboole_0
    | k1_xboole_0 = k5_relat_1(k1_xboole_0,sK7)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1598])).

cnf(c_1547,plain,
    ( v1_relat_1(k1_xboole_0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1542])).

cnf(c_1523,plain,
    ( v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
    | ~ v1_relat_1(sK7)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_1303,plain,
    ( r2_hidden(k4_tarski(sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),k5_relat_1(sK7,k1_xboole_0))
    | ~ v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
    | k1_xboole_0 = k5_relat_1(sK7,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_68,plain,
    ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_5,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_64,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_61,plain,
    ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_54,plain,
    ( r1_xboole_0(k1_xboole_0,k1_xboole_0)
    | k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0)
    | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7) ),
    inference(cnf_transformation,[],[f60])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3084,c_2573,c_1705,c_1599,c_1547,c_1523,c_1303,c_68,c_64,c_61,c_54,c_20,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n004.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 12:53:38 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.69/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.69/0.97  
% 2.69/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.69/0.97  
% 2.69/0.97  ------  iProver source info
% 2.69/0.97  
% 2.69/0.97  git: date: 2020-06-30 10:37:57 +0100
% 2.69/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.69/0.97  git: non_committed_changes: false
% 2.69/0.97  git: last_make_outside_of_git: false
% 2.69/0.97  
% 2.69/0.97  ------ 
% 2.69/0.97  
% 2.69/0.97  ------ Input Options
% 2.69/0.97  
% 2.69/0.97  --out_options                           all
% 2.69/0.97  --tptp_safe_out                         true
% 2.69/0.97  --problem_path                          ""
% 2.69/0.97  --include_path                          ""
% 2.69/0.97  --clausifier                            res/vclausify_rel
% 2.69/0.97  --clausifier_options                    --mode clausify
% 2.69/0.97  --stdin                                 false
% 2.69/0.97  --stats_out                             all
% 2.69/0.97  
% 2.69/0.97  ------ General Options
% 2.69/0.97  
% 2.69/0.97  --fof                                   false
% 2.69/0.97  --time_out_real                         305.
% 2.69/0.97  --time_out_virtual                      -1.
% 2.69/0.97  --symbol_type_check                     false
% 2.69/0.97  --clausify_out                          false
% 2.69/0.97  --sig_cnt_out                           false
% 2.69/0.97  --trig_cnt_out                          false
% 2.69/0.97  --trig_cnt_out_tolerance                1.
% 2.69/0.97  --trig_cnt_out_sk_spl                   false
% 2.69/0.97  --abstr_cl_out                          false
% 2.69/0.97  
% 2.69/0.97  ------ Global Options
% 2.69/0.97  
% 2.69/0.97  --schedule                              default
% 2.69/0.97  --add_important_lit                     false
% 2.69/0.97  --prop_solver_per_cl                    1000
% 2.69/0.97  --min_unsat_core                        false
% 2.69/0.97  --soft_assumptions                      false
% 2.69/0.97  --soft_lemma_size                       3
% 2.69/0.97  --prop_impl_unit_size                   0
% 2.69/0.97  --prop_impl_unit                        []
% 2.69/0.97  --share_sel_clauses                     true
% 2.69/0.97  --reset_solvers                         false
% 2.69/0.97  --bc_imp_inh                            [conj_cone]
% 2.69/0.97  --conj_cone_tolerance                   3.
% 2.69/0.97  --extra_neg_conj                        none
% 2.69/0.97  --large_theory_mode                     true
% 2.69/0.97  --prolific_symb_bound                   200
% 2.69/0.97  --lt_threshold                          2000
% 2.69/0.97  --clause_weak_htbl                      true
% 2.69/0.97  --gc_record_bc_elim                     false
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing Options
% 2.69/0.97  
% 2.69/0.97  --preprocessing_flag                    true
% 2.69/0.97  --time_out_prep_mult                    0.1
% 2.69/0.97  --splitting_mode                        input
% 2.69/0.97  --splitting_grd                         true
% 2.69/0.97  --splitting_cvd                         false
% 2.69/0.97  --splitting_cvd_svl                     false
% 2.69/0.97  --splitting_nvd                         32
% 2.69/0.97  --sub_typing                            true
% 2.69/0.97  --prep_gs_sim                           true
% 2.69/0.97  --prep_unflatten                        true
% 2.69/0.97  --prep_res_sim                          true
% 2.69/0.97  --prep_upred                            true
% 2.69/0.97  --prep_sem_filter                       exhaustive
% 2.69/0.97  --prep_sem_filter_out                   false
% 2.69/0.97  --pred_elim                             true
% 2.69/0.97  --res_sim_input                         true
% 2.69/0.97  --eq_ax_congr_red                       true
% 2.69/0.97  --pure_diseq_elim                       true
% 2.69/0.97  --brand_transform                       false
% 2.69/0.97  --non_eq_to_eq                          false
% 2.69/0.97  --prep_def_merge                        true
% 2.69/0.97  --prep_def_merge_prop_impl              false
% 2.69/0.97  --prep_def_merge_mbd                    true
% 2.69/0.97  --prep_def_merge_tr_red                 false
% 2.69/0.97  --prep_def_merge_tr_cl                  false
% 2.69/0.97  --smt_preprocessing                     true
% 2.69/0.97  --smt_ac_axioms                         fast
% 2.69/0.97  --preprocessed_out                      false
% 2.69/0.97  --preprocessed_stats                    false
% 2.69/0.97  
% 2.69/0.97  ------ Abstraction refinement Options
% 2.69/0.97  
% 2.69/0.97  --abstr_ref                             []
% 2.69/0.97  --abstr_ref_prep                        false
% 2.69/0.97  --abstr_ref_until_sat                   false
% 2.69/0.97  --abstr_ref_sig_restrict                funpre
% 2.69/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/0.97  --abstr_ref_under                       []
% 2.69/0.97  
% 2.69/0.97  ------ SAT Options
% 2.69/0.97  
% 2.69/0.97  --sat_mode                              false
% 2.69/0.97  --sat_fm_restart_options                ""
% 2.69/0.97  --sat_gr_def                            false
% 2.69/0.97  --sat_epr_types                         true
% 2.69/0.97  --sat_non_cyclic_types                  false
% 2.69/0.97  --sat_finite_models                     false
% 2.69/0.97  --sat_fm_lemmas                         false
% 2.69/0.97  --sat_fm_prep                           false
% 2.69/0.97  --sat_fm_uc_incr                        true
% 2.69/0.97  --sat_out_model                         small
% 2.69/0.97  --sat_out_clauses                       false
% 2.69/0.97  
% 2.69/0.97  ------ QBF Options
% 2.69/0.97  
% 2.69/0.97  --qbf_mode                              false
% 2.69/0.97  --qbf_elim_univ                         false
% 2.69/0.97  --qbf_dom_inst                          none
% 2.69/0.97  --qbf_dom_pre_inst                      false
% 2.69/0.97  --qbf_sk_in                             false
% 2.69/0.97  --qbf_pred_elim                         true
% 2.69/0.97  --qbf_split                             512
% 2.69/0.97  
% 2.69/0.97  ------ BMC1 Options
% 2.69/0.97  
% 2.69/0.97  --bmc1_incremental                      false
% 2.69/0.97  --bmc1_axioms                           reachable_all
% 2.69/0.97  --bmc1_min_bound                        0
% 2.69/0.97  --bmc1_max_bound                        -1
% 2.69/0.97  --bmc1_max_bound_default                -1
% 2.69/0.97  --bmc1_symbol_reachability              true
% 2.69/0.97  --bmc1_property_lemmas                  false
% 2.69/0.97  --bmc1_k_induction                      false
% 2.69/0.97  --bmc1_non_equiv_states                 false
% 2.69/0.97  --bmc1_deadlock                         false
% 2.69/0.97  --bmc1_ucm                              false
% 2.69/0.97  --bmc1_add_unsat_core                   none
% 2.69/0.97  --bmc1_unsat_core_children              false
% 2.69/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/0.97  --bmc1_out_stat                         full
% 2.69/0.97  --bmc1_ground_init                      false
% 2.69/0.97  --bmc1_pre_inst_next_state              false
% 2.69/0.97  --bmc1_pre_inst_state                   false
% 2.69/0.97  --bmc1_pre_inst_reach_state             false
% 2.69/0.97  --bmc1_out_unsat_core                   false
% 2.69/0.97  --bmc1_aig_witness_out                  false
% 2.69/0.97  --bmc1_verbose                          false
% 2.69/0.97  --bmc1_dump_clauses_tptp                false
% 2.69/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.69/0.97  --bmc1_dump_file                        -
% 2.69/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.69/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.69/0.97  --bmc1_ucm_extend_mode                  1
% 2.69/0.97  --bmc1_ucm_init_mode                    2
% 2.69/0.97  --bmc1_ucm_cone_mode                    none
% 2.69/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.69/0.97  --bmc1_ucm_relax_model                  4
% 2.69/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.69/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/0.97  --bmc1_ucm_layered_model                none
% 2.69/0.97  --bmc1_ucm_max_lemma_size               10
% 2.69/0.97  
% 2.69/0.97  ------ AIG Options
% 2.69/0.97  
% 2.69/0.97  --aig_mode                              false
% 2.69/0.97  
% 2.69/0.97  ------ Instantiation Options
% 2.69/0.97  
% 2.69/0.97  --instantiation_flag                    true
% 2.69/0.97  --inst_sos_flag                         false
% 2.69/0.97  --inst_sos_phase                        true
% 2.69/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/0.97  --inst_lit_sel_side                     num_symb
% 2.69/0.97  --inst_solver_per_active                1400
% 2.69/0.97  --inst_solver_calls_frac                1.
% 2.69/0.97  --inst_passive_queue_type               priority_queues
% 2.69/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/0.97  --inst_passive_queues_freq              [25;2]
% 2.69/0.97  --inst_dismatching                      true
% 2.69/0.97  --inst_eager_unprocessed_to_passive     true
% 2.69/0.97  --inst_prop_sim_given                   true
% 2.69/0.97  --inst_prop_sim_new                     false
% 2.69/0.97  --inst_subs_new                         false
% 2.69/0.97  --inst_eq_res_simp                      false
% 2.69/0.97  --inst_subs_given                       false
% 2.69/0.97  --inst_orphan_elimination               true
% 2.69/0.97  --inst_learning_loop_flag               true
% 2.69/0.97  --inst_learning_start                   3000
% 2.69/0.97  --inst_learning_factor                  2
% 2.69/0.97  --inst_start_prop_sim_after_learn       3
% 2.69/0.97  --inst_sel_renew                        solver
% 2.69/0.97  --inst_lit_activity_flag                true
% 2.69/0.97  --inst_restr_to_given                   false
% 2.69/0.97  --inst_activity_threshold               500
% 2.69/0.97  --inst_out_proof                        true
% 2.69/0.97  
% 2.69/0.97  ------ Resolution Options
% 2.69/0.97  
% 2.69/0.97  --resolution_flag                       true
% 2.69/0.97  --res_lit_sel                           adaptive
% 2.69/0.97  --res_lit_sel_side                      none
% 2.69/0.97  --res_ordering                          kbo
% 2.69/0.97  --res_to_prop_solver                    active
% 2.69/0.97  --res_prop_simpl_new                    false
% 2.69/0.97  --res_prop_simpl_given                  true
% 2.69/0.97  --res_passive_queue_type                priority_queues
% 2.69/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/0.97  --res_passive_queues_freq               [15;5]
% 2.69/0.97  --res_forward_subs                      full
% 2.69/0.97  --res_backward_subs                     full
% 2.69/0.97  --res_forward_subs_resolution           true
% 2.69/0.97  --res_backward_subs_resolution          true
% 2.69/0.97  --res_orphan_elimination                true
% 2.69/0.97  --res_time_limit                        2.
% 2.69/0.97  --res_out_proof                         true
% 2.69/0.97  
% 2.69/0.97  ------ Superposition Options
% 2.69/0.97  
% 2.69/0.97  --superposition_flag                    true
% 2.69/0.97  --sup_passive_queue_type                priority_queues
% 2.69/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.69/0.97  --demod_completeness_check              fast
% 2.69/0.97  --demod_use_ground                      true
% 2.69/0.97  --sup_to_prop_solver                    passive
% 2.69/0.97  --sup_prop_simpl_new                    true
% 2.69/0.97  --sup_prop_simpl_given                  true
% 2.69/0.97  --sup_fun_splitting                     false
% 2.69/0.97  --sup_smt_interval                      50000
% 2.69/0.97  
% 2.69/0.97  ------ Superposition Simplification Setup
% 2.69/0.97  
% 2.69/0.97  --sup_indices_passive                   []
% 2.69/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_full_bw                           [BwDemod]
% 2.69/0.97  --sup_immed_triv                        [TrivRules]
% 2.69/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_immed_bw_main                     []
% 2.69/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.97  
% 2.69/0.97  ------ Combination Options
% 2.69/0.97  
% 2.69/0.97  --comb_res_mult                         3
% 2.69/0.97  --comb_sup_mult                         2
% 2.69/0.97  --comb_inst_mult                        10
% 2.69/0.97  
% 2.69/0.97  ------ Debug Options
% 2.69/0.97  
% 2.69/0.97  --dbg_backtrace                         false
% 2.69/0.97  --dbg_dump_prop_clauses                 false
% 2.69/0.97  --dbg_dump_prop_clauses_file            -
% 2.69/0.97  --dbg_out_stat                          false
% 2.69/0.97  ------ Parsing...
% 2.69/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.69/0.97  ------ Proving...
% 2.69/0.97  ------ Problem Properties 
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  clauses                                 21
% 2.69/0.97  conjectures                             2
% 2.69/0.97  EPR                                     4
% 2.69/0.97  Horn                                    16
% 2.69/0.97  unary                                   3
% 2.69/0.97  binary                                  8
% 2.69/0.97  lits                                    66
% 2.69/0.97  lits eq                                 12
% 2.69/0.97  fd_pure                                 0
% 2.69/0.97  fd_pseudo                               0
% 2.69/0.97  fd_cond                                 1
% 2.69/0.97  fd_pseudo_cond                          4
% 2.69/0.97  AC symbols                              0
% 2.69/0.97  
% 2.69/0.97  ------ Schedule dynamic 5 is on 
% 2.69/0.97  
% 2.69/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  ------ 
% 2.69/0.97  Current options:
% 2.69/0.97  ------ 
% 2.69/0.97  
% 2.69/0.97  ------ Input Options
% 2.69/0.97  
% 2.69/0.97  --out_options                           all
% 2.69/0.97  --tptp_safe_out                         true
% 2.69/0.97  --problem_path                          ""
% 2.69/0.97  --include_path                          ""
% 2.69/0.97  --clausifier                            res/vclausify_rel
% 2.69/0.97  --clausifier_options                    --mode clausify
% 2.69/0.97  --stdin                                 false
% 2.69/0.97  --stats_out                             all
% 2.69/0.97  
% 2.69/0.97  ------ General Options
% 2.69/0.97  
% 2.69/0.97  --fof                                   false
% 2.69/0.97  --time_out_real                         305.
% 2.69/0.97  --time_out_virtual                      -1.
% 2.69/0.97  --symbol_type_check                     false
% 2.69/0.97  --clausify_out                          false
% 2.69/0.97  --sig_cnt_out                           false
% 2.69/0.97  --trig_cnt_out                          false
% 2.69/0.97  --trig_cnt_out_tolerance                1.
% 2.69/0.97  --trig_cnt_out_sk_spl                   false
% 2.69/0.97  --abstr_cl_out                          false
% 2.69/0.97  
% 2.69/0.97  ------ Global Options
% 2.69/0.97  
% 2.69/0.97  --schedule                              default
% 2.69/0.97  --add_important_lit                     false
% 2.69/0.97  --prop_solver_per_cl                    1000
% 2.69/0.97  --min_unsat_core                        false
% 2.69/0.97  --soft_assumptions                      false
% 2.69/0.97  --soft_lemma_size                       3
% 2.69/0.97  --prop_impl_unit_size                   0
% 2.69/0.97  --prop_impl_unit                        []
% 2.69/0.97  --share_sel_clauses                     true
% 2.69/0.97  --reset_solvers                         false
% 2.69/0.97  --bc_imp_inh                            [conj_cone]
% 2.69/0.97  --conj_cone_tolerance                   3.
% 2.69/0.97  --extra_neg_conj                        none
% 2.69/0.97  --large_theory_mode                     true
% 2.69/0.97  --prolific_symb_bound                   200
% 2.69/0.97  --lt_threshold                          2000
% 2.69/0.97  --clause_weak_htbl                      true
% 2.69/0.97  --gc_record_bc_elim                     false
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing Options
% 2.69/0.97  
% 2.69/0.97  --preprocessing_flag                    true
% 2.69/0.97  --time_out_prep_mult                    0.1
% 2.69/0.97  --splitting_mode                        input
% 2.69/0.97  --splitting_grd                         true
% 2.69/0.97  --splitting_cvd                         false
% 2.69/0.97  --splitting_cvd_svl                     false
% 2.69/0.97  --splitting_nvd                         32
% 2.69/0.97  --sub_typing                            true
% 2.69/0.97  --prep_gs_sim                           true
% 2.69/0.97  --prep_unflatten                        true
% 2.69/0.97  --prep_res_sim                          true
% 2.69/0.97  --prep_upred                            true
% 2.69/0.97  --prep_sem_filter                       exhaustive
% 2.69/0.97  --prep_sem_filter_out                   false
% 2.69/0.97  --pred_elim                             true
% 2.69/0.97  --res_sim_input                         true
% 2.69/0.97  --eq_ax_congr_red                       true
% 2.69/0.97  --pure_diseq_elim                       true
% 2.69/0.97  --brand_transform                       false
% 2.69/0.97  --non_eq_to_eq                          false
% 2.69/0.97  --prep_def_merge                        true
% 2.69/0.97  --prep_def_merge_prop_impl              false
% 2.69/0.97  --prep_def_merge_mbd                    true
% 2.69/0.97  --prep_def_merge_tr_red                 false
% 2.69/0.97  --prep_def_merge_tr_cl                  false
% 2.69/0.97  --smt_preprocessing                     true
% 2.69/0.97  --smt_ac_axioms                         fast
% 2.69/0.97  --preprocessed_out                      false
% 2.69/0.97  --preprocessed_stats                    false
% 2.69/0.97  
% 2.69/0.97  ------ Abstraction refinement Options
% 2.69/0.97  
% 2.69/0.97  --abstr_ref                             []
% 2.69/0.97  --abstr_ref_prep                        false
% 2.69/0.97  --abstr_ref_until_sat                   false
% 2.69/0.97  --abstr_ref_sig_restrict                funpre
% 2.69/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/0.97  --abstr_ref_under                       []
% 2.69/0.97  
% 2.69/0.97  ------ SAT Options
% 2.69/0.97  
% 2.69/0.97  --sat_mode                              false
% 2.69/0.97  --sat_fm_restart_options                ""
% 2.69/0.97  --sat_gr_def                            false
% 2.69/0.97  --sat_epr_types                         true
% 2.69/0.97  --sat_non_cyclic_types                  false
% 2.69/0.97  --sat_finite_models                     false
% 2.69/0.97  --sat_fm_lemmas                         false
% 2.69/0.97  --sat_fm_prep                           false
% 2.69/0.97  --sat_fm_uc_incr                        true
% 2.69/0.97  --sat_out_model                         small
% 2.69/0.97  --sat_out_clauses                       false
% 2.69/0.97  
% 2.69/0.97  ------ QBF Options
% 2.69/0.97  
% 2.69/0.97  --qbf_mode                              false
% 2.69/0.97  --qbf_elim_univ                         false
% 2.69/0.97  --qbf_dom_inst                          none
% 2.69/0.97  --qbf_dom_pre_inst                      false
% 2.69/0.97  --qbf_sk_in                             false
% 2.69/0.97  --qbf_pred_elim                         true
% 2.69/0.97  --qbf_split                             512
% 2.69/0.97  
% 2.69/0.97  ------ BMC1 Options
% 2.69/0.97  
% 2.69/0.97  --bmc1_incremental                      false
% 2.69/0.97  --bmc1_axioms                           reachable_all
% 2.69/0.97  --bmc1_min_bound                        0
% 2.69/0.97  --bmc1_max_bound                        -1
% 2.69/0.97  --bmc1_max_bound_default                -1
% 2.69/0.97  --bmc1_symbol_reachability              true
% 2.69/0.97  --bmc1_property_lemmas                  false
% 2.69/0.97  --bmc1_k_induction                      false
% 2.69/0.97  --bmc1_non_equiv_states                 false
% 2.69/0.97  --bmc1_deadlock                         false
% 2.69/0.97  --bmc1_ucm                              false
% 2.69/0.97  --bmc1_add_unsat_core                   none
% 2.69/0.97  --bmc1_unsat_core_children              false
% 2.69/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/0.97  --bmc1_out_stat                         full
% 2.69/0.97  --bmc1_ground_init                      false
% 2.69/0.97  --bmc1_pre_inst_next_state              false
% 2.69/0.97  --bmc1_pre_inst_state                   false
% 2.69/0.97  --bmc1_pre_inst_reach_state             false
% 2.69/0.97  --bmc1_out_unsat_core                   false
% 2.69/0.97  --bmc1_aig_witness_out                  false
% 2.69/0.97  --bmc1_verbose                          false
% 2.69/0.97  --bmc1_dump_clauses_tptp                false
% 2.69/0.97  --bmc1_dump_unsat_core_tptp             false
% 2.69/0.97  --bmc1_dump_file                        -
% 2.69/0.97  --bmc1_ucm_expand_uc_limit              128
% 2.69/0.97  --bmc1_ucm_n_expand_iterations          6
% 2.69/0.97  --bmc1_ucm_extend_mode                  1
% 2.69/0.97  --bmc1_ucm_init_mode                    2
% 2.69/0.97  --bmc1_ucm_cone_mode                    none
% 2.69/0.97  --bmc1_ucm_reduced_relation_type        0
% 2.69/0.97  --bmc1_ucm_relax_model                  4
% 2.69/0.97  --bmc1_ucm_full_tr_after_sat            true
% 2.69/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/0.97  --bmc1_ucm_layered_model                none
% 2.69/0.97  --bmc1_ucm_max_lemma_size               10
% 2.69/0.97  
% 2.69/0.97  ------ AIG Options
% 2.69/0.97  
% 2.69/0.97  --aig_mode                              false
% 2.69/0.97  
% 2.69/0.97  ------ Instantiation Options
% 2.69/0.97  
% 2.69/0.97  --instantiation_flag                    true
% 2.69/0.97  --inst_sos_flag                         false
% 2.69/0.97  --inst_sos_phase                        true
% 2.69/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/0.97  --inst_lit_sel_side                     none
% 2.69/0.97  --inst_solver_per_active                1400
% 2.69/0.97  --inst_solver_calls_frac                1.
% 2.69/0.97  --inst_passive_queue_type               priority_queues
% 2.69/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/0.97  --inst_passive_queues_freq              [25;2]
% 2.69/0.97  --inst_dismatching                      true
% 2.69/0.97  --inst_eager_unprocessed_to_passive     true
% 2.69/0.97  --inst_prop_sim_given                   true
% 2.69/0.97  --inst_prop_sim_new                     false
% 2.69/0.97  --inst_subs_new                         false
% 2.69/0.97  --inst_eq_res_simp                      false
% 2.69/0.97  --inst_subs_given                       false
% 2.69/0.97  --inst_orphan_elimination               true
% 2.69/0.97  --inst_learning_loop_flag               true
% 2.69/0.97  --inst_learning_start                   3000
% 2.69/0.97  --inst_learning_factor                  2
% 2.69/0.97  --inst_start_prop_sim_after_learn       3
% 2.69/0.97  --inst_sel_renew                        solver
% 2.69/0.97  --inst_lit_activity_flag                true
% 2.69/0.97  --inst_restr_to_given                   false
% 2.69/0.97  --inst_activity_threshold               500
% 2.69/0.97  --inst_out_proof                        true
% 2.69/0.97  
% 2.69/0.97  ------ Resolution Options
% 2.69/0.97  
% 2.69/0.97  --resolution_flag                       false
% 2.69/0.97  --res_lit_sel                           adaptive
% 2.69/0.97  --res_lit_sel_side                      none
% 2.69/0.97  --res_ordering                          kbo
% 2.69/0.97  --res_to_prop_solver                    active
% 2.69/0.97  --res_prop_simpl_new                    false
% 2.69/0.97  --res_prop_simpl_given                  true
% 2.69/0.97  --res_passive_queue_type                priority_queues
% 2.69/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/0.97  --res_passive_queues_freq               [15;5]
% 2.69/0.97  --res_forward_subs                      full
% 2.69/0.97  --res_backward_subs                     full
% 2.69/0.97  --res_forward_subs_resolution           true
% 2.69/0.97  --res_backward_subs_resolution          true
% 2.69/0.97  --res_orphan_elimination                true
% 2.69/0.97  --res_time_limit                        2.
% 2.69/0.97  --res_out_proof                         true
% 2.69/0.97  
% 2.69/0.97  ------ Superposition Options
% 2.69/0.97  
% 2.69/0.97  --superposition_flag                    true
% 2.69/0.97  --sup_passive_queue_type                priority_queues
% 2.69/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/0.97  --sup_passive_queues_freq               [8;1;4]
% 2.69/0.97  --demod_completeness_check              fast
% 2.69/0.97  --demod_use_ground                      true
% 2.69/0.97  --sup_to_prop_solver                    passive
% 2.69/0.97  --sup_prop_simpl_new                    true
% 2.69/0.97  --sup_prop_simpl_given                  true
% 2.69/0.97  --sup_fun_splitting                     false
% 2.69/0.97  --sup_smt_interval                      50000
% 2.69/0.97  
% 2.69/0.97  ------ Superposition Simplification Setup
% 2.69/0.97  
% 2.69/0.97  --sup_indices_passive                   []
% 2.69/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_full_bw                           [BwDemod]
% 2.69/0.97  --sup_immed_triv                        [TrivRules]
% 2.69/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_immed_bw_main                     []
% 2.69/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/0.97  
% 2.69/0.97  ------ Combination Options
% 2.69/0.97  
% 2.69/0.97  --comb_res_mult                         3
% 2.69/0.97  --comb_sup_mult                         2
% 2.69/0.97  --comb_inst_mult                        10
% 2.69/0.97  
% 2.69/0.97  ------ Debug Options
% 2.69/0.97  
% 2.69/0.97  --dbg_backtrace                         false
% 2.69/0.97  --dbg_dump_prop_clauses                 false
% 2.69/0.97  --dbg_dump_prop_clauses_file            -
% 2.69/0.97  --dbg_out_stat                          false
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  ------ Proving...
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  % SZS status Theorem for theBenchmark.p
% 2.69/0.97  
% 2.69/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 2.69/0.97  
% 2.69/0.97  fof(f11,conjecture,(
% 2.69/0.97    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k5_relat_1(X0,k1_xboole_0) & k1_xboole_0 = k5_relat_1(k1_xboole_0,X0)))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f12,negated_conjecture,(
% 2.69/0.97    ~! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k5_relat_1(X0,k1_xboole_0) & k1_xboole_0 = k5_relat_1(k1_xboole_0,X0)))),
% 2.69/0.97    inference(negated_conjecture,[],[f11])).
% 2.69/0.97  
% 2.69/0.97  fof(f21,plain,(
% 2.69/0.97    ? [X0] : ((k1_xboole_0 != k5_relat_1(X0,k1_xboole_0) | k1_xboole_0 != k5_relat_1(k1_xboole_0,X0)) & v1_relat_1(X0))),
% 2.69/0.97    inference(ennf_transformation,[],[f12])).
% 2.69/0.97  
% 2.69/0.97  fof(f36,plain,(
% 2.69/0.97    ? [X0] : ((k1_xboole_0 != k5_relat_1(X0,k1_xboole_0) | k1_xboole_0 != k5_relat_1(k1_xboole_0,X0)) & v1_relat_1(X0)) => ((k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0) | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7)) & v1_relat_1(sK7))),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f37,plain,(
% 2.69/0.97    (k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0) | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7)) & v1_relat_1(sK7)),
% 2.69/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7])],[f21,f36])).
% 2.69/0.97  
% 2.69/0.97  fof(f59,plain,(
% 2.69/0.97    v1_relat_1(sK7)),
% 2.69/0.97    inference(cnf_transformation,[],[f37])).
% 2.69/0.97  
% 2.69/0.97  fof(f2,axiom,(
% 2.69/0.97    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f24,plain,(
% 2.69/0.97    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.69/0.97    inference(nnf_transformation,[],[f2])).
% 2.69/0.97  
% 2.69/0.97  fof(f25,plain,(
% 2.69/0.97    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.69/0.97    inference(flattening,[],[f24])).
% 2.69/0.97  
% 2.69/0.97  fof(f42,plain,(
% 2.69/0.97    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 2.69/0.97    inference(cnf_transformation,[],[f25])).
% 2.69/0.97  
% 2.69/0.97  fof(f63,plain,(
% 2.69/0.97    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.69/0.97    inference(equality_resolution,[],[f42])).
% 2.69/0.97  
% 2.69/0.97  fof(f3,axiom,(
% 2.69/0.97    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f26,plain,(
% 2.69/0.97    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 2.69/0.97    inference(nnf_transformation,[],[f3])).
% 2.69/0.97  
% 2.69/0.97  fof(f45,plain,(
% 2.69/0.97    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f26])).
% 2.69/0.97  
% 2.69/0.97  fof(f5,axiom,(
% 2.69/0.97    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f27,plain,(
% 2.69/0.97    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 2.69/0.97    inference(nnf_transformation,[],[f5])).
% 2.69/0.97  
% 2.69/0.97  fof(f48,plain,(
% 2.69/0.97    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) )),
% 2.69/0.97    inference(cnf_transformation,[],[f27])).
% 2.69/0.97  
% 2.69/0.97  fof(f10,axiom,(
% 2.69/0.97    ! [X0] : (v1_relat_1(X0) => (! [X1,X2] : ~r2_hidden(k4_tarski(X1,X2),X0) => k1_xboole_0 = X0))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f19,plain,(
% 2.69/0.97    ! [X0] : ((k1_xboole_0 = X0 | ? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(ennf_transformation,[],[f10])).
% 2.69/0.97  
% 2.69/0.97  fof(f20,plain,(
% 2.69/0.97    ! [X0] : (k1_xboole_0 = X0 | ? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(flattening,[],[f19])).
% 2.69/0.97  
% 2.69/0.97  fof(f34,plain,(
% 2.69/0.97    ! [X0] : (? [X1,X2] : r2_hidden(k4_tarski(X1,X2),X0) => r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0))),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f35,plain,(
% 2.69/0.97    ! [X0] : (k1_xboole_0 = X0 | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f20,f34])).
% 2.69/0.97  
% 2.69/0.97  fof(f58,plain,(
% 2.69/0.97    ( ! [X0] : (k1_xboole_0 = X0 | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f35])).
% 2.69/0.97  
% 2.69/0.97  fof(f7,axiom,(
% 2.69/0.97    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => (k5_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> ? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)))))))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f15,plain,(
% 2.69/0.97    ! [X0] : (! [X1] : (! [X2] : ((k5_relat_1(X0,X1) = X2 <=> ! [X3,X4] : (r2_hidden(k4_tarski(X3,X4),X2) <=> ? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)))) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(ennf_transformation,[],[f7])).
% 2.69/0.97  
% 2.69/0.97  fof(f28,plain,(
% 2.69/0.97    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X3,X4] : ((r2_hidden(k4_tarski(X3,X4),X2) | ! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0))) & (? [X5] : (r2_hidden(k4_tarski(X5,X4),X1) & r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(nnf_transformation,[],[f15])).
% 2.69/0.97  
% 2.69/0.97  fof(f29,plain,(
% 2.69/0.97    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) | r2_hidden(k4_tarski(X3,X4),X2)))) & (! [X7,X8] : ((r2_hidden(k4_tarski(X7,X8),X2) | ! [X9] : (~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0))) & (? [X10] : (r2_hidden(k4_tarski(X10,X8),X1) & r2_hidden(k4_tarski(X7,X10),X0)) | ~r2_hidden(k4_tarski(X7,X8),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(rectify,[],[f28])).
% 2.69/0.97  
% 2.69/0.97  fof(f32,plain,(
% 2.69/0.97    ! [X8,X7,X1,X0] : (? [X10] : (r2_hidden(k4_tarski(X10,X8),X1) & r2_hidden(k4_tarski(X7,X10),X0)) => (r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1) & r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0)))),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f31,plain,(
% 2.69/0.97    ( ! [X4,X3] : (! [X2,X1,X0] : (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) => (r2_hidden(k4_tarski(sK3(X0,X1,X2),X4),X1) & r2_hidden(k4_tarski(X3,sK3(X0,X1,X2)),X0)))) )),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f30,plain,(
% 2.69/0.97    ! [X2,X1,X0] : (? [X3,X4] : ((! [X5] : (~r2_hidden(k4_tarski(X5,X4),X1) | ~r2_hidden(k4_tarski(X3,X5),X0)) | ~r2_hidden(k4_tarski(X3,X4),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,X4),X1) & r2_hidden(k4_tarski(X3,X6),X0)) | r2_hidden(k4_tarski(X3,X4),X2))) => ((! [X5] : (~r2_hidden(k4_tarski(X5,sK2(X0,X1,X2)),X1) | ~r2_hidden(k4_tarski(sK1(X0,X1,X2),X5),X0)) | ~r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2)) & (? [X6] : (r2_hidden(k4_tarski(X6,sK2(X0,X1,X2)),X1) & r2_hidden(k4_tarski(sK1(X0,X1,X2),X6),X0)) | r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2))))),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f33,plain,(
% 2.69/0.97    ! [X0] : (! [X1] : (! [X2] : (((k5_relat_1(X0,X1) = X2 | ((! [X5] : (~r2_hidden(k4_tarski(X5,sK2(X0,X1,X2)),X1) | ~r2_hidden(k4_tarski(sK1(X0,X1,X2),X5),X0)) | ~r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2)) & ((r2_hidden(k4_tarski(sK3(X0,X1,X2),sK2(X0,X1,X2)),X1) & r2_hidden(k4_tarski(sK1(X0,X1,X2),sK3(X0,X1,X2)),X0)) | r2_hidden(k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)),X2)))) & (! [X7,X8] : ((r2_hidden(k4_tarski(X7,X8),X2) | ! [X9] : (~r2_hidden(k4_tarski(X9,X8),X1) | ~r2_hidden(k4_tarski(X7,X9),X0))) & ((r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1) & r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0)) | ~r2_hidden(k4_tarski(X7,X8),X2))) | k5_relat_1(X0,X1) != X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f29,f32,f31,f30])).
% 2.69/0.97  
% 2.69/0.97  fof(f50,plain,(
% 2.69/0.97    ( ! [X2,X0,X8,X7,X1] : (r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0) | ~r2_hidden(k4_tarski(X7,X8),X2) | k5_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f33])).
% 2.69/0.97  
% 2.69/0.97  fof(f67,plain,(
% 2.69/0.97    ( ! [X0,X8,X7,X1] : (r2_hidden(k4_tarski(X7,sK4(X0,X1,X7,X8)),X0) | ~r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1)) | ~v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(equality_resolution,[],[f50])).
% 2.69/0.97  
% 2.69/0.97  fof(f8,axiom,(
% 2.69/0.97    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f16,plain,(
% 2.69/0.97    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 2.69/0.97    inference(ennf_transformation,[],[f8])).
% 2.69/0.97  
% 2.69/0.97  fof(f17,plain,(
% 2.69/0.97    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(flattening,[],[f16])).
% 2.69/0.97  
% 2.69/0.97  fof(f56,plain,(
% 2.69/0.97    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f17])).
% 2.69/0.97  
% 2.69/0.97  fof(f1,axiom,(
% 2.69/0.97    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f13,plain,(
% 2.69/0.97    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.69/0.97    inference(rectify,[],[f1])).
% 2.69/0.97  
% 2.69/0.97  fof(f14,plain,(
% 2.69/0.97    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.69/0.97    inference(ennf_transformation,[],[f13])).
% 2.69/0.97  
% 2.69/0.97  fof(f22,plain,(
% 2.69/0.97    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.69/0.97    introduced(choice_axiom,[])).
% 2.69/0.97  
% 2.69/0.97  fof(f23,plain,(
% 2.69/0.97    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.69/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f22])).
% 2.69/0.97  
% 2.69/0.97  fof(f40,plain,(
% 2.69/0.97    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f23])).
% 2.69/0.97  
% 2.69/0.97  fof(f4,axiom,(
% 2.69/0.97    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f46,plain,(
% 2.69/0.97    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f4])).
% 2.69/0.97  
% 2.69/0.97  fof(f6,axiom,(
% 2.69/0.97    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f49,plain,(
% 2.69/0.97    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 2.69/0.97    inference(cnf_transformation,[],[f6])).
% 2.69/0.97  
% 2.69/0.97  fof(f61,plain,(
% 2.69/0.97    ( ! [X0] : (k1_xboole_0 = k1_setfam_1(k2_tarski(X0,k1_xboole_0))) )),
% 2.69/0.97    inference(definition_unfolding,[],[f46,f49])).
% 2.69/0.97  
% 2.69/0.97  fof(f9,axiom,(
% 2.69/0.97    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k3_xboole_0(X0,X1)))),
% 2.69/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.69/0.97  
% 2.69/0.97  fof(f18,plain,(
% 2.69/0.97    ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0))),
% 2.69/0.97    inference(ennf_transformation,[],[f9])).
% 2.69/0.97  
% 2.69/0.97  fof(f57,plain,(
% 2.69/0.97    ( ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f18])).
% 2.69/0.97  
% 2.69/0.97  fof(f62,plain,(
% 2.69/0.97    ( ! [X0,X1] : (v1_relat_1(k1_setfam_1(k2_tarski(X0,X1))) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(definition_unfolding,[],[f57,f49])).
% 2.69/0.97  
% 2.69/0.97  fof(f51,plain,(
% 2.69/0.97    ( ! [X2,X0,X8,X7,X1] : (r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1) | ~r2_hidden(k4_tarski(X7,X8),X2) | k5_relat_1(X0,X1) != X2 | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f33])).
% 2.69/0.97  
% 2.69/0.97  fof(f66,plain,(
% 2.69/0.97    ( ! [X0,X8,X7,X1] : (r2_hidden(k4_tarski(sK4(X0,X1,X7,X8),X8),X1) | ~r2_hidden(k4_tarski(X7,X8),k5_relat_1(X0,X1)) | ~v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 2.69/0.97    inference(equality_resolution,[],[f51])).
% 2.69/0.97  
% 2.69/0.97  fof(f43,plain,(
% 2.69/0.97    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.69/0.97    inference(cnf_transformation,[],[f25])).
% 2.69/0.97  
% 2.69/0.97  fof(f41,plain,(
% 2.69/0.97    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.69/0.97    inference(cnf_transformation,[],[f25])).
% 2.69/0.97  
% 2.69/0.97  fof(f64,plain,(
% 2.69/0.97    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.69/0.97    inference(equality_resolution,[],[f41])).
% 2.69/0.97  
% 2.69/0.97  fof(f60,plain,(
% 2.69/0.97    k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0) | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7)),
% 2.69/0.97    inference(cnf_transformation,[],[f37])).
% 2.69/0.97  
% 2.69/0.97  cnf(c_21,negated_conjecture,
% 2.69/0.97      ( v1_relat_1(sK7) ),
% 2.69/0.97      inference(cnf_transformation,[],[f59]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1087,plain,
% 2.69/0.97      ( v1_relat_1(sK7) = iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_4,plain,
% 2.69/0.97      ( r1_tarski(X0,X0) ),
% 2.69/0.97      inference(cnf_transformation,[],[f63]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1101,plain,
% 2.69/0.97      ( r1_tarski(X0,X0) = iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_6,plain,
% 2.69/0.97      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 2.69/0.97      inference(cnf_transformation,[],[f45]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1100,plain,
% 2.69/0.97      ( k4_xboole_0(X0,X1) = k1_xboole_0
% 2.69/0.97      | r1_tarski(X0,X1) != iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1476,plain,
% 2.69/0.97      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1101,c_1100]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_9,plain,
% 2.69/0.97      ( r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0 ),
% 2.69/0.97      inference(cnf_transformation,[],[f48]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1098,plain,
% 2.69/0.97      ( k4_xboole_0(X0,X1) != X0 | r1_xboole_0(X0,X1) = iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1602,plain,
% 2.69/0.97      ( k1_xboole_0 != X0 | r1_xboole_0(X0,X0) = iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1476,c_1098]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1613,plain,
% 2.69/0.97      ( r1_xboole_0(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 2.69/0.97      inference(equality_resolution,[status(thm)],[c_1602]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_19,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0)
% 2.69/0.97      | ~ v1_relat_1(X0)
% 2.69/0.97      | k1_xboole_0 = X0 ),
% 2.69/0.97      inference(cnf_transformation,[],[f58]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1088,plain,
% 2.69/0.97      ( k1_xboole_0 = X0
% 2.69/0.97      | r2_hidden(k4_tarski(sK5(X0),sK6(X0)),X0) = iProver_top
% 2.69/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_16,plain,
% 2.69/0.97      ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
% 2.69/0.97      | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2)
% 2.69/0.97      | ~ v1_relat_1(X3)
% 2.69/0.97      | ~ v1_relat_1(X2)
% 2.69/0.97      | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
% 2.69/0.97      inference(cnf_transformation,[],[f67]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1091,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 2.69/0.97      | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2) = iProver_top
% 2.69/0.97      | v1_relat_1(X3) != iProver_top
% 2.69/0.97      | v1_relat_1(X2) != iProver_top
% 2.69/0.97      | v1_relat_1(k5_relat_1(X2,X3)) != iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_17,plain,
% 2.69/0.97      ( ~ v1_relat_1(X0)
% 2.69/0.97      | ~ v1_relat_1(X1)
% 2.69/0.97      | v1_relat_1(k5_relat_1(X1,X0)) ),
% 2.69/0.97      inference(cnf_transformation,[],[f56]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1090,plain,
% 2.69/0.97      ( v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(X1) != iProver_top
% 2.69/0.97      | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1173,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 2.69/0.97      | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X2) = iProver_top
% 2.69/0.97      | v1_relat_1(X3) != iProver_top
% 2.69/0.97      | v1_relat_1(X2) != iProver_top ),
% 2.69/0.97      inference(forward_subsumption_resolution,
% 2.69/0.97                [status(thm)],
% 2.69/0.97                [c_1091,c_1090]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_0,plain,
% 2.69/0.97      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,X2) | ~ r1_xboole_0(X2,X1) ),
% 2.69/0.97      inference(cnf_transformation,[],[f40]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1105,plain,
% 2.69/0.97      ( r2_hidden(X0,X1) != iProver_top
% 2.69/0.97      | r2_hidden(X0,X2) != iProver_top
% 2.69/0.97      | r1_xboole_0(X2,X1) != iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_2487,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 2.69/0.97      | r2_hidden(k4_tarski(X0,sK4(X2,X3,X0,X1)),X4) != iProver_top
% 2.69/0.97      | r1_xboole_0(X4,X2) != iProver_top
% 2.69/0.97      | v1_relat_1(X3) != iProver_top
% 2.69/0.97      | v1_relat_1(X2) != iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1173,c_1105]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_2866,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3)) != iProver_top
% 2.69/0.97      | r1_xboole_0(X2,X2) != iProver_top
% 2.69/0.97      | v1_relat_1(X3) != iProver_top
% 2.69/0.97      | v1_relat_1(X2) != iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1173,c_2487]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_2881,plain,
% 2.69/0.97      ( k5_relat_1(X0,X1) = k1_xboole_0
% 2.69/0.97      | r1_xboole_0(X0,X0) != iProver_top
% 2.69/0.97      | v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(X1) != iProver_top
% 2.69/0.97      | v1_relat_1(k5_relat_1(X0,X1)) != iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1088,c_2866]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3065,plain,
% 2.69/0.97      ( k5_relat_1(X0,X1) = k1_xboole_0
% 2.69/0.97      | r1_xboole_0(X0,X0) != iProver_top
% 2.69/0.97      | v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(X1) != iProver_top ),
% 2.69/0.97      inference(forward_subsumption_resolution,
% 2.69/0.97                [status(thm)],
% 2.69/0.97                [c_2881,c_1090]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3069,plain,
% 2.69/0.97      ( k5_relat_1(k1_xboole_0,X0) = k1_xboole_0
% 2.69/0.97      | v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(k1_xboole_0) != iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1613,c_3065]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_8,plain,
% 2.69/0.97      ( k1_setfam_1(k2_tarski(X0,k1_xboole_0)) = k1_xboole_0 ),
% 2.69/0.97      inference(cnf_transformation,[],[f61]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_18,plain,
% 2.69/0.97      ( ~ v1_relat_1(X0) | v1_relat_1(k1_setfam_1(k2_tarski(X0,X1))) ),
% 2.69/0.97      inference(cnf_transformation,[],[f62]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1089,plain,
% 2.69/0.97      ( v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(k1_setfam_1(k2_tarski(X0,X1))) = iProver_top ),
% 2.69/0.97      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1503,plain,
% 2.69/0.97      ( v1_relat_1(X0) != iProver_top
% 2.69/0.97      | v1_relat_1(k1_xboole_0) = iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_8,c_1089]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1542,plain,
% 2.69/0.97      ( v1_relat_1(k1_xboole_0) = iProver_top ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1087,c_1503]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3076,plain,
% 2.69/0.97      ( v1_relat_1(X0) != iProver_top
% 2.69/0.97      | k5_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.69/0.97      inference(global_propositional_subsumption,
% 2.69/0.97                [status(thm)],
% 2.69/0.97                [c_3069,c_1542]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3077,plain,
% 2.69/0.97      ( k5_relat_1(k1_xboole_0,X0) = k1_xboole_0
% 2.69/0.97      | v1_relat_1(X0) != iProver_top ),
% 2.69/0.97      inference(renaming,[status(thm)],[c_3076]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3084,plain,
% 2.69/0.97      ( k5_relat_1(k1_xboole_0,sK7) = k1_xboole_0 ),
% 2.69/0.97      inference(superposition,[status(thm)],[c_1087,c_3077]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_2566,plain,
% 2.69/0.97      ( ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),X0)
% 2.69/0.97      | ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
% 2.69/0.97      | ~ r1_xboole_0(X0,k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_0]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_2573,plain,
% 2.69/0.97      ( ~ r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
% 2.69/0.97      | ~ r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_2566]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_15,plain,
% 2.69/0.97      ( ~ r2_hidden(k4_tarski(X0,X1),k5_relat_1(X2,X3))
% 2.69/0.97      | r2_hidden(k4_tarski(sK4(X2,X3,X0,X1),X1),X3)
% 2.69/0.97      | ~ v1_relat_1(X3)
% 2.69/0.97      | ~ v1_relat_1(X2)
% 2.69/0.97      | ~ v1_relat_1(k5_relat_1(X2,X3)) ),
% 2.69/0.97      inference(cnf_transformation,[],[f66]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1705,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(sK4(sK7,k1_xboole_0,sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),sK6(k5_relat_1(sK7,k1_xboole_0))),k1_xboole_0)
% 2.69/0.97      | ~ r2_hidden(k4_tarski(sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),k5_relat_1(sK7,k1_xboole_0))
% 2.69/0.97      | ~ v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
% 2.69/0.97      | ~ v1_relat_1(sK7)
% 2.69/0.97      | ~ v1_relat_1(k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_15]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_623,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1598,plain,
% 2.69/0.97      ( k5_relat_1(k1_xboole_0,sK7) != X0
% 2.69/0.97      | k1_xboole_0 != X0
% 2.69/0.97      | k1_xboole_0 = k5_relat_1(k1_xboole_0,sK7) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_623]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1599,plain,
% 2.69/0.97      ( k5_relat_1(k1_xboole_0,sK7) != k1_xboole_0
% 2.69/0.97      | k1_xboole_0 = k5_relat_1(k1_xboole_0,sK7)
% 2.69/0.97      | k1_xboole_0 != k1_xboole_0 ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_1598]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1547,plain,
% 2.69/0.97      ( v1_relat_1(k1_xboole_0) ),
% 2.69/0.97      inference(predicate_to_equality_rev,[status(thm)],[c_1542]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1523,plain,
% 2.69/0.97      ( v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
% 2.69/0.97      | ~ v1_relat_1(sK7)
% 2.69/0.97      | ~ v1_relat_1(k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_17]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_1303,plain,
% 2.69/0.97      ( r2_hidden(k4_tarski(sK5(k5_relat_1(sK7,k1_xboole_0)),sK6(k5_relat_1(sK7,k1_xboole_0))),k5_relat_1(sK7,k1_xboole_0))
% 2.69/0.97      | ~ v1_relat_1(k5_relat_1(sK7,k1_xboole_0))
% 2.69/0.97      | k1_xboole_0 = k5_relat_1(sK7,k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_19]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_3,plain,
% 2.69/0.97      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 2.69/0.97      inference(cnf_transformation,[],[f43]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_68,plain,
% 2.69/0.97      ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
% 2.69/0.97      | k1_xboole_0 = k1_xboole_0 ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_3]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_5,plain,
% 2.69/0.97      ( r1_tarski(X0,X0) ),
% 2.69/0.97      inference(cnf_transformation,[],[f64]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_64,plain,
% 2.69/0.97      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_5]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_61,plain,
% 2.69/0.97      ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
% 2.69/0.97      | k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_6]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_54,plain,
% 2.69/0.97      ( r1_xboole_0(k1_xboole_0,k1_xboole_0)
% 2.69/0.97      | k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
% 2.69/0.97      inference(instantiation,[status(thm)],[c_9]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(c_20,negated_conjecture,
% 2.69/0.97      ( k1_xboole_0 != k5_relat_1(sK7,k1_xboole_0)
% 2.69/0.97      | k1_xboole_0 != k5_relat_1(k1_xboole_0,sK7) ),
% 2.69/0.97      inference(cnf_transformation,[],[f60]) ).
% 2.69/0.97  
% 2.69/0.97  cnf(contradiction,plain,
% 2.69/0.97      ( $false ),
% 2.69/0.97      inference(minisat,
% 2.69/0.97                [status(thm)],
% 2.69/0.97                [c_3084,c_2573,c_1705,c_1599,c_1547,c_1523,c_1303,c_68,
% 2.69/0.97                 c_64,c_61,c_54,c_20,c_21]) ).
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 2.69/0.97  
% 2.69/0.97  ------                               Statistics
% 2.69/0.97  
% 2.69/0.97  ------ General
% 2.69/0.97  
% 2.69/0.97  abstr_ref_over_cycles:                  0
% 2.69/0.97  abstr_ref_under_cycles:                 0
% 2.69/0.97  gc_basic_clause_elim:                   0
% 2.69/0.97  forced_gc_time:                         0
% 2.69/0.97  parsing_time:                           0.005
% 2.69/0.97  unif_index_cands_time:                  0.
% 2.69/0.97  unif_index_add_time:                    0.
% 2.69/0.97  orderings_time:                         0.
% 2.69/0.97  out_proof_time:                         0.01
% 2.69/0.97  total_time:                             0.137
% 2.69/0.97  num_of_symbols:                         49
% 2.69/0.97  num_of_terms:                           3005
% 2.69/0.97  
% 2.69/0.97  ------ Preprocessing
% 2.69/0.97  
% 2.69/0.97  num_of_splits:                          0
% 2.69/0.97  num_of_split_atoms:                     0
% 2.69/0.97  num_of_reused_defs:                     0
% 2.69/0.97  num_eq_ax_congr_red:                    72
% 2.69/0.97  num_of_sem_filtered_clauses:            1
% 2.69/0.97  num_of_subtypes:                        0
% 2.69/0.97  monotx_restored_types:                  0
% 2.69/0.97  sat_num_of_epr_types:                   0
% 2.69/0.97  sat_num_of_non_cyclic_types:            0
% 2.69/0.97  sat_guarded_non_collapsed_types:        0
% 2.69/0.97  num_pure_diseq_elim:                    0
% 2.69/0.97  simp_replaced_by:                       0
% 2.69/0.97  res_preprocessed:                       101
% 2.69/0.97  prep_upred:                             0
% 2.69/0.97  prep_unflattend:                        12
% 2.69/0.97  smt_new_axioms:                         0
% 2.69/0.97  pred_elim_cands:                        4
% 2.69/0.97  pred_elim:                              0
% 2.69/0.97  pred_elim_cl:                           0
% 2.69/0.97  pred_elim_cycles:                       2
% 2.69/0.97  merged_defs:                            16
% 2.69/0.97  merged_defs_ncl:                        0
% 2.69/0.97  bin_hyper_res:                          16
% 2.69/0.97  prep_cycles:                            4
% 2.69/0.97  pred_elim_time:                         0.002
% 2.69/0.97  splitting_time:                         0.
% 2.69/0.97  sem_filter_time:                        0.
% 2.69/0.97  monotx_time:                            0.001
% 2.69/0.97  subtype_inf_time:                       0.
% 2.69/0.97  
% 2.69/0.97  ------ Problem properties
% 2.69/0.97  
% 2.69/0.97  clauses:                                21
% 2.69/0.97  conjectures:                            2
% 2.69/0.97  epr:                                    4
% 2.69/0.97  horn:                                   16
% 2.69/0.97  ground:                                 2
% 2.69/0.97  unary:                                  3
% 2.69/0.97  binary:                                 8
% 2.69/0.97  lits:                                   66
% 2.69/0.97  lits_eq:                                12
% 2.69/0.97  fd_pure:                                0
% 2.69/0.97  fd_pseudo:                              0
% 2.69/0.97  fd_cond:                                1
% 2.69/0.97  fd_pseudo_cond:                         4
% 2.69/0.97  ac_symbols:                             0
% 2.69/0.97  
% 2.69/0.97  ------ Propositional Solver
% 2.69/0.97  
% 2.69/0.97  prop_solver_calls:                      28
% 2.69/0.97  prop_fast_solver_calls:                 762
% 2.69/0.97  smt_solver_calls:                       0
% 2.69/0.97  smt_fast_solver_calls:                  0
% 2.69/0.97  prop_num_of_clauses:                    936
% 2.69/0.97  prop_preprocess_simplified:             3814
% 2.69/0.97  prop_fo_subsumed:                       1
% 2.69/0.97  prop_solver_time:                       0.
% 2.69/0.97  smt_solver_time:                        0.
% 2.69/0.97  smt_fast_solver_time:                   0.
% 2.69/0.97  prop_fast_solver_time:                  0.
% 2.69/0.97  prop_unsat_core_time:                   0.
% 2.69/0.97  
% 2.69/0.97  ------ QBF
% 2.69/0.97  
% 2.69/0.97  qbf_q_res:                              0
% 2.69/0.97  qbf_num_tautologies:                    0
% 2.69/0.97  qbf_prep_cycles:                        0
% 2.69/0.97  
% 2.69/0.97  ------ BMC1
% 2.69/0.97  
% 2.69/0.97  bmc1_current_bound:                     -1
% 2.69/0.97  bmc1_last_solved_bound:                 -1
% 2.69/0.97  bmc1_unsat_core_size:                   -1
% 2.69/0.97  bmc1_unsat_core_parents_size:           -1
% 2.69/0.97  bmc1_merge_next_fun:                    0
% 2.69/0.97  bmc1_unsat_core_clauses_time:           0.
% 2.69/0.97  
% 2.69/0.97  ------ Instantiation
% 2.69/0.97  
% 2.69/0.97  inst_num_of_clauses:                    255
% 2.69/0.97  inst_num_in_passive:                    68
% 2.69/0.97  inst_num_in_active:                     150
% 2.69/0.97  inst_num_in_unprocessed:                37
% 2.69/0.97  inst_num_of_loops:                      220
% 2.69/0.97  inst_num_of_learning_restarts:          0
% 2.69/0.97  inst_num_moves_active_passive:          66
% 2.69/0.97  inst_lit_activity:                      0
% 2.69/0.97  inst_lit_activity_moves:                0
% 2.69/0.97  inst_num_tautologies:                   0
% 2.69/0.97  inst_num_prop_implied:                  0
% 2.69/0.97  inst_num_existing_simplified:           0
% 2.69/0.97  inst_num_eq_res_simplified:             0
% 2.69/0.97  inst_num_child_elim:                    0
% 2.69/0.97  inst_num_of_dismatching_blockings:      57
% 2.69/0.97  inst_num_of_non_proper_insts:           211
% 2.69/0.97  inst_num_of_duplicates:                 0
% 2.69/0.97  inst_inst_num_from_inst_to_res:         0
% 2.69/0.97  inst_dismatching_checking_time:         0.
% 2.69/0.97  
% 2.69/0.97  ------ Resolution
% 2.69/0.97  
% 2.69/0.97  res_num_of_clauses:                     0
% 2.69/0.97  res_num_in_passive:                     0
% 2.69/0.97  res_num_in_active:                      0
% 2.69/0.97  res_num_of_loops:                       105
% 2.69/0.97  res_forward_subset_subsumed:            10
% 2.69/0.97  res_backward_subset_subsumed:           0
% 2.69/0.97  res_forward_subsumed:                   0
% 2.69/0.97  res_backward_subsumed:                  0
% 2.69/0.97  res_forward_subsumption_resolution:     0
% 2.69/0.97  res_backward_subsumption_resolution:    0
% 2.69/0.97  res_clause_to_clause_subsumption:       189
% 2.69/0.97  res_orphan_elimination:                 0
% 2.69/0.97  res_tautology_del:                      44
% 2.69/0.97  res_num_eq_res_simplified:              0
% 2.69/0.97  res_num_sel_changes:                    0
% 2.69/0.97  res_moves_from_active_to_pass:          0
% 2.69/0.97  
% 2.69/0.97  ------ Superposition
% 2.69/0.97  
% 2.69/0.97  sup_time_total:                         0.
% 2.69/0.97  sup_time_generating:                    0.
% 2.69/0.97  sup_time_sim_full:                      0.
% 2.69/0.97  sup_time_sim_immed:                     0.
% 2.69/0.97  
% 2.69/0.97  sup_num_of_clauses:                     68
% 2.69/0.97  sup_num_in_active:                      43
% 2.69/0.97  sup_num_in_passive:                     25
% 2.69/0.97  sup_num_of_loops:                       43
% 2.69/0.97  sup_fw_superposition:                   48
% 2.69/0.97  sup_bw_superposition:                   20
% 2.69/0.97  sup_immediate_simplified:               3
% 2.69/0.97  sup_given_eliminated:                   1
% 2.69/0.97  comparisons_done:                       0
% 2.69/0.97  comparisons_avoided:                    0
% 2.69/0.97  
% 2.69/0.97  ------ Simplifications
% 2.69/0.97  
% 2.69/0.97  
% 2.69/0.97  sim_fw_subset_subsumed:                 1
% 2.69/0.97  sim_bw_subset_subsumed:                 0
% 2.69/0.97  sim_fw_subsumed:                        2
% 2.69/0.97  sim_bw_subsumed:                        1
% 2.69/0.97  sim_fw_subsumption_res:                 4
% 2.69/0.97  sim_bw_subsumption_res:                 0
% 2.69/0.97  sim_tautology_del:                      1
% 2.69/0.97  sim_eq_tautology_del:                   2
% 2.69/0.97  sim_eq_res_simp:                        0
% 2.69/0.97  sim_fw_demodulated:                     0
% 2.69/0.97  sim_bw_demodulated:                     0
% 2.69/0.97  sim_light_normalised:                   0
% 2.69/0.97  sim_joinable_taut:                      0
% 2.69/0.97  sim_joinable_simp:                      0
% 2.69/0.97  sim_ac_normalised:                      0
% 2.69/0.97  sim_smt_subsumption:                    0
% 2.69/0.97  
%------------------------------------------------------------------------------
