%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0071+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n028.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:42:24 EST 2020

% Result     : Theorem 0.60s
% Output     : CNFRefutation 0.60s
% Verified   : 
% Statistics : Number of formulae       :   30 (  57 expanded)
%              Number of clauses        :   13 (  15 expanded)
%              Number of leaves         :    4 (  12 expanded)
%              Depth                    :   11
%              Number of atoms          :   68 ( 175 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   1 average)
%              Maximal term depth       :    1 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f6,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f7,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f6])).

fof(f13,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f3,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( r1_xboole_0(X1,X3)
        & r1_tarski(X2,X3)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( r1_xboole_0(X1,X3)
          & r1_tarski(X2,X3)
          & r1_tarski(X0,X1) )
       => r1_xboole_0(X0,X2) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f8,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_xboole_0(X0,X2)
      & r1_xboole_0(X1,X3)
      & r1_tarski(X2,X3)
      & r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f9,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r1_xboole_0(X0,X2)
      & r1_xboole_0(X1,X3)
      & r1_tarski(X2,X3)
      & r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f8])).

fof(f10,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r1_xboole_0(X0,X2)
        & r1_xboole_0(X1,X3)
        & r1_tarski(X2,X3)
        & r1_tarski(X0,X1) )
   => ( ~ r1_xboole_0(sK0,sK2)
      & r1_xboole_0(sK1,sK3)
      & r1_tarski(sK2,sK3)
      & r1_tarski(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,
    ( ~ r1_xboole_0(sK0,sK2)
    & r1_xboole_0(sK1,sK3)
    & r1_tarski(sK2,sK3)
    & r1_tarski(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f9,f10])).

fof(f15,plain,(
    r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f5,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f12,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f5])).

fof(f16,plain,(
    r1_xboole_0(sK1,sK3) ),
    inference(cnf_transformation,[],[f11])).

fof(f14,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f11])).

fof(f17,plain,(
    ~ r1_xboole_0(sK0,sK2) ),
    inference(cnf_transformation,[],[f11])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_xboole_0(X1,X2)
    | r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_4,negated_conjecture,
    ( r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f15])).

cnf(c_83,plain,
    ( ~ r1_xboole_0(sK3,X0)
    | r1_xboole_0(sK2,X0) ),
    inference(resolution,[status(thm)],[c_1,c_4])).

cnf(c_0,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f12])).

cnf(c_3,negated_conjecture,
    ( r1_xboole_0(sK1,sK3) ),
    inference(cnf_transformation,[],[f16])).

cnf(c_76,plain,
    ( r1_xboole_0(sK3,sK1) ),
    inference(resolution,[status(thm)],[c_0,c_3])).

cnf(c_93,plain,
    ( r1_xboole_0(sK2,sK1) ),
    inference(resolution,[status(thm)],[c_83,c_76])).

cnf(c_105,plain,
    ( r1_xboole_0(sK1,sK2) ),
    inference(resolution,[status(thm)],[c_93,c_0])).

cnf(c_5,negated_conjecture,
    ( r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f14])).

cnf(c_87,plain,
    ( ~ r1_xboole_0(sK1,X0)
    | r1_xboole_0(sK0,X0) ),
    inference(resolution,[status(thm)],[c_1,c_5])).

cnf(c_115,plain,
    ( r1_xboole_0(sK0,sK2) ),
    inference(resolution,[status(thm)],[c_105,c_87])).

cnf(c_2,negated_conjecture,
    ( ~ r1_xboole_0(sK0,sK2) ),
    inference(cnf_transformation,[],[f17])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_115,c_2])).


%------------------------------------------------------------------------------
