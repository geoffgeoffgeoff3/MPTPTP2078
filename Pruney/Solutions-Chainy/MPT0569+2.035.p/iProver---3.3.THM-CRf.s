%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:47:33 EST 2020

% Result     : Theorem 3.47s
% Output     : CNFRefutation 3.47s
% Verified   : 
% Statistics : Number of formulae       :  105 ( 207 expanded)
%              Number of clauses        :   53 (  61 expanded)
%              Number of leaves         :   17 (  47 expanded)
%              Depth                    :   15
%              Number of atoms          :  350 ( 847 expanded)
%              Number of equality atoms :   76 ( 182 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   10 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f8,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k10_relat_1(X1,X0)
      <=> r1_xboole_0(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ( k1_xboole_0 = k10_relat_1(X1,X0)
        <=> r1_xboole_0(k2_relat_1(X1),X0) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f18,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k10_relat_1(X1,X0)
      <~> r1_xboole_0(k2_relat_1(X1),X0) )
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f35,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 != k10_relat_1(X1,X0) )
      & ( r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 = k10_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f36,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 != k10_relat_1(X1,X0) )
      & ( r1_xboole_0(k2_relat_1(X1),X0)
        | k1_xboole_0 = k10_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f35])).

fof(f37,plain,
    ( ? [X0,X1] :
        ( ( ~ r1_xboole_0(k2_relat_1(X1),X0)
          | k1_xboole_0 != k10_relat_1(X1,X0) )
        & ( r1_xboole_0(k2_relat_1(X1),X0)
          | k1_xboole_0 = k10_relat_1(X1,X0) )
        & v1_relat_1(X1) )
   => ( ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
        | k1_xboole_0 != k10_relat_1(sK8,sK7) )
      & ( r1_xboole_0(k2_relat_1(sK8),sK7)
        | k1_xboole_0 = k10_relat_1(sK8,sK7) )
      & v1_relat_1(sK8) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
      | k1_xboole_0 != k10_relat_1(sK8,sK7) )
    & ( r1_xboole_0(k2_relat_1(sK8),sK7)
      | k1_xboole_0 = k10_relat_1(sK8,sK7) )
    & v1_relat_1(sK8) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8])],[f36,f37])).

fof(f57,plain,
    ( r1_xboole_0(k2_relat_1(sK8),sK7)
    | k1_xboole_0 = k10_relat_1(sK8,sK7) ),
    inference(cnf_transformation,[],[f38])).

fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f14,f23])).

fof(f44,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k10_relat_1(X2,X1))
      <=> ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(k4_tarski(X0,X3),X2)
            & r2_hidden(X3,k2_relat_1(X2)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(k4_tarski(X0,X3),X2)
              & r2_hidden(X3,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ? [X4] :
              ( r2_hidden(X4,X1)
              & r2_hidden(k4_tarski(X0,X4),X2)
              & r2_hidden(X4,k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(rectify,[],[f31])).

fof(f33,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X1)
          & r2_hidden(k4_tarski(X0,X4),X2)
          & r2_hidden(X4,k2_relat_1(X2)) )
     => ( r2_hidden(sK6(X0,X1,X2),X1)
        & r2_hidden(k4_tarski(X0,sK6(X0,X1,X2)),X2)
        & r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,k10_relat_1(X2,X1))
          | ! [X3] :
              ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(k4_tarski(X0,X3),X2)
              | ~ r2_hidden(X3,k2_relat_1(X2)) ) )
        & ( ( r2_hidden(sK6(X0,X1,X2),X1)
            & r2_hidden(k4_tarski(X0,sK6(X0,X1,X2)),X2)
            & r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2)) )
          | ~ r2_hidden(X0,k10_relat_1(X2,X1)) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f32,f33])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2))
      | ~ r2_hidden(X0,k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f56,plain,(
    v1_relat_1(sK8) ),
    inference(cnf_transformation,[],[f38])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK6(X0,X1,X2),X1)
      | ~ r2_hidden(X0,k10_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f34])).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
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

fof(f12,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f19,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f19])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k2_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X3,X2),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X6,X5),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X7,X5),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f25])).

fof(f29,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X7,X5),X0)
     => r2_hidden(k4_tarski(sK5(X0,X5),X5),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
     => r2_hidden(k4_tarski(sK4(X0,X1),X2),X0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,sK3(X0,X1)),X0)
          | ~ r2_hidden(sK3(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(X4,sK3(X0,X1)),X0)
          | r2_hidden(sK3(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,sK3(X0,X1)),X0)
            | ~ r2_hidden(sK3(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK4(X0,X1),sK3(X0,X1)),X0)
            | r2_hidden(sK3(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X6,X5),X0) )
            & ( r2_hidden(k4_tarski(sK5(X0,X5),X5),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f26,f29,f28,f27])).

fof(f46,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(k4_tarski(sK5(X0,X5),X5),X0)
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f60,plain,(
    ! [X0,X5] :
      ( r2_hidden(k4_tarski(sK5(X0,X5),X5),X0)
      | ~ r2_hidden(X5,k2_relat_1(X0)) ) ),
    inference(equality_resolution,[],[f46])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,k10_relat_1(X2,X1))
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(k4_tarski(X0,X3),X2)
      | ~ r2_hidden(X3,k2_relat_1(X2))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f47,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(k4_tarski(X6,X5),X0)
      | k2_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f59,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k2_relat_1(X0))
      | ~ r2_hidden(k4_tarski(X6,X5),X0) ) ),
    inference(equality_resolution,[],[f47])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f13,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f21,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f21])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f58,plain,
    ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
    | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
    inference(cnf_transformation,[],[f38])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1))
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_6,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_10255,plain,
    ( r1_xboole_0(k10_relat_1(sK8,sK7),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_904,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_9117,plain,
    ( sK5(sK8,sK0(k2_relat_1(sK8),sK7)) = sK5(sK8,sK0(k2_relat_1(sK8),sK7)) ),
    inference(instantiation,[status(thm)],[c_904])).

cnf(c_907,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2651,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | X1 != k10_relat_1(sK8,sK7)
    | X0 != sK5(sK8,sK0(k2_relat_1(sK8),sK7)) ),
    inference(instantiation,[status(thm)],[c_907])).

cnf(c_5850,plain,
    ( r2_hidden(X0,k1_xboole_0)
    | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | X0 != sK5(sK8,sK0(k2_relat_1(sK8),sK7))
    | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
    inference(instantiation,[status(thm)],[c_2651])).

cnf(c_6291,plain,
    ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k1_xboole_0)
    | sK5(sK8,sK0(k2_relat_1(sK8),sK7)) != sK5(sK8,sK0(k2_relat_1(sK8),sK7))
    | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
    inference(instantiation,[status(thm)],[c_5850])).

cnf(c_18,negated_conjecture,
    ( r1_xboole_0(k2_relat_1(sK8),sK7)
    | k1_xboole_0 = k10_relat_1(sK8,sK7) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1329,plain,
    ( k1_xboole_0 = k10_relat_1(sK8,sK7)
    | r1_xboole_0(k2_relat_1(sK8),sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_5,plain,
    ( r2_hidden(sK2(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1336,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK2(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_14,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(sK6(X0,X2,X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_19,negated_conjecture,
    ( v1_relat_1(sK8) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_306,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(sK6(X0,X2,X1),k2_relat_1(X1))
    | sK8 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_19])).

cnf(c_307,plain,
    ( ~ r2_hidden(X0,k10_relat_1(sK8,X1))
    | r2_hidden(sK6(X0,X1,sK8),k2_relat_1(sK8)) ),
    inference(unflattening,[status(thm)],[c_306])).

cnf(c_1326,plain,
    ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
    | r2_hidden(sK6(X0,X1,sK8),k2_relat_1(sK8)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_307])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(sK6(X0,X2,X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_330,plain,
    ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
    | r2_hidden(sK6(X0,X2,X1),X2)
    | sK8 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_19])).

cnf(c_331,plain,
    ( ~ r2_hidden(X0,k10_relat_1(sK8,X1))
    | r2_hidden(sK6(X0,X1,sK8),X1) ),
    inference(unflattening,[status(thm)],[c_330])).

cnf(c_1324,plain,
    ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
    | r2_hidden(sK6(X0,X1,sK8),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_331])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r1_xboole_0(X2,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1341,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) != iProver_top
    | r1_xboole_0(X2,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2497,plain,
    ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
    | r2_hidden(sK6(X0,X1,sK8),X2) != iProver_top
    | r1_xboole_0(X2,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1324,c_1341])).

cnf(c_3149,plain,
    ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
    | r1_xboole_0(k2_relat_1(sK8),X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1326,c_2497])).

cnf(c_3289,plain,
    ( k10_relat_1(sK8,X0) = k1_xboole_0
    | r1_xboole_0(k2_relat_1(sK8),X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1336,c_3149])).

cnf(c_5629,plain,
    ( k10_relat_1(sK8,sK7) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1329,c_3289])).

cnf(c_2684,plain,
    ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),X0)
    | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | ~ r1_xboole_0(k10_relat_1(sK8,sK7),X0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_5240,plain,
    ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k1_xboole_0)
    | ~ r1_xboole_0(k10_relat_1(sK8,sK7),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_2684])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(k4_tarski(sK5(X1,X0),X0),X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1463,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK8))
    | r2_hidden(k4_tarski(sK5(sK8,X0),X0),sK8) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1998,plain,
    ( r2_hidden(k4_tarski(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),sK0(k2_relat_1(sK8),sK7)),sK8)
    | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),k2_relat_1(sK8)) ),
    inference(instantiation,[status(thm)],[c_1463])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k10_relat_1(X3,X1))
    | ~ r2_hidden(X0,k2_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X2,X0),X3)
    | ~ v1_relat_1(X3) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_274,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k10_relat_1(X3,X1))
    | ~ r2_hidden(X0,k2_relat_1(X3))
    | ~ r2_hidden(k4_tarski(X2,X0),X3)
    | sK8 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_19])).

cnf(c_275,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k10_relat_1(sK8,X1))
    | ~ r2_hidden(X0,k2_relat_1(sK8))
    | ~ r2_hidden(k4_tarski(X2,X0),sK8) ),
    inference(unflattening,[status(thm)],[c_274])).

cnf(c_9,plain,
    ( r2_hidden(X0,k2_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_287,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,k10_relat_1(sK8,X1))
    | ~ r2_hidden(k4_tarski(X2,X0),sK8) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_275,c_9])).

cnf(c_1477,plain,
    ( r2_hidden(X0,k10_relat_1(sK8,sK7))
    | ~ r2_hidden(k4_tarski(X0,sK0(k2_relat_1(sK8),sK7)),sK8)
    | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7) ),
    inference(instantiation,[status(thm)],[c_287])).

cnf(c_1654,plain,
    ( r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
    | ~ r2_hidden(k4_tarski(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),sK0(k2_relat_1(sK8),sK7)),sK8)
    | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7) ),
    inference(instantiation,[status(thm)],[c_1477])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
    | ~ r1_xboole_0(X1,X2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1426,plain,
    ( ~ r2_hidden(sK1(k2_relat_1(sK8),sK7),k3_xboole_0(k2_relat_1(sK8),sK7))
    | ~ r1_xboole_0(k2_relat_1(sK8),sK7) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_17,negated_conjecture,
    ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
    | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_164,plain,
    ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
    | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
    inference(prop_impl,[status(thm)],[c_17])).

cnf(c_456,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | k10_relat_1(sK8,sK7) != k1_xboole_0
    | k2_relat_1(sK8) != X0
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_164])).

cnf(c_457,plain,
    ( r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7)
    | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_456])).

cnf(c_2,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_446,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | k10_relat_1(sK8,sK7) != k1_xboole_0
    | k2_relat_1(sK8) != X0
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_164])).

cnf(c_447,plain,
    ( r2_hidden(sK0(k2_relat_1(sK8),sK7),k2_relat_1(sK8))
    | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_446])).

cnf(c_4,plain,
    ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1))
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_436,plain,
    ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1))
    | k10_relat_1(sK8,sK7) != k1_xboole_0
    | k2_relat_1(sK8) != X0
    | sK7 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_164])).

cnf(c_437,plain,
    ( r2_hidden(sK1(k2_relat_1(sK8),sK7),k3_xboole_0(k2_relat_1(sK8),sK7))
    | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_436])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10255,c_9117,c_6291,c_5629,c_5240,c_1998,c_1654,c_1426,c_457,c_447,c_437,c_18])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:33:49 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.47/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.47/0.98  
% 3.47/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.47/0.98  
% 3.47/0.98  ------  iProver source info
% 3.47/0.98  
% 3.47/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.47/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.47/0.98  git: non_committed_changes: false
% 3.47/0.98  git: last_make_outside_of_git: false
% 3.47/0.98  
% 3.47/0.98  ------ 
% 3.47/0.98  
% 3.47/0.98  ------ Input Options
% 3.47/0.98  
% 3.47/0.98  --out_options                           all
% 3.47/0.98  --tptp_safe_out                         true
% 3.47/0.98  --problem_path                          ""
% 3.47/0.98  --include_path                          ""
% 3.47/0.98  --clausifier                            res/vclausify_rel
% 3.47/0.98  --clausifier_options                    ""
% 3.47/0.98  --stdin                                 false
% 3.47/0.98  --stats_out                             all
% 3.47/0.98  
% 3.47/0.98  ------ General Options
% 3.47/0.98  
% 3.47/0.98  --fof                                   false
% 3.47/0.98  --time_out_real                         305.
% 3.47/0.98  --time_out_virtual                      -1.
% 3.47/0.98  --symbol_type_check                     false
% 3.47/0.98  --clausify_out                          false
% 3.47/0.98  --sig_cnt_out                           false
% 3.47/0.98  --trig_cnt_out                          false
% 3.47/0.98  --trig_cnt_out_tolerance                1.
% 3.47/0.98  --trig_cnt_out_sk_spl                   false
% 3.47/0.98  --abstr_cl_out                          false
% 3.47/0.98  
% 3.47/0.98  ------ Global Options
% 3.47/0.98  
% 3.47/0.98  --schedule                              default
% 3.47/0.98  --add_important_lit                     false
% 3.47/0.98  --prop_solver_per_cl                    1000
% 3.47/0.98  --min_unsat_core                        false
% 3.47/0.98  --soft_assumptions                      false
% 3.47/0.98  --soft_lemma_size                       3
% 3.47/0.98  --prop_impl_unit_size                   0
% 3.47/0.98  --prop_impl_unit                        []
% 3.47/0.98  --share_sel_clauses                     true
% 3.47/0.98  --reset_solvers                         false
% 3.47/0.98  --bc_imp_inh                            [conj_cone]
% 3.47/0.98  --conj_cone_tolerance                   3.
% 3.47/0.98  --extra_neg_conj                        none
% 3.47/0.98  --large_theory_mode                     true
% 3.47/0.98  --prolific_symb_bound                   200
% 3.47/0.98  --lt_threshold                          2000
% 3.47/0.98  --clause_weak_htbl                      true
% 3.47/0.98  --gc_record_bc_elim                     false
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing Options
% 3.47/0.98  
% 3.47/0.98  --preprocessing_flag                    true
% 3.47/0.98  --time_out_prep_mult                    0.1
% 3.47/0.98  --splitting_mode                        input
% 3.47/0.98  --splitting_grd                         true
% 3.47/0.98  --splitting_cvd                         false
% 3.47/0.98  --splitting_cvd_svl                     false
% 3.47/0.98  --splitting_nvd                         32
% 3.47/0.98  --sub_typing                            true
% 3.47/0.98  --prep_gs_sim                           true
% 3.47/0.98  --prep_unflatten                        true
% 3.47/0.98  --prep_res_sim                          true
% 3.47/0.98  --prep_upred                            true
% 3.47/0.98  --prep_sem_filter                       exhaustive
% 3.47/0.98  --prep_sem_filter_out                   false
% 3.47/0.98  --pred_elim                             true
% 3.47/0.98  --res_sim_input                         true
% 3.47/0.98  --eq_ax_congr_red                       true
% 3.47/0.98  --pure_diseq_elim                       true
% 3.47/0.98  --brand_transform                       false
% 3.47/0.98  --non_eq_to_eq                          false
% 3.47/0.98  --prep_def_merge                        true
% 3.47/0.98  --prep_def_merge_prop_impl              false
% 3.47/0.98  --prep_def_merge_mbd                    true
% 3.47/0.98  --prep_def_merge_tr_red                 false
% 3.47/0.98  --prep_def_merge_tr_cl                  false
% 3.47/0.98  --smt_preprocessing                     true
% 3.47/0.98  --smt_ac_axioms                         fast
% 3.47/0.98  --preprocessed_out                      false
% 3.47/0.98  --preprocessed_stats                    false
% 3.47/0.98  
% 3.47/0.98  ------ Abstraction refinement Options
% 3.47/0.98  
% 3.47/0.98  --abstr_ref                             []
% 3.47/0.98  --abstr_ref_prep                        false
% 3.47/0.98  --abstr_ref_until_sat                   false
% 3.47/0.98  --abstr_ref_sig_restrict                funpre
% 3.47/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.47/0.98  --abstr_ref_under                       []
% 3.47/0.98  
% 3.47/0.98  ------ SAT Options
% 3.47/0.98  
% 3.47/0.98  --sat_mode                              false
% 3.47/0.98  --sat_fm_restart_options                ""
% 3.47/0.98  --sat_gr_def                            false
% 3.47/0.98  --sat_epr_types                         true
% 3.47/0.98  --sat_non_cyclic_types                  false
% 3.47/0.98  --sat_finite_models                     false
% 3.47/0.98  --sat_fm_lemmas                         false
% 3.47/0.98  --sat_fm_prep                           false
% 3.47/0.98  --sat_fm_uc_incr                        true
% 3.47/0.98  --sat_out_model                         small
% 3.47/0.98  --sat_out_clauses                       false
% 3.47/0.98  
% 3.47/0.98  ------ QBF Options
% 3.47/0.98  
% 3.47/0.98  --qbf_mode                              false
% 3.47/0.98  --qbf_elim_univ                         false
% 3.47/0.98  --qbf_dom_inst                          none
% 3.47/0.98  --qbf_dom_pre_inst                      false
% 3.47/0.98  --qbf_sk_in                             false
% 3.47/0.98  --qbf_pred_elim                         true
% 3.47/0.98  --qbf_split                             512
% 3.47/0.98  
% 3.47/0.98  ------ BMC1 Options
% 3.47/0.98  
% 3.47/0.98  --bmc1_incremental                      false
% 3.47/0.98  --bmc1_axioms                           reachable_all
% 3.47/0.98  --bmc1_min_bound                        0
% 3.47/0.98  --bmc1_max_bound                        -1
% 3.47/0.98  --bmc1_max_bound_default                -1
% 3.47/0.98  --bmc1_symbol_reachability              true
% 3.47/0.98  --bmc1_property_lemmas                  false
% 3.47/0.98  --bmc1_k_induction                      false
% 3.47/0.98  --bmc1_non_equiv_states                 false
% 3.47/0.98  --bmc1_deadlock                         false
% 3.47/0.98  --bmc1_ucm                              false
% 3.47/0.98  --bmc1_add_unsat_core                   none
% 3.47/0.98  --bmc1_unsat_core_children              false
% 3.47/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.47/0.98  --bmc1_out_stat                         full
% 3.47/0.98  --bmc1_ground_init                      false
% 3.47/0.98  --bmc1_pre_inst_next_state              false
% 3.47/0.98  --bmc1_pre_inst_state                   false
% 3.47/0.98  --bmc1_pre_inst_reach_state             false
% 3.47/0.98  --bmc1_out_unsat_core                   false
% 3.47/0.98  --bmc1_aig_witness_out                  false
% 3.47/0.98  --bmc1_verbose                          false
% 3.47/0.98  --bmc1_dump_clauses_tptp                false
% 3.47/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.47/0.98  --bmc1_dump_file                        -
% 3.47/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.47/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.47/0.98  --bmc1_ucm_extend_mode                  1
% 3.47/0.98  --bmc1_ucm_init_mode                    2
% 3.47/0.98  --bmc1_ucm_cone_mode                    none
% 3.47/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.47/0.98  --bmc1_ucm_relax_model                  4
% 3.47/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.47/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.47/0.98  --bmc1_ucm_layered_model                none
% 3.47/0.98  --bmc1_ucm_max_lemma_size               10
% 3.47/0.98  
% 3.47/0.98  ------ AIG Options
% 3.47/0.98  
% 3.47/0.98  --aig_mode                              false
% 3.47/0.98  
% 3.47/0.98  ------ Instantiation Options
% 3.47/0.98  
% 3.47/0.98  --instantiation_flag                    true
% 3.47/0.98  --inst_sos_flag                         true
% 3.47/0.98  --inst_sos_phase                        true
% 3.47/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.47/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.47/0.98  --inst_lit_sel_side                     num_symb
% 3.47/0.98  --inst_solver_per_active                1400
% 3.47/0.98  --inst_solver_calls_frac                1.
% 3.47/0.98  --inst_passive_queue_type               priority_queues
% 3.47/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.47/0.98  --inst_passive_queues_freq              [25;2]
% 3.47/0.98  --inst_dismatching                      true
% 3.47/0.98  --inst_eager_unprocessed_to_passive     true
% 3.47/0.98  --inst_prop_sim_given                   true
% 3.47/0.98  --inst_prop_sim_new                     false
% 3.47/0.98  --inst_subs_new                         false
% 3.47/0.98  --inst_eq_res_simp                      false
% 3.47/0.98  --inst_subs_given                       false
% 3.47/0.98  --inst_orphan_elimination               true
% 3.47/0.98  --inst_learning_loop_flag               true
% 3.47/0.98  --inst_learning_start                   3000
% 3.47/0.98  --inst_learning_factor                  2
% 3.47/0.98  --inst_start_prop_sim_after_learn       3
% 3.47/0.98  --inst_sel_renew                        solver
% 3.47/0.98  --inst_lit_activity_flag                true
% 3.47/0.98  --inst_restr_to_given                   false
% 3.47/0.98  --inst_activity_threshold               500
% 3.47/0.98  --inst_out_proof                        true
% 3.47/0.98  
% 3.47/0.98  ------ Resolution Options
% 3.47/0.98  
% 3.47/0.98  --resolution_flag                       true
% 3.47/0.98  --res_lit_sel                           adaptive
% 3.47/0.98  --res_lit_sel_side                      none
% 3.47/0.98  --res_ordering                          kbo
% 3.47/0.98  --res_to_prop_solver                    active
% 3.47/0.98  --res_prop_simpl_new                    false
% 3.47/0.98  --res_prop_simpl_given                  true
% 3.47/0.98  --res_passive_queue_type                priority_queues
% 3.47/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.47/0.98  --res_passive_queues_freq               [15;5]
% 3.47/0.98  --res_forward_subs                      full
% 3.47/0.98  --res_backward_subs                     full
% 3.47/0.98  --res_forward_subs_resolution           true
% 3.47/0.98  --res_backward_subs_resolution          true
% 3.47/0.98  --res_orphan_elimination                true
% 3.47/0.98  --res_time_limit                        2.
% 3.47/0.98  --res_out_proof                         true
% 3.47/0.98  
% 3.47/0.98  ------ Superposition Options
% 3.47/0.98  
% 3.47/0.98  --superposition_flag                    true
% 3.47/0.98  --sup_passive_queue_type                priority_queues
% 3.47/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.47/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.47/0.98  --demod_completeness_check              fast
% 3.47/0.98  --demod_use_ground                      true
% 3.47/0.98  --sup_to_prop_solver                    passive
% 3.47/0.98  --sup_prop_simpl_new                    true
% 3.47/0.98  --sup_prop_simpl_given                  true
% 3.47/0.98  --sup_fun_splitting                     true
% 3.47/0.98  --sup_smt_interval                      50000
% 3.47/0.98  
% 3.47/0.98  ------ Superposition Simplification Setup
% 3.47/0.98  
% 3.47/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.47/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.47/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.47/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.47/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.47/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.47/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.47/0.98  --sup_immed_triv                        [TrivRules]
% 3.47/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_immed_bw_main                     []
% 3.47/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.47/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.47/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_input_bw                          []
% 3.47/0.98  
% 3.47/0.98  ------ Combination Options
% 3.47/0.98  
% 3.47/0.98  --comb_res_mult                         3
% 3.47/0.98  --comb_sup_mult                         2
% 3.47/0.98  --comb_inst_mult                        10
% 3.47/0.98  
% 3.47/0.98  ------ Debug Options
% 3.47/0.98  
% 3.47/0.98  --dbg_backtrace                         false
% 3.47/0.98  --dbg_dump_prop_clauses                 false
% 3.47/0.98  --dbg_dump_prop_clauses_file            -
% 3.47/0.98  --dbg_out_stat                          false
% 3.47/0.98  ------ Parsing...
% 3.47/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.47/0.98  ------ Proving...
% 3.47/0.98  ------ Problem Properties 
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  clauses                                 18
% 3.47/0.98  conjectures                             2
% 3.47/0.98  EPR                                     2
% 3.47/0.98  Horn                                    12
% 3.47/0.98  unary                                   1
% 3.47/0.98  binary                                  13
% 3.47/0.98  lits                                    39
% 3.47/0.98  lits eq                                 5
% 3.47/0.98  fd_pure                                 0
% 3.47/0.98  fd_pseudo                               0
% 3.47/0.98  fd_cond                                 1
% 3.47/0.98  fd_pseudo_cond                          2
% 3.47/0.98  AC symbols                              0
% 3.47/0.98  
% 3.47/0.98  ------ Schedule dynamic 5 is on 
% 3.47/0.98  
% 3.47/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  ------ 
% 3.47/0.98  Current options:
% 3.47/0.98  ------ 
% 3.47/0.98  
% 3.47/0.98  ------ Input Options
% 3.47/0.98  
% 3.47/0.98  --out_options                           all
% 3.47/0.98  --tptp_safe_out                         true
% 3.47/0.98  --problem_path                          ""
% 3.47/0.98  --include_path                          ""
% 3.47/0.98  --clausifier                            res/vclausify_rel
% 3.47/0.98  --clausifier_options                    ""
% 3.47/0.98  --stdin                                 false
% 3.47/0.98  --stats_out                             all
% 3.47/0.98  
% 3.47/0.98  ------ General Options
% 3.47/0.98  
% 3.47/0.98  --fof                                   false
% 3.47/0.98  --time_out_real                         305.
% 3.47/0.98  --time_out_virtual                      -1.
% 3.47/0.98  --symbol_type_check                     false
% 3.47/0.98  --clausify_out                          false
% 3.47/0.98  --sig_cnt_out                           false
% 3.47/0.98  --trig_cnt_out                          false
% 3.47/0.98  --trig_cnt_out_tolerance                1.
% 3.47/0.98  --trig_cnt_out_sk_spl                   false
% 3.47/0.98  --abstr_cl_out                          false
% 3.47/0.98  
% 3.47/0.98  ------ Global Options
% 3.47/0.98  
% 3.47/0.98  --schedule                              default
% 3.47/0.98  --add_important_lit                     false
% 3.47/0.98  --prop_solver_per_cl                    1000
% 3.47/0.98  --min_unsat_core                        false
% 3.47/0.98  --soft_assumptions                      false
% 3.47/0.98  --soft_lemma_size                       3
% 3.47/0.98  --prop_impl_unit_size                   0
% 3.47/0.98  --prop_impl_unit                        []
% 3.47/0.98  --share_sel_clauses                     true
% 3.47/0.98  --reset_solvers                         false
% 3.47/0.98  --bc_imp_inh                            [conj_cone]
% 3.47/0.98  --conj_cone_tolerance                   3.
% 3.47/0.98  --extra_neg_conj                        none
% 3.47/0.98  --large_theory_mode                     true
% 3.47/0.98  --prolific_symb_bound                   200
% 3.47/0.98  --lt_threshold                          2000
% 3.47/0.98  --clause_weak_htbl                      true
% 3.47/0.98  --gc_record_bc_elim                     false
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing Options
% 3.47/0.98  
% 3.47/0.98  --preprocessing_flag                    true
% 3.47/0.98  --time_out_prep_mult                    0.1
% 3.47/0.98  --splitting_mode                        input
% 3.47/0.98  --splitting_grd                         true
% 3.47/0.98  --splitting_cvd                         false
% 3.47/0.98  --splitting_cvd_svl                     false
% 3.47/0.98  --splitting_nvd                         32
% 3.47/0.98  --sub_typing                            true
% 3.47/0.98  --prep_gs_sim                           true
% 3.47/0.98  --prep_unflatten                        true
% 3.47/0.98  --prep_res_sim                          true
% 3.47/0.98  --prep_upred                            true
% 3.47/0.98  --prep_sem_filter                       exhaustive
% 3.47/0.98  --prep_sem_filter_out                   false
% 3.47/0.98  --pred_elim                             true
% 3.47/0.98  --res_sim_input                         true
% 3.47/0.98  --eq_ax_congr_red                       true
% 3.47/0.98  --pure_diseq_elim                       true
% 3.47/0.98  --brand_transform                       false
% 3.47/0.98  --non_eq_to_eq                          false
% 3.47/0.98  --prep_def_merge                        true
% 3.47/0.98  --prep_def_merge_prop_impl              false
% 3.47/0.98  --prep_def_merge_mbd                    true
% 3.47/0.98  --prep_def_merge_tr_red                 false
% 3.47/0.98  --prep_def_merge_tr_cl                  false
% 3.47/0.98  --smt_preprocessing                     true
% 3.47/0.98  --smt_ac_axioms                         fast
% 3.47/0.98  --preprocessed_out                      false
% 3.47/0.98  --preprocessed_stats                    false
% 3.47/0.98  
% 3.47/0.98  ------ Abstraction refinement Options
% 3.47/0.98  
% 3.47/0.98  --abstr_ref                             []
% 3.47/0.98  --abstr_ref_prep                        false
% 3.47/0.98  --abstr_ref_until_sat                   false
% 3.47/0.98  --abstr_ref_sig_restrict                funpre
% 3.47/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.47/0.98  --abstr_ref_under                       []
% 3.47/0.98  
% 3.47/0.98  ------ SAT Options
% 3.47/0.98  
% 3.47/0.98  --sat_mode                              false
% 3.47/0.98  --sat_fm_restart_options                ""
% 3.47/0.98  --sat_gr_def                            false
% 3.47/0.98  --sat_epr_types                         true
% 3.47/0.98  --sat_non_cyclic_types                  false
% 3.47/0.98  --sat_finite_models                     false
% 3.47/0.98  --sat_fm_lemmas                         false
% 3.47/0.98  --sat_fm_prep                           false
% 3.47/0.98  --sat_fm_uc_incr                        true
% 3.47/0.98  --sat_out_model                         small
% 3.47/0.98  --sat_out_clauses                       false
% 3.47/0.98  
% 3.47/0.98  ------ QBF Options
% 3.47/0.98  
% 3.47/0.98  --qbf_mode                              false
% 3.47/0.98  --qbf_elim_univ                         false
% 3.47/0.98  --qbf_dom_inst                          none
% 3.47/0.98  --qbf_dom_pre_inst                      false
% 3.47/0.98  --qbf_sk_in                             false
% 3.47/0.98  --qbf_pred_elim                         true
% 3.47/0.98  --qbf_split                             512
% 3.47/0.98  
% 3.47/0.98  ------ BMC1 Options
% 3.47/0.98  
% 3.47/0.98  --bmc1_incremental                      false
% 3.47/0.98  --bmc1_axioms                           reachable_all
% 3.47/0.98  --bmc1_min_bound                        0
% 3.47/0.98  --bmc1_max_bound                        -1
% 3.47/0.98  --bmc1_max_bound_default                -1
% 3.47/0.98  --bmc1_symbol_reachability              true
% 3.47/0.98  --bmc1_property_lemmas                  false
% 3.47/0.98  --bmc1_k_induction                      false
% 3.47/0.98  --bmc1_non_equiv_states                 false
% 3.47/0.98  --bmc1_deadlock                         false
% 3.47/0.98  --bmc1_ucm                              false
% 3.47/0.98  --bmc1_add_unsat_core                   none
% 3.47/0.98  --bmc1_unsat_core_children              false
% 3.47/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.47/0.98  --bmc1_out_stat                         full
% 3.47/0.98  --bmc1_ground_init                      false
% 3.47/0.98  --bmc1_pre_inst_next_state              false
% 3.47/0.98  --bmc1_pre_inst_state                   false
% 3.47/0.98  --bmc1_pre_inst_reach_state             false
% 3.47/0.98  --bmc1_out_unsat_core                   false
% 3.47/0.98  --bmc1_aig_witness_out                  false
% 3.47/0.98  --bmc1_verbose                          false
% 3.47/0.98  --bmc1_dump_clauses_tptp                false
% 3.47/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.47/0.98  --bmc1_dump_file                        -
% 3.47/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.47/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.47/0.98  --bmc1_ucm_extend_mode                  1
% 3.47/0.98  --bmc1_ucm_init_mode                    2
% 3.47/0.98  --bmc1_ucm_cone_mode                    none
% 3.47/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.47/0.98  --bmc1_ucm_relax_model                  4
% 3.47/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.47/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.47/0.98  --bmc1_ucm_layered_model                none
% 3.47/0.98  --bmc1_ucm_max_lemma_size               10
% 3.47/0.98  
% 3.47/0.98  ------ AIG Options
% 3.47/0.98  
% 3.47/0.98  --aig_mode                              false
% 3.47/0.98  
% 3.47/0.98  ------ Instantiation Options
% 3.47/0.98  
% 3.47/0.98  --instantiation_flag                    true
% 3.47/0.98  --inst_sos_flag                         true
% 3.47/0.98  --inst_sos_phase                        true
% 3.47/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.47/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.47/0.98  --inst_lit_sel_side                     none
% 3.47/0.98  --inst_solver_per_active                1400
% 3.47/0.98  --inst_solver_calls_frac                1.
% 3.47/0.98  --inst_passive_queue_type               priority_queues
% 3.47/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.47/0.98  --inst_passive_queues_freq              [25;2]
% 3.47/0.98  --inst_dismatching                      true
% 3.47/0.98  --inst_eager_unprocessed_to_passive     true
% 3.47/0.98  --inst_prop_sim_given                   true
% 3.47/0.98  --inst_prop_sim_new                     false
% 3.47/0.98  --inst_subs_new                         false
% 3.47/0.98  --inst_eq_res_simp                      false
% 3.47/0.98  --inst_subs_given                       false
% 3.47/0.98  --inst_orphan_elimination               true
% 3.47/0.98  --inst_learning_loop_flag               true
% 3.47/0.98  --inst_learning_start                   3000
% 3.47/0.98  --inst_learning_factor                  2
% 3.47/0.98  --inst_start_prop_sim_after_learn       3
% 3.47/0.98  --inst_sel_renew                        solver
% 3.47/0.98  --inst_lit_activity_flag                true
% 3.47/0.98  --inst_restr_to_given                   false
% 3.47/0.98  --inst_activity_threshold               500
% 3.47/0.98  --inst_out_proof                        true
% 3.47/0.98  
% 3.47/0.98  ------ Resolution Options
% 3.47/0.98  
% 3.47/0.98  --resolution_flag                       false
% 3.47/0.98  --res_lit_sel                           adaptive
% 3.47/0.98  --res_lit_sel_side                      none
% 3.47/0.98  --res_ordering                          kbo
% 3.47/0.98  --res_to_prop_solver                    active
% 3.47/0.98  --res_prop_simpl_new                    false
% 3.47/0.98  --res_prop_simpl_given                  true
% 3.47/0.98  --res_passive_queue_type                priority_queues
% 3.47/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.47/0.98  --res_passive_queues_freq               [15;5]
% 3.47/0.98  --res_forward_subs                      full
% 3.47/0.98  --res_backward_subs                     full
% 3.47/0.98  --res_forward_subs_resolution           true
% 3.47/0.98  --res_backward_subs_resolution          true
% 3.47/0.98  --res_orphan_elimination                true
% 3.47/0.98  --res_time_limit                        2.
% 3.47/0.98  --res_out_proof                         true
% 3.47/0.98  
% 3.47/0.98  ------ Superposition Options
% 3.47/0.98  
% 3.47/0.98  --superposition_flag                    true
% 3.47/0.98  --sup_passive_queue_type                priority_queues
% 3.47/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.47/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.47/0.98  --demod_completeness_check              fast
% 3.47/0.98  --demod_use_ground                      true
% 3.47/0.98  --sup_to_prop_solver                    passive
% 3.47/0.98  --sup_prop_simpl_new                    true
% 3.47/0.98  --sup_prop_simpl_given                  true
% 3.47/0.98  --sup_fun_splitting                     true
% 3.47/0.98  --sup_smt_interval                      50000
% 3.47/0.98  
% 3.47/0.98  ------ Superposition Simplification Setup
% 3.47/0.98  
% 3.47/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.47/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.47/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.47/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.47/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.47/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.47/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.47/0.98  --sup_immed_triv                        [TrivRules]
% 3.47/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_immed_bw_main                     []
% 3.47/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.47/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.47/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.47/0.98  --sup_input_bw                          []
% 3.47/0.98  
% 3.47/0.98  ------ Combination Options
% 3.47/0.98  
% 3.47/0.98  --comb_res_mult                         3
% 3.47/0.98  --comb_sup_mult                         2
% 3.47/0.98  --comb_inst_mult                        10
% 3.47/0.98  
% 3.47/0.98  ------ Debug Options
% 3.47/0.98  
% 3.47/0.98  --dbg_backtrace                         false
% 3.47/0.98  --dbg_dump_prop_clauses                 false
% 3.47/0.98  --dbg_dump_prop_clauses_file            -
% 3.47/0.98  --dbg_out_stat                          false
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  ------ Proving...
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  % SZS status Theorem for theBenchmark.p
% 3.47/0.98  
% 3.47/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.47/0.98  
% 3.47/0.98  fof(f4,axiom,(
% 3.47/0.98    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f45,plain,(
% 3.47/0.98    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f4])).
% 3.47/0.98  
% 3.47/0.98  fof(f8,conjecture,(
% 3.47/0.98    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)))),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f9,negated_conjecture,(
% 3.47/0.98    ~! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k10_relat_1(X1,X0) <=> r1_xboole_0(k2_relat_1(X1),X0)))),
% 3.47/0.98    inference(negated_conjecture,[],[f8])).
% 3.47/0.98  
% 3.47/0.98  fof(f18,plain,(
% 3.47/0.98    ? [X0,X1] : ((k1_xboole_0 = k10_relat_1(X1,X0) <~> r1_xboole_0(k2_relat_1(X1),X0)) & v1_relat_1(X1))),
% 3.47/0.98    inference(ennf_transformation,[],[f9])).
% 3.47/0.98  
% 3.47/0.98  fof(f35,plain,(
% 3.47/0.98    ? [X0,X1] : (((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0))) & v1_relat_1(X1))),
% 3.47/0.98    inference(nnf_transformation,[],[f18])).
% 3.47/0.98  
% 3.47/0.98  fof(f36,plain,(
% 3.47/0.98    ? [X0,X1] : ((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0)) & v1_relat_1(X1))),
% 3.47/0.98    inference(flattening,[],[f35])).
% 3.47/0.98  
% 3.47/0.98  fof(f37,plain,(
% 3.47/0.98    ? [X0,X1] : ((~r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 != k10_relat_1(X1,X0)) & (r1_xboole_0(k2_relat_1(X1),X0) | k1_xboole_0 = k10_relat_1(X1,X0)) & v1_relat_1(X1)) => ((~r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 != k10_relat_1(sK8,sK7)) & (r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 = k10_relat_1(sK8,sK7)) & v1_relat_1(sK8))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f38,plain,(
% 3.47/0.98    (~r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 != k10_relat_1(sK8,sK7)) & (r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 = k10_relat_1(sK8,sK7)) & v1_relat_1(sK8)),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK7,sK8])],[f36,f37])).
% 3.47/0.98  
% 3.47/0.98  fof(f57,plain,(
% 3.47/0.98    r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 = k10_relat_1(sK8,sK7)),
% 3.47/0.98    inference(cnf_transformation,[],[f38])).
% 3.47/0.98  
% 3.47/0.98  fof(f3,axiom,(
% 3.47/0.98    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f14,plain,(
% 3.47/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 3.47/0.98    inference(ennf_transformation,[],[f3])).
% 3.47/0.98  
% 3.47/0.98  fof(f23,plain,(
% 3.47/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f24,plain,(
% 3.47/0.98    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f14,f23])).
% 3.47/0.98  
% 3.47/0.98  fof(f44,plain,(
% 3.47/0.98    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 3.47/0.98    inference(cnf_transformation,[],[f24])).
% 3.47/0.98  
% 3.47/0.98  fof(f6,axiom,(
% 3.47/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))))),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f15,plain,(
% 3.47/0.98    ! [X0,X1,X2] : ((r2_hidden(X0,k10_relat_1(X2,X1)) <=> ? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2)))) | ~v1_relat_1(X2))),
% 3.47/0.98    inference(ennf_transformation,[],[f6])).
% 3.47/0.98  
% 3.47/0.98  fof(f31,plain,(
% 3.47/0.98    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(k4_tarski(X0,X3),X2) & r2_hidden(X3,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.47/0.98    inference(nnf_transformation,[],[f15])).
% 3.47/0.98  
% 3.47/0.98  fof(f32,plain,(
% 3.47/0.98    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.47/0.98    inference(rectify,[],[f31])).
% 3.47/0.98  
% 3.47/0.98  fof(f33,plain,(
% 3.47/0.98    ! [X2,X1,X0] : (? [X4] : (r2_hidden(X4,X1) & r2_hidden(k4_tarski(X0,X4),X2) & r2_hidden(X4,k2_relat_1(X2))) => (r2_hidden(sK6(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK6(X0,X1,X2)),X2) & r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2))))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f34,plain,(
% 3.47/0.98    ! [X0,X1,X2] : (((r2_hidden(X0,k10_relat_1(X2,X1)) | ! [X3] : (~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)))) & ((r2_hidden(sK6(X0,X1,X2),X1) & r2_hidden(k4_tarski(X0,sK6(X0,X1,X2)),X2) & r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2))) | ~r2_hidden(X0,k10_relat_1(X2,X1)))) | ~v1_relat_1(X2))),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK6])],[f32,f33])).
% 3.47/0.98  
% 3.47/0.98  fof(f50,plain,(
% 3.47/0.98    ( ! [X2,X0,X1] : (r2_hidden(sK6(X0,X1,X2),k2_relat_1(X2)) | ~r2_hidden(X0,k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f34])).
% 3.47/0.98  
% 3.47/0.98  fof(f56,plain,(
% 3.47/0.98    v1_relat_1(sK8)),
% 3.47/0.98    inference(cnf_transformation,[],[f38])).
% 3.47/0.98  
% 3.47/0.98  fof(f52,plain,(
% 3.47/0.98    ( ! [X2,X0,X1] : (r2_hidden(sK6(X0,X1,X2),X1) | ~r2_hidden(X0,k10_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f34])).
% 3.47/0.98  
% 3.47/0.98  fof(f1,axiom,(
% 3.47/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f10,plain,(
% 3.47/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(rectify,[],[f1])).
% 3.47/0.98  
% 3.47/0.98  fof(f12,plain,(
% 3.47/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(ennf_transformation,[],[f10])).
% 3.47/0.98  
% 3.47/0.98  fof(f19,plain,(
% 3.47/0.98    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f20,plain,(
% 3.47/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f19])).
% 3.47/0.98  
% 3.47/0.98  fof(f41,plain,(
% 3.47/0.98    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f20])).
% 3.47/0.98  
% 3.47/0.98  fof(f5,axiom,(
% 3.47/0.98    ! [X0,X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)))),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f25,plain,(
% 3.47/0.98    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X3] : r2_hidden(k4_tarski(X3,X2),X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0)) & (? [X3] : r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1))),
% 3.47/0.98    inference(nnf_transformation,[],[f5])).
% 3.47/0.98  
% 3.47/0.98  fof(f26,plain,(
% 3.47/0.98    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X6,X5),X0)) & (? [X7] : r2_hidden(k4_tarski(X7,X5),X0) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1))),
% 3.47/0.98    inference(rectify,[],[f25])).
% 3.47/0.98  
% 3.47/0.98  fof(f29,plain,(
% 3.47/0.98    ! [X5,X0] : (? [X7] : r2_hidden(k4_tarski(X7,X5),X0) => r2_hidden(k4_tarski(sK5(X0,X5),X5),X0))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f28,plain,(
% 3.47/0.98    ( ! [X2] : (! [X1,X0] : (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) => r2_hidden(k4_tarski(sK4(X0,X1),X2),X0))) )),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f27,plain,(
% 3.47/0.98    ! [X1,X0] : (? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) | r2_hidden(X2,X1))) => ((! [X3] : ~r2_hidden(k4_tarski(X3,sK3(X0,X1)),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (? [X4] : r2_hidden(k4_tarski(X4,sK3(X0,X1)),X0) | r2_hidden(sK3(X0,X1),X1))))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f30,plain,(
% 3.47/0.98    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : ~r2_hidden(k4_tarski(X3,sK3(X0,X1)),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r2_hidden(k4_tarski(sK4(X0,X1),sK3(X0,X1)),X0) | r2_hidden(sK3(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X6,X5),X0)) & (r2_hidden(k4_tarski(sK5(X0,X5),X5),X0) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1))),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f26,f29,f28,f27])).
% 3.47/0.98  
% 3.47/0.98  fof(f46,plain,(
% 3.47/0.98    ( ! [X0,X5,X1] : (r2_hidden(k4_tarski(sK5(X0,X5),X5),X0) | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1) )),
% 3.47/0.98    inference(cnf_transformation,[],[f30])).
% 3.47/0.98  
% 3.47/0.98  fof(f60,plain,(
% 3.47/0.98    ( ! [X0,X5] : (r2_hidden(k4_tarski(sK5(X0,X5),X5),X0) | ~r2_hidden(X5,k2_relat_1(X0))) )),
% 3.47/0.98    inference(equality_resolution,[],[f46])).
% 3.47/0.98  
% 3.47/0.98  fof(f53,plain,(
% 3.47/0.98    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,k10_relat_1(X2,X1)) | ~r2_hidden(X3,X1) | ~r2_hidden(k4_tarski(X0,X3),X2) | ~r2_hidden(X3,k2_relat_1(X2)) | ~v1_relat_1(X2)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f34])).
% 3.47/0.98  
% 3.47/0.98  fof(f47,plain,(
% 3.47/0.98    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X6,X5),X0) | k2_relat_1(X0) != X1) )),
% 3.47/0.98    inference(cnf_transformation,[],[f30])).
% 3.47/0.98  
% 3.47/0.98  fof(f59,plain,(
% 3.47/0.98    ( ! [X6,X0,X5] : (r2_hidden(X5,k2_relat_1(X0)) | ~r2_hidden(k4_tarski(X6,X5),X0)) )),
% 3.47/0.98    inference(equality_resolution,[],[f47])).
% 3.47/0.98  
% 3.47/0.98  fof(f2,axiom,(
% 3.47/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 3.47/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.47/0.98  
% 3.47/0.98  fof(f11,plain,(
% 3.47/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(rectify,[],[f2])).
% 3.47/0.98  
% 3.47/0.98  fof(f13,plain,(
% 3.47/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(ennf_transformation,[],[f11])).
% 3.47/0.98  
% 3.47/0.98  fof(f21,plain,(
% 3.47/0.98    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1)))),
% 3.47/0.98    introduced(choice_axiom,[])).
% 3.47/0.98  
% 3.47/0.98  fof(f22,plain,(
% 3.47/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 3.47/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f13,f21])).
% 3.47/0.98  
% 3.47/0.98  fof(f43,plain,(
% 3.47/0.98    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 3.47/0.98    inference(cnf_transformation,[],[f22])).
% 3.47/0.98  
% 3.47/0.98  fof(f40,plain,(
% 3.47/0.98    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f20])).
% 3.47/0.98  
% 3.47/0.98  fof(f58,plain,(
% 3.47/0.98    ~r1_xboole_0(k2_relat_1(sK8),sK7) | k1_xboole_0 != k10_relat_1(sK8,sK7)),
% 3.47/0.98    inference(cnf_transformation,[],[f38])).
% 3.47/0.98  
% 3.47/0.98  fof(f39,plain,(
% 3.47/0.98    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f20])).
% 3.47/0.98  
% 3.47/0.98  fof(f42,plain,(
% 3.47/0.98    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)) )),
% 3.47/0.98    inference(cnf_transformation,[],[f22])).
% 3.47/0.98  
% 3.47/0.98  cnf(c_6,plain,
% 3.47/0.98      ( r1_xboole_0(X0,k1_xboole_0) ),
% 3.47/0.98      inference(cnf_transformation,[],[f45]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_10255,plain,
% 3.47/0.98      ( r1_xboole_0(k10_relat_1(sK8,sK7),k1_xboole_0) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_6]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_904,plain,( X0 = X0 ),theory(equality) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_9117,plain,
% 3.47/0.98      ( sK5(sK8,sK0(k2_relat_1(sK8),sK7)) = sK5(sK8,sK0(k2_relat_1(sK8),sK7)) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_904]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_907,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.47/0.98      theory(equality) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_2651,plain,
% 3.47/0.98      ( r2_hidden(X0,X1)
% 3.47/0.98      | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | X1 != k10_relat_1(sK8,sK7)
% 3.47/0.98      | X0 != sK5(sK8,sK0(k2_relat_1(sK8),sK7)) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_907]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_5850,plain,
% 3.47/0.98      ( r2_hidden(X0,k1_xboole_0)
% 3.47/0.98      | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | X0 != sK5(sK8,sK0(k2_relat_1(sK8),sK7))
% 3.47/0.98      | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_2651]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_6291,plain,
% 3.47/0.98      ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k1_xboole_0)
% 3.47/0.98      | sK5(sK8,sK0(k2_relat_1(sK8),sK7)) != sK5(sK8,sK0(k2_relat_1(sK8),sK7))
% 3.47/0.98      | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_5850]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_18,negated_conjecture,
% 3.47/0.98      ( r1_xboole_0(k2_relat_1(sK8),sK7)
% 3.47/0.98      | k1_xboole_0 = k10_relat_1(sK8,sK7) ),
% 3.47/0.98      inference(cnf_transformation,[],[f57]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1329,plain,
% 3.47/0.98      ( k1_xboole_0 = k10_relat_1(sK8,sK7)
% 3.47/0.98      | r1_xboole_0(k2_relat_1(sK8),sK7) = iProver_top ),
% 3.47/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_5,plain,
% 3.47/0.98      ( r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0 ),
% 3.47/0.98      inference(cnf_transformation,[],[f44]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1336,plain,
% 3.47/0.98      ( k1_xboole_0 = X0 | r2_hidden(sK2(X0),X0) = iProver_top ),
% 3.47/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_14,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 3.47/0.98      | r2_hidden(sK6(X0,X2,X1),k2_relat_1(X1))
% 3.47/0.98      | ~ v1_relat_1(X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f50]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_19,negated_conjecture,
% 3.47/0.98      ( v1_relat_1(sK8) ),
% 3.47/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_306,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 3.47/0.98      | r2_hidden(sK6(X0,X2,X1),k2_relat_1(X1))
% 3.47/0.98      | sK8 != X1 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_14,c_19]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_307,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(sK8,X1))
% 3.47/0.98      | r2_hidden(sK6(X0,X1,sK8),k2_relat_1(sK8)) ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_306]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1326,plain,
% 3.47/0.98      ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
% 3.47/0.98      | r2_hidden(sK6(X0,X1,sK8),k2_relat_1(sK8)) = iProver_top ),
% 3.47/0.98      inference(predicate_to_equality,[status(thm)],[c_307]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_12,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 3.47/0.98      | r2_hidden(sK6(X0,X2,X1),X2)
% 3.47/0.98      | ~ v1_relat_1(X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f52]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_330,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(X1,X2))
% 3.47/0.98      | r2_hidden(sK6(X0,X2,X1),X2)
% 3.47/0.98      | sK8 != X1 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_12,c_19]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_331,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k10_relat_1(sK8,X1))
% 3.47/0.98      | r2_hidden(sK6(X0,X1,sK8),X1) ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_330]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1324,plain,
% 3.47/0.98      ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
% 3.47/0.98      | r2_hidden(sK6(X0,X1,sK8),X1) = iProver_top ),
% 3.47/0.98      inference(predicate_to_equality,[status(thm)],[c_331]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_0,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,X2) | ~ r1_xboole_0(X2,X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f41]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1341,plain,
% 3.47/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.47/0.98      | r2_hidden(X0,X2) != iProver_top
% 3.47/0.98      | r1_xboole_0(X2,X1) != iProver_top ),
% 3.47/0.98      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_2497,plain,
% 3.47/0.98      ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
% 3.47/0.98      | r2_hidden(sK6(X0,X1,sK8),X2) != iProver_top
% 3.47/0.98      | r1_xboole_0(X2,X1) != iProver_top ),
% 3.47/0.98      inference(superposition,[status(thm)],[c_1324,c_1341]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_3149,plain,
% 3.47/0.98      ( r2_hidden(X0,k10_relat_1(sK8,X1)) != iProver_top
% 3.47/0.98      | r1_xboole_0(k2_relat_1(sK8),X1) != iProver_top ),
% 3.47/0.98      inference(superposition,[status(thm)],[c_1326,c_2497]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_3289,plain,
% 3.47/0.98      ( k10_relat_1(sK8,X0) = k1_xboole_0
% 3.47/0.98      | r1_xboole_0(k2_relat_1(sK8),X0) != iProver_top ),
% 3.47/0.98      inference(superposition,[status(thm)],[c_1336,c_3149]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_5629,plain,
% 3.47/0.98      ( k10_relat_1(sK8,sK7) = k1_xboole_0 ),
% 3.47/0.98      inference(superposition,[status(thm)],[c_1329,c_3289]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_2684,plain,
% 3.47/0.98      ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),X0)
% 3.47/0.98      | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | ~ r1_xboole_0(k10_relat_1(sK8,sK7),X0) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_0]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_5240,plain,
% 3.47/0.98      ( ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | ~ r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k1_xboole_0)
% 3.47/0.98      | ~ r1_xboole_0(k10_relat_1(sK8,sK7),k1_xboole_0) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_2684]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_10,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 3.47/0.98      | r2_hidden(k4_tarski(sK5(X1,X0),X0),X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f60]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1463,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k2_relat_1(sK8))
% 3.47/0.98      | r2_hidden(k4_tarski(sK5(sK8,X0),X0),sK8) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_10]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1998,plain,
% 3.47/0.98      ( r2_hidden(k4_tarski(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),sK0(k2_relat_1(sK8),sK7)),sK8)
% 3.47/0.98      | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),k2_relat_1(sK8)) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_1463]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_11,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1)
% 3.47/0.98      | r2_hidden(X2,k10_relat_1(X3,X1))
% 3.47/0.98      | ~ r2_hidden(X0,k2_relat_1(X3))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(X2,X0),X3)
% 3.47/0.98      | ~ v1_relat_1(X3) ),
% 3.47/0.98      inference(cnf_transformation,[],[f53]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_274,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1)
% 3.47/0.98      | r2_hidden(X2,k10_relat_1(X3,X1))
% 3.47/0.98      | ~ r2_hidden(X0,k2_relat_1(X3))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(X2,X0),X3)
% 3.47/0.98      | sK8 != X3 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_11,c_19]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_275,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1)
% 3.47/0.98      | r2_hidden(X2,k10_relat_1(sK8,X1))
% 3.47/0.98      | ~ r2_hidden(X0,k2_relat_1(sK8))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(X2,X0),sK8) ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_274]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_9,plain,
% 3.47/0.98      ( r2_hidden(X0,k2_relat_1(X1)) | ~ r2_hidden(k4_tarski(X2,X0),X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_287,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,X1)
% 3.47/0.98      | r2_hidden(X2,k10_relat_1(sK8,X1))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(X2,X0),sK8) ),
% 3.47/0.98      inference(forward_subsumption_resolution,[status(thm)],[c_275,c_9]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1477,plain,
% 3.47/0.98      ( r2_hidden(X0,k10_relat_1(sK8,sK7))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(X0,sK0(k2_relat_1(sK8),sK7)),sK8)
% 3.47/0.98      | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_287]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1654,plain,
% 3.47/0.98      ( r2_hidden(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),k10_relat_1(sK8,sK7))
% 3.47/0.98      | ~ r2_hidden(k4_tarski(sK5(sK8,sK0(k2_relat_1(sK8),sK7)),sK0(k2_relat_1(sK8),sK7)),sK8)
% 3.47/0.98      | ~ r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_1477]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_3,plain,
% 3.47/0.98      ( ~ r2_hidden(X0,k3_xboole_0(X1,X2)) | ~ r1_xboole_0(X1,X2) ),
% 3.47/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1426,plain,
% 3.47/0.98      ( ~ r2_hidden(sK1(k2_relat_1(sK8),sK7),k3_xboole_0(k2_relat_1(sK8),sK7))
% 3.47/0.98      | ~ r1_xboole_0(k2_relat_1(sK8),sK7) ),
% 3.47/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_1,plain,
% 3.47/0.98      ( r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f40]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_17,negated_conjecture,
% 3.47/0.98      ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
% 3.47/0.98      | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
% 3.47/0.98      inference(cnf_transformation,[],[f58]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_164,plain,
% 3.47/0.98      ( ~ r1_xboole_0(k2_relat_1(sK8),sK7)
% 3.47/0.98      | k1_xboole_0 != k10_relat_1(sK8,sK7) ),
% 3.47/0.98      inference(prop_impl,[status(thm)],[c_17]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_456,plain,
% 3.47/0.98      ( r2_hidden(sK0(X0,X1),X1)
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0
% 3.47/0.98      | k2_relat_1(sK8) != X0
% 3.47/0.98      | sK7 != X1 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_1,c_164]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_457,plain,
% 3.47/0.98      ( r2_hidden(sK0(k2_relat_1(sK8),sK7),sK7)
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_456]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_2,plain,
% 3.47/0.98      ( r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f39]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_446,plain,
% 3.47/0.98      ( r2_hidden(sK0(X0,X1),X0)
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0
% 3.47/0.98      | k2_relat_1(sK8) != X0
% 3.47/0.98      | sK7 != X1 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_2,c_164]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_447,plain,
% 3.47/0.98      ( r2_hidden(sK0(k2_relat_1(sK8),sK7),k2_relat_1(sK8))
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_446]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_4,plain,
% 3.47/0.98      ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1) ),
% 3.47/0.98      inference(cnf_transformation,[],[f42]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_436,plain,
% 3.47/0.98      ( r2_hidden(sK1(X0,X1),k3_xboole_0(X0,X1))
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0
% 3.47/0.98      | k2_relat_1(sK8) != X0
% 3.47/0.98      | sK7 != X1 ),
% 3.47/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_164]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(c_437,plain,
% 3.47/0.98      ( r2_hidden(sK1(k2_relat_1(sK8),sK7),k3_xboole_0(k2_relat_1(sK8),sK7))
% 3.47/0.98      | k10_relat_1(sK8,sK7) != k1_xboole_0 ),
% 3.47/0.98      inference(unflattening,[status(thm)],[c_436]) ).
% 3.47/0.98  
% 3.47/0.98  cnf(contradiction,plain,
% 3.47/0.98      ( $false ),
% 3.47/0.98      inference(minisat,
% 3.47/0.98                [status(thm)],
% 3.47/0.98                [c_10255,c_9117,c_6291,c_5629,c_5240,c_1998,c_1654,
% 3.47/0.98                 c_1426,c_457,c_447,c_437,c_18]) ).
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.47/0.98  
% 3.47/0.98  ------                               Statistics
% 3.47/0.98  
% 3.47/0.98  ------ General
% 3.47/0.98  
% 3.47/0.98  abstr_ref_over_cycles:                  0
% 3.47/0.98  abstr_ref_under_cycles:                 0
% 3.47/0.98  gc_basic_clause_elim:                   0
% 3.47/0.98  forced_gc_time:                         0
% 3.47/0.98  parsing_time:                           0.007
% 3.47/0.98  unif_index_cands_time:                  0.
% 3.47/0.98  unif_index_add_time:                    0.
% 3.47/0.98  orderings_time:                         0.
% 3.47/0.98  out_proof_time:                         0.007
% 3.47/0.98  total_time:                             0.289
% 3.47/0.98  num_of_symbols:                         49
% 3.47/0.98  num_of_terms:                           9509
% 3.47/0.98  
% 3.47/0.98  ------ Preprocessing
% 3.47/0.98  
% 3.47/0.98  num_of_splits:                          0
% 3.47/0.98  num_of_split_atoms:                     0
% 3.47/0.98  num_of_reused_defs:                     0
% 3.47/0.98  num_eq_ax_congr_red:                    47
% 3.47/0.98  num_of_sem_filtered_clauses:            1
% 3.47/0.98  num_of_subtypes:                        0
% 3.47/0.98  monotx_restored_types:                  0
% 3.47/0.98  sat_num_of_epr_types:                   0
% 3.47/0.98  sat_num_of_non_cyclic_types:            0
% 3.47/0.98  sat_guarded_non_collapsed_types:        0
% 3.47/0.98  num_pure_diseq_elim:                    0
% 3.47/0.98  simp_replaced_by:                       0
% 3.47/0.98  res_preprocessed:                       92
% 3.47/0.98  prep_upred:                             0
% 3.47/0.98  prep_unflattend:                        59
% 3.47/0.98  smt_new_axioms:                         0
% 3.47/0.98  pred_elim_cands:                        2
% 3.47/0.98  pred_elim:                              1
% 3.47/0.98  pred_elim_cl:                           1
% 3.47/0.98  pred_elim_cycles:                       3
% 3.47/0.98  merged_defs:                            8
% 3.47/0.98  merged_defs_ncl:                        0
% 3.47/0.98  bin_hyper_res:                          8
% 3.47/0.98  prep_cycles:                            4
% 3.47/0.98  pred_elim_time:                         0.006
% 3.47/0.98  splitting_time:                         0.
% 3.47/0.98  sem_filter_time:                        0.
% 3.47/0.98  monotx_time:                            0.
% 3.47/0.98  subtype_inf_time:                       0.
% 3.47/0.98  
% 3.47/0.98  ------ Problem properties
% 3.47/0.98  
% 3.47/0.98  clauses:                                18
% 3.47/0.98  conjectures:                            2
% 3.47/0.98  epr:                                    2
% 3.47/0.98  horn:                                   12
% 3.47/0.98  ground:                                 2
% 3.47/0.98  unary:                                  1
% 3.47/0.98  binary:                                 13
% 3.47/0.98  lits:                                   39
% 3.47/0.98  lits_eq:                                5
% 3.47/0.98  fd_pure:                                0
% 3.47/0.98  fd_pseudo:                              0
% 3.47/0.98  fd_cond:                                1
% 3.47/0.98  fd_pseudo_cond:                         2
% 3.47/0.98  ac_symbols:                             0
% 3.47/0.98  
% 3.47/0.98  ------ Propositional Solver
% 3.47/0.98  
% 3.47/0.98  prop_solver_calls:                      29
% 3.47/0.98  prop_fast_solver_calls:                 763
% 3.47/0.98  smt_solver_calls:                       0
% 3.47/0.98  smt_fast_solver_calls:                  0
% 3.47/0.98  prop_num_of_clauses:                    5229
% 3.47/0.98  prop_preprocess_simplified:             9653
% 3.47/0.98  prop_fo_subsumed:                       7
% 3.47/0.98  prop_solver_time:                       0.
% 3.47/0.98  smt_solver_time:                        0.
% 3.47/0.98  smt_fast_solver_time:                   0.
% 3.47/0.98  prop_fast_solver_time:                  0.
% 3.47/0.98  prop_unsat_core_time:                   0.
% 3.47/0.98  
% 3.47/0.98  ------ QBF
% 3.47/0.98  
% 3.47/0.98  qbf_q_res:                              0
% 3.47/0.98  qbf_num_tautologies:                    0
% 3.47/0.98  qbf_prep_cycles:                        0
% 3.47/0.98  
% 3.47/0.98  ------ BMC1
% 3.47/0.98  
% 3.47/0.98  bmc1_current_bound:                     -1
% 3.47/0.98  bmc1_last_solved_bound:                 -1
% 3.47/0.98  bmc1_unsat_core_size:                   -1
% 3.47/0.98  bmc1_unsat_core_parents_size:           -1
% 3.47/0.98  bmc1_merge_next_fun:                    0
% 3.47/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.47/0.98  
% 3.47/0.98  ------ Instantiation
% 3.47/0.98  
% 3.47/0.98  inst_num_of_clauses:                    1214
% 3.47/0.98  inst_num_in_passive:                    114
% 3.47/0.98  inst_num_in_active:                     557
% 3.47/0.98  inst_num_in_unprocessed:                542
% 3.47/0.98  inst_num_of_loops:                      622
% 3.47/0.98  inst_num_of_learning_restarts:          0
% 3.47/0.98  inst_num_moves_active_passive:          63
% 3.47/0.98  inst_lit_activity:                      0
% 3.47/0.98  inst_lit_activity_moves:                0
% 3.47/0.98  inst_num_tautologies:                   0
% 3.47/0.98  inst_num_prop_implied:                  0
% 3.47/0.98  inst_num_existing_simplified:           0
% 3.47/0.98  inst_num_eq_res_simplified:             0
% 3.47/0.98  inst_num_child_elim:                    0
% 3.47/0.98  inst_num_of_dismatching_blockings:      505
% 3.47/0.98  inst_num_of_non_proper_insts:           1361
% 3.47/0.98  inst_num_of_duplicates:                 0
% 3.47/0.98  inst_inst_num_from_inst_to_res:         0
% 3.47/0.98  inst_dismatching_checking_time:         0.
% 3.47/0.98  
% 3.47/0.98  ------ Resolution
% 3.47/0.98  
% 3.47/0.98  res_num_of_clauses:                     0
% 3.47/0.98  res_num_in_passive:                     0
% 3.47/0.98  res_num_in_active:                      0
% 3.47/0.98  res_num_of_loops:                       96
% 3.47/0.98  res_forward_subset_subsumed:            41
% 3.47/0.98  res_backward_subset_subsumed:           0
% 3.47/0.98  res_forward_subsumed:                   0
% 3.47/0.98  res_backward_subsumed:                  0
% 3.47/0.98  res_forward_subsumption_resolution:     1
% 3.47/0.98  res_backward_subsumption_resolution:    0
% 3.47/0.98  res_clause_to_clause_subsumption:       2373
% 3.47/0.98  res_orphan_elimination:                 0
% 3.47/0.98  res_tautology_del:                      93
% 3.47/0.98  res_num_eq_res_simplified:              0
% 3.47/0.98  res_num_sel_changes:                    0
% 3.47/0.98  res_moves_from_active_to_pass:          0
% 3.47/0.98  
% 3.47/0.98  ------ Superposition
% 3.47/0.98  
% 3.47/0.98  sup_time_total:                         0.
% 3.47/0.98  sup_time_generating:                    0.
% 3.47/0.98  sup_time_sim_full:                      0.
% 3.47/0.98  sup_time_sim_immed:                     0.
% 3.47/0.98  
% 3.47/0.98  sup_num_of_clauses:                     423
% 3.47/0.98  sup_num_in_active:                      107
% 3.47/0.98  sup_num_in_passive:                     316
% 3.47/0.98  sup_num_of_loops:                       124
% 3.47/0.98  sup_fw_superposition:                   495
% 3.47/0.98  sup_bw_superposition:                   203
% 3.47/0.98  sup_immediate_simplified:               178
% 3.47/0.98  sup_given_eliminated:                   1
% 3.47/0.98  comparisons_done:                       0
% 3.47/0.98  comparisons_avoided:                    0
% 3.47/0.98  
% 3.47/0.98  ------ Simplifications
% 3.47/0.98  
% 3.47/0.98  
% 3.47/0.98  sim_fw_subset_subsumed:                 49
% 3.47/0.98  sim_bw_subset_subsumed:                 50
% 3.47/0.98  sim_fw_subsumed:                        34
% 3.47/0.98  sim_bw_subsumed:                        3
% 3.47/0.98  sim_fw_subsumption_res:                 0
% 3.47/0.98  sim_bw_subsumption_res:                 0
% 3.47/0.98  sim_tautology_del:                      4
% 3.47/0.98  sim_eq_tautology_del:                   6
% 3.47/0.98  sim_eq_res_simp:                        1
% 3.47/0.98  sim_fw_demodulated:                     6
% 3.47/0.98  sim_bw_demodulated:                     6
% 3.47/0.98  sim_light_normalised:                   111
% 3.47/0.98  sim_joinable_taut:                      0
% 3.47/0.98  sim_joinable_simp:                      0
% 3.47/0.98  sim_ac_normalised:                      0
% 3.47/0.98  sim_smt_subsumption:                    0
% 3.47/0.98  
%------------------------------------------------------------------------------
