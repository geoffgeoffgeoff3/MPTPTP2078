%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:58:40 EST 2020

% Result     : Theorem 2.28s
% Output     : CNFRefutation 2.28s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 897 expanded)
%              Number of clauses        :   51 ( 197 expanded)
%              Number of leaves         :    8 ( 228 expanded)
%              Depth                    :   17
%              Number of atoms          :  345 (4461 expanded)
%              Number of equality atoms :  344 (4460 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,conjecture,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] :
      ( k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7)
     => ( ( X3 = X7
          & X2 = X6
          & X1 = X5
          & X0 = X4 )
        | k1_xboole_0 = X3
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4,X5,X6,X7] :
        ( k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7)
       => ( ( X3 = X7
            & X2 = X6
            & X1 = X5
            & X0 = X4 )
          | k1_xboole_0 = X3
          | k1_xboole_0 = X2
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f10,plain,(
    ? [X0,X1,X2,X3,X4,X5,X6,X7] :
      ( ( X3 != X7
        | X2 != X6
        | X1 != X5
        | X0 != X4 )
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f11,plain,(
    ? [X0,X1,X2,X3,X4,X5,X6,X7] :
      ( ( X3 != X7
        | X2 != X6
        | X1 != X5
        | X0 != X4 )
      & k1_xboole_0 != X3
      & k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0
      & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7) ) ),
    inference(flattening,[],[f10])).

fof(f16,plain,
    ( ? [X0,X1,X2,X3,X4,X5,X6,X7] :
        ( ( X3 != X7
          | X2 != X6
          | X1 != X5
          | X0 != X4 )
        & k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7) )
   => ( ( sK3 != sK7
        | sK2 != sK6
        | sK1 != sK5
        | sK0 != sK4 )
      & k1_xboole_0 != sK3
      & k1_xboole_0 != sK2
      & k1_xboole_0 != sK1
      & k1_xboole_0 != sK0
      & k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ( sK3 != sK7
      | sK2 != sK6
      | sK1 != sK5
      | sK0 != sK4 )
    & k1_xboole_0 != sK3
    & k1_xboole_0 != sK2
    & k1_xboole_0 != sK1
    & k1_xboole_0 != sK0
    & k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f11,f16])).

fof(f31,plain,(
    k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f2])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f22,f21])).

fof(f46,plain,(
    k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7) ),
    inference(definition_unfolding,[],[f31,f37,f37])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k3_zfmisc_1(X0,X1,X2) = k3_zfmisc_1(X3,X4,X5)
     => ( ( X2 = X5
          & X1 = X4
          & X0 = X3 )
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( X2 = X5
        & X1 = X4
        & X0 = X3 )
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f9,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( X2 = X5
        & X1 = X4
        & X0 = X3 )
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5) ) ),
    inference(flattening,[],[f8])).

fof(f25,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X2 = X5
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f38,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X2 = X5
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5) ) ),
    inference(definition_unfolding,[],[f25,f21,f21])).

fof(f32,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f17])).

fof(f33,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f34,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f17])).

fof(f35,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( k1_xboole_0 != X3
        & k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 )
    <=> k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( k1_xboole_0 != X3
          & k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 )
        | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) )
      & ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
        | k1_xboole_0 = X3
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( k1_xboole_0 != X3
          & k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 )
        | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) )
      & ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
        | k1_xboole_0 = X3
        | k1_xboole_0 = X2
        | k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    inference(flattening,[],[f14])).

fof(f26,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3)
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0
      | k1_xboole_0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f26,f37])).

fof(f27,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X0
      | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f44,plain,(
    ! [X2,X0,X3,X1] :
      ( k1_xboole_0 != X0
      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k1_xboole_0 ) ),
    inference(definition_unfolding,[],[f27,f37])).

fof(f52,plain,(
    ! [X2,X3,X1] : k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1),X2),X3) = k1_xboole_0 ),
    inference(equality_resolution,[],[f44])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k2_zfmisc_1(X0,X1) = k1_xboole_0
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f13,plain,(
    ! [X0,X1] :
      ( ( k2_zfmisc_1(X0,X1) = k1_xboole_0
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ) ),
    inference(flattening,[],[f12])).

fof(f18,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k2_zfmisc_1(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f13])).

fof(f24,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X1 = X4
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f39,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X1 = X4
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5) ) ),
    inference(definition_unfolding,[],[f24,f21,f21])).

fof(f23,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f40,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( X0 = X3
      | k1_xboole_0 = X2
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5) ) ),
    inference(definition_unfolding,[],[f23,f21,f21])).

fof(f36,plain,
    ( sK3 != sK7
    | sK2 != sK6
    | sK1 != sK5
    | sK0 != sK4 ),
    inference(cnf_transformation,[],[f17])).

cnf(c_16,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_3,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(X2,X3),X0) != k2_zfmisc_1(k2_zfmisc_1(X4,X5),X1)
    | k1_xboole_0 = X5
    | k1_xboole_0 = X4
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_306,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
    | sK7 = X2
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2 ),
    inference(superposition,[status(thm)],[c_16,c_3])).

cnf(c_687,plain,
    ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | sK2 = k1_xboole_0
    | sK7 = sK3
    | sK3 = k1_xboole_0 ),
    inference(equality_resolution,[status(thm)],[c_306])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_14,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_12,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_10,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2
    | k1_xboole_0 = X3 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_17,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_9,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0),X1),X2) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_18,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_26,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_111,plain,
    ( sK3 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_112,plain,
    ( sK3 != k1_xboole_0
    | k1_xboole_0 = sK3
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_111])).

cnf(c_113,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_114,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_113])).

cnf(c_2,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f18])).

cnf(c_107,plain,
    ( k2_zfmisc_1(X0,sK1) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_148,plain,
    ( k2_zfmisc_1(sK0,sK1) != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_107])).

cnf(c_1376,plain,
    ( sK7 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_687,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148])).

cnf(c_314,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1) != k2_zfmisc_1(k2_zfmisc_1(X2,X3),X0)
    | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
    | sK7 = k1_xboole_0
    | k1_xboole_0 = X1 ),
    inference(superposition,[status(thm)],[c_16,c_3])).

cnf(c_1132,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
    | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
    | sK7 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(superposition,[status(thm)],[c_16,c_314])).

cnf(c_1381,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
    | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
    | sK3 = k1_xboole_0
    | k1_xboole_0 = X1 ),
    inference(demodulation,[status(thm)],[c_1376,c_1132])).

cnf(c_2640,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
    | X0 = X1
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1381,c_12,c_17,c_18,c_112])).

cnf(c_2641,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
    | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_2640])).

cnf(c_4,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(X2,X0),X3) != k2_zfmisc_1(k2_zfmisc_1(X4,X1),X5)
    | k1_xboole_0 = X1
    | k1_xboole_0 = X4
    | k1_xboole_0 = X5 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_382,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
    | sK6 = X1
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2 ),
    inference(superposition,[status(thm)],[c_16,c_4])).

cnf(c_716,plain,
    ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | sK6 = sK2
    | sK2 = k1_xboole_0
    | sK3 = k1_xboole_0 ),
    inference(equality_resolution,[status(thm)],[c_382])).

cnf(c_1679,plain,
    ( sK6 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_716,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148])).

cnf(c_5,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(X0,X2),X3) != k2_zfmisc_1(k2_zfmisc_1(X1,X4),X5)
    | k1_xboole_0 = X4
    | k1_xboole_0 = X1
    | k1_xboole_0 = X5 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_504,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
    | k2_zfmisc_1(sK4,sK5) = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X2 ),
    inference(superposition,[status(thm)],[c_16,c_5])).

cnf(c_1048,plain,
    ( k2_zfmisc_1(sK4,sK5) = k2_zfmisc_1(sK0,sK1)
    | k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | sK2 = k1_xboole_0
    | sK3 = k1_xboole_0 ),
    inference(equality_resolution,[status(thm)],[c_504])).

cnf(c_1860,plain,
    ( k2_zfmisc_1(sK4,sK5) = k2_zfmisc_1(sK0,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1048,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148])).

cnf(c_2642,plain,
    ( X0 = X1
    | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
    | k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2) = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(light_normalisation,[status(thm)],[c_2641,c_1679,c_1860])).

cnf(c_115,plain,
    ( sK1 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_116,plain,
    ( sK1 != k1_xboole_0
    | k1_xboole_0 = sK1
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_115])).

cnf(c_117,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_118,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_117])).

cnf(c_11,negated_conjecture,
    ( sK0 != sK4
    | sK1 != sK5
    | sK2 != sK6
    | sK3 != sK7 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1398,plain,
    ( sK4 != sK0
    | sK5 != sK1
    | sK6 != sK2
    | sK3 != sK3 ),
    inference(demodulation,[status(thm)],[c_1376,c_11])).

cnf(c_1402,plain,
    ( sK4 != sK0
    | sK5 != sK1
    | sK6 != sK2 ),
    inference(equality_resolution_simp,[status(thm)],[c_1398])).

cnf(c_1665,plain,
    ( sK5 != sK1
    | sK4 != sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1402,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148,c_716])).

cnf(c_1666,plain,
    ( sK4 != sK0
    | sK5 != sK1 ),
    inference(renaming,[status(thm)],[c_1665])).

cnf(c_1876,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),X3)
    | sK5 = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2 ),
    inference(superposition,[status(thm)],[c_1860,c_4])).

cnf(c_2455,plain,
    ( sK0 = k1_xboole_0
    | sK5 = sK1
    | sK1 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(equality_resolution,[status(thm)],[c_1876])).

cnf(c_1878,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),X3)
    | sK4 = X0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | k1_xboole_0 = X2 ),
    inference(superposition,[status(thm)],[c_1860,c_5])).

cnf(c_2556,plain,
    ( sK4 = sK0
    | sK0 = k1_xboole_0
    | sK1 = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(equality_resolution,[status(thm)],[c_1878])).

cnf(c_2647,plain,
    ( k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2642,c_15,c_14,c_17,c_18,c_116,c_118,c_1666,c_2455,c_2556])).

cnf(c_2683,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2647,c_14])).

cnf(c_2685,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2683])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 10:44:29 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.28/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.28/0.99  
% 2.28/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.28/0.99  
% 2.28/0.99  ------  iProver source info
% 2.28/0.99  
% 2.28/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.28/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.28/0.99  git: non_committed_changes: false
% 2.28/0.99  git: last_make_outside_of_git: false
% 2.28/0.99  
% 2.28/0.99  ------ 
% 2.28/0.99  
% 2.28/0.99  ------ Input Options
% 2.28/0.99  
% 2.28/0.99  --out_options                           all
% 2.28/0.99  --tptp_safe_out                         true
% 2.28/0.99  --problem_path                          ""
% 2.28/0.99  --include_path                          ""
% 2.28/0.99  --clausifier                            res/vclausify_rel
% 2.28/0.99  --clausifier_options                    --mode clausify
% 2.28/0.99  --stdin                                 false
% 2.28/0.99  --stats_out                             all
% 2.28/0.99  
% 2.28/0.99  ------ General Options
% 2.28/0.99  
% 2.28/0.99  --fof                                   false
% 2.28/0.99  --time_out_real                         305.
% 2.28/0.99  --time_out_virtual                      -1.
% 2.28/0.99  --symbol_type_check                     false
% 2.28/0.99  --clausify_out                          false
% 2.28/0.99  --sig_cnt_out                           false
% 2.28/0.99  --trig_cnt_out                          false
% 2.28/0.99  --trig_cnt_out_tolerance                1.
% 2.28/0.99  --trig_cnt_out_sk_spl                   false
% 2.28/0.99  --abstr_cl_out                          false
% 2.28/0.99  
% 2.28/0.99  ------ Global Options
% 2.28/0.99  
% 2.28/0.99  --schedule                              default
% 2.28/0.99  --add_important_lit                     false
% 2.28/0.99  --prop_solver_per_cl                    1000
% 2.28/0.99  --min_unsat_core                        false
% 2.28/0.99  --soft_assumptions                      false
% 2.28/0.99  --soft_lemma_size                       3
% 2.28/0.99  --prop_impl_unit_size                   0
% 2.28/0.99  --prop_impl_unit                        []
% 2.28/0.99  --share_sel_clauses                     true
% 2.28/0.99  --reset_solvers                         false
% 2.28/0.99  --bc_imp_inh                            [conj_cone]
% 2.28/0.99  --conj_cone_tolerance                   3.
% 2.28/0.99  --extra_neg_conj                        none
% 2.28/0.99  --large_theory_mode                     true
% 2.28/0.99  --prolific_symb_bound                   200
% 2.28/0.99  --lt_threshold                          2000
% 2.28/0.99  --clause_weak_htbl                      true
% 2.28/0.99  --gc_record_bc_elim                     false
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing Options
% 2.28/0.99  
% 2.28/0.99  --preprocessing_flag                    true
% 2.28/0.99  --time_out_prep_mult                    0.1
% 2.28/0.99  --splitting_mode                        input
% 2.28/0.99  --splitting_grd                         true
% 2.28/0.99  --splitting_cvd                         false
% 2.28/0.99  --splitting_cvd_svl                     false
% 2.28/0.99  --splitting_nvd                         32
% 2.28/0.99  --sub_typing                            true
% 2.28/0.99  --prep_gs_sim                           true
% 2.28/0.99  --prep_unflatten                        true
% 2.28/0.99  --prep_res_sim                          true
% 2.28/0.99  --prep_upred                            true
% 2.28/0.99  --prep_sem_filter                       exhaustive
% 2.28/0.99  --prep_sem_filter_out                   false
% 2.28/0.99  --pred_elim                             true
% 2.28/0.99  --res_sim_input                         true
% 2.28/0.99  --eq_ax_congr_red                       true
% 2.28/0.99  --pure_diseq_elim                       true
% 2.28/0.99  --brand_transform                       false
% 2.28/0.99  --non_eq_to_eq                          false
% 2.28/0.99  --prep_def_merge                        true
% 2.28/0.99  --prep_def_merge_prop_impl              false
% 2.28/0.99  --prep_def_merge_mbd                    true
% 2.28/0.99  --prep_def_merge_tr_red                 false
% 2.28/0.99  --prep_def_merge_tr_cl                  false
% 2.28/0.99  --smt_preprocessing                     true
% 2.28/0.99  --smt_ac_axioms                         fast
% 2.28/0.99  --preprocessed_out                      false
% 2.28/0.99  --preprocessed_stats                    false
% 2.28/0.99  
% 2.28/0.99  ------ Abstraction refinement Options
% 2.28/0.99  
% 2.28/0.99  --abstr_ref                             []
% 2.28/0.99  --abstr_ref_prep                        false
% 2.28/0.99  --abstr_ref_until_sat                   false
% 2.28/0.99  --abstr_ref_sig_restrict                funpre
% 2.28/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.28/0.99  --abstr_ref_under                       []
% 2.28/0.99  
% 2.28/0.99  ------ SAT Options
% 2.28/0.99  
% 2.28/0.99  --sat_mode                              false
% 2.28/0.99  --sat_fm_restart_options                ""
% 2.28/0.99  --sat_gr_def                            false
% 2.28/0.99  --sat_epr_types                         true
% 2.28/0.99  --sat_non_cyclic_types                  false
% 2.28/0.99  --sat_finite_models                     false
% 2.28/0.99  --sat_fm_lemmas                         false
% 2.28/0.99  --sat_fm_prep                           false
% 2.28/0.99  --sat_fm_uc_incr                        true
% 2.28/0.99  --sat_out_model                         small
% 2.28/0.99  --sat_out_clauses                       false
% 2.28/0.99  
% 2.28/0.99  ------ QBF Options
% 2.28/0.99  
% 2.28/0.99  --qbf_mode                              false
% 2.28/0.99  --qbf_elim_univ                         false
% 2.28/0.99  --qbf_dom_inst                          none
% 2.28/0.99  --qbf_dom_pre_inst                      false
% 2.28/0.99  --qbf_sk_in                             false
% 2.28/0.99  --qbf_pred_elim                         true
% 2.28/0.99  --qbf_split                             512
% 2.28/0.99  
% 2.28/0.99  ------ BMC1 Options
% 2.28/0.99  
% 2.28/0.99  --bmc1_incremental                      false
% 2.28/0.99  --bmc1_axioms                           reachable_all
% 2.28/0.99  --bmc1_min_bound                        0
% 2.28/0.99  --bmc1_max_bound                        -1
% 2.28/0.99  --bmc1_max_bound_default                -1
% 2.28/0.99  --bmc1_symbol_reachability              true
% 2.28/0.99  --bmc1_property_lemmas                  false
% 2.28/0.99  --bmc1_k_induction                      false
% 2.28/0.99  --bmc1_non_equiv_states                 false
% 2.28/0.99  --bmc1_deadlock                         false
% 2.28/0.99  --bmc1_ucm                              false
% 2.28/0.99  --bmc1_add_unsat_core                   none
% 2.28/0.99  --bmc1_unsat_core_children              false
% 2.28/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.28/0.99  --bmc1_out_stat                         full
% 2.28/0.99  --bmc1_ground_init                      false
% 2.28/0.99  --bmc1_pre_inst_next_state              false
% 2.28/0.99  --bmc1_pre_inst_state                   false
% 2.28/0.99  --bmc1_pre_inst_reach_state             false
% 2.28/0.99  --bmc1_out_unsat_core                   false
% 2.28/0.99  --bmc1_aig_witness_out                  false
% 2.28/0.99  --bmc1_verbose                          false
% 2.28/0.99  --bmc1_dump_clauses_tptp                false
% 2.28/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.28/0.99  --bmc1_dump_file                        -
% 2.28/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.28/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.28/0.99  --bmc1_ucm_extend_mode                  1
% 2.28/0.99  --bmc1_ucm_init_mode                    2
% 2.28/0.99  --bmc1_ucm_cone_mode                    none
% 2.28/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.28/0.99  --bmc1_ucm_relax_model                  4
% 2.28/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.28/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.28/0.99  --bmc1_ucm_layered_model                none
% 2.28/0.99  --bmc1_ucm_max_lemma_size               10
% 2.28/0.99  
% 2.28/0.99  ------ AIG Options
% 2.28/0.99  
% 2.28/0.99  --aig_mode                              false
% 2.28/0.99  
% 2.28/0.99  ------ Instantiation Options
% 2.28/0.99  
% 2.28/0.99  --instantiation_flag                    true
% 2.28/0.99  --inst_sos_flag                         false
% 2.28/0.99  --inst_sos_phase                        true
% 2.28/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.28/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.28/0.99  --inst_lit_sel_side                     num_symb
% 2.28/0.99  --inst_solver_per_active                1400
% 2.28/0.99  --inst_solver_calls_frac                1.
% 2.28/0.99  --inst_passive_queue_type               priority_queues
% 2.28/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.28/0.99  --inst_passive_queues_freq              [25;2]
% 2.28/0.99  --inst_dismatching                      true
% 2.28/0.99  --inst_eager_unprocessed_to_passive     true
% 2.28/0.99  --inst_prop_sim_given                   true
% 2.28/0.99  --inst_prop_sim_new                     false
% 2.28/0.99  --inst_subs_new                         false
% 2.28/0.99  --inst_eq_res_simp                      false
% 2.28/0.99  --inst_subs_given                       false
% 2.28/0.99  --inst_orphan_elimination               true
% 2.28/0.99  --inst_learning_loop_flag               true
% 2.28/0.99  --inst_learning_start                   3000
% 2.28/0.99  --inst_learning_factor                  2
% 2.28/0.99  --inst_start_prop_sim_after_learn       3
% 2.28/0.99  --inst_sel_renew                        solver
% 2.28/0.99  --inst_lit_activity_flag                true
% 2.28/0.99  --inst_restr_to_given                   false
% 2.28/0.99  --inst_activity_threshold               500
% 2.28/0.99  --inst_out_proof                        true
% 2.28/0.99  
% 2.28/0.99  ------ Resolution Options
% 2.28/0.99  
% 2.28/0.99  --resolution_flag                       true
% 2.28/0.99  --res_lit_sel                           adaptive
% 2.28/0.99  --res_lit_sel_side                      none
% 2.28/0.99  --res_ordering                          kbo
% 2.28/0.99  --res_to_prop_solver                    active
% 2.28/0.99  --res_prop_simpl_new                    false
% 2.28/0.99  --res_prop_simpl_given                  true
% 2.28/0.99  --res_passive_queue_type                priority_queues
% 2.28/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.28/0.99  --res_passive_queues_freq               [15;5]
% 2.28/0.99  --res_forward_subs                      full
% 2.28/0.99  --res_backward_subs                     full
% 2.28/0.99  --res_forward_subs_resolution           true
% 2.28/0.99  --res_backward_subs_resolution          true
% 2.28/0.99  --res_orphan_elimination                true
% 2.28/0.99  --res_time_limit                        2.
% 2.28/0.99  --res_out_proof                         true
% 2.28/0.99  
% 2.28/0.99  ------ Superposition Options
% 2.28/0.99  
% 2.28/0.99  --superposition_flag                    true
% 2.28/0.99  --sup_passive_queue_type                priority_queues
% 2.28/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.28/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.28/0.99  --demod_completeness_check              fast
% 2.28/0.99  --demod_use_ground                      true
% 2.28/0.99  --sup_to_prop_solver                    passive
% 2.28/0.99  --sup_prop_simpl_new                    true
% 2.28/0.99  --sup_prop_simpl_given                  true
% 2.28/0.99  --sup_fun_splitting                     false
% 2.28/0.99  --sup_smt_interval                      50000
% 2.28/0.99  
% 2.28/0.99  ------ Superposition Simplification Setup
% 2.28/0.99  
% 2.28/0.99  --sup_indices_passive                   []
% 2.28/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.28/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_full_bw                           [BwDemod]
% 2.28/0.99  --sup_immed_triv                        [TrivRules]
% 2.28/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.28/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_immed_bw_main                     []
% 2.28/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.28/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.28/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.28/0.99  
% 2.28/0.99  ------ Combination Options
% 2.28/0.99  
% 2.28/0.99  --comb_res_mult                         3
% 2.28/0.99  --comb_sup_mult                         2
% 2.28/0.99  --comb_inst_mult                        10
% 2.28/0.99  
% 2.28/0.99  ------ Debug Options
% 2.28/0.99  
% 2.28/0.99  --dbg_backtrace                         false
% 2.28/0.99  --dbg_dump_prop_clauses                 false
% 2.28/0.99  --dbg_dump_prop_clauses_file            -
% 2.28/0.99  --dbg_out_stat                          false
% 2.28/0.99  ------ Parsing...
% 2.28/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 2.28/0.99  ------ Proving...
% 2.28/0.99  ------ Problem Properties 
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  clauses                                 17
% 2.28/0.99  conjectures                             6
% 2.28/0.99  EPR                                     5
% 2.28/0.99  Horn                                    12
% 2.28/0.99  unary                                   11
% 2.28/0.99  binary                                  0
% 2.28/0.99  lits                                    38
% 2.28/0.99  lits eq                                 38
% 2.28/0.99  fd_pure                                 0
% 2.28/0.99  fd_pseudo                               0
% 2.28/0.99  fd_cond                                 2
% 2.28/0.99  fd_pseudo_cond                          3
% 2.28/0.99  AC symbols                              0
% 2.28/0.99  
% 2.28/0.99  ------ Schedule dynamic 5 is on 
% 2.28/0.99  
% 2.28/0.99  ------ pure equality problem: resolution off 
% 2.28/0.99  
% 2.28/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  ------ 
% 2.28/0.99  Current options:
% 2.28/0.99  ------ 
% 2.28/0.99  
% 2.28/0.99  ------ Input Options
% 2.28/0.99  
% 2.28/0.99  --out_options                           all
% 2.28/0.99  --tptp_safe_out                         true
% 2.28/0.99  --problem_path                          ""
% 2.28/0.99  --include_path                          ""
% 2.28/0.99  --clausifier                            res/vclausify_rel
% 2.28/0.99  --clausifier_options                    --mode clausify
% 2.28/0.99  --stdin                                 false
% 2.28/0.99  --stats_out                             all
% 2.28/0.99  
% 2.28/0.99  ------ General Options
% 2.28/0.99  
% 2.28/0.99  --fof                                   false
% 2.28/0.99  --time_out_real                         305.
% 2.28/0.99  --time_out_virtual                      -1.
% 2.28/0.99  --symbol_type_check                     false
% 2.28/0.99  --clausify_out                          false
% 2.28/0.99  --sig_cnt_out                           false
% 2.28/0.99  --trig_cnt_out                          false
% 2.28/0.99  --trig_cnt_out_tolerance                1.
% 2.28/0.99  --trig_cnt_out_sk_spl                   false
% 2.28/0.99  --abstr_cl_out                          false
% 2.28/0.99  
% 2.28/0.99  ------ Global Options
% 2.28/0.99  
% 2.28/0.99  --schedule                              default
% 2.28/0.99  --add_important_lit                     false
% 2.28/0.99  --prop_solver_per_cl                    1000
% 2.28/0.99  --min_unsat_core                        false
% 2.28/0.99  --soft_assumptions                      false
% 2.28/0.99  --soft_lemma_size                       3
% 2.28/0.99  --prop_impl_unit_size                   0
% 2.28/0.99  --prop_impl_unit                        []
% 2.28/0.99  --share_sel_clauses                     true
% 2.28/0.99  --reset_solvers                         false
% 2.28/0.99  --bc_imp_inh                            [conj_cone]
% 2.28/0.99  --conj_cone_tolerance                   3.
% 2.28/0.99  --extra_neg_conj                        none
% 2.28/0.99  --large_theory_mode                     true
% 2.28/0.99  --prolific_symb_bound                   200
% 2.28/0.99  --lt_threshold                          2000
% 2.28/0.99  --clause_weak_htbl                      true
% 2.28/0.99  --gc_record_bc_elim                     false
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing Options
% 2.28/0.99  
% 2.28/0.99  --preprocessing_flag                    true
% 2.28/0.99  --time_out_prep_mult                    0.1
% 2.28/0.99  --splitting_mode                        input
% 2.28/0.99  --splitting_grd                         true
% 2.28/0.99  --splitting_cvd                         false
% 2.28/0.99  --splitting_cvd_svl                     false
% 2.28/0.99  --splitting_nvd                         32
% 2.28/0.99  --sub_typing                            true
% 2.28/0.99  --prep_gs_sim                           true
% 2.28/0.99  --prep_unflatten                        true
% 2.28/0.99  --prep_res_sim                          true
% 2.28/0.99  --prep_upred                            true
% 2.28/0.99  --prep_sem_filter                       exhaustive
% 2.28/0.99  --prep_sem_filter_out                   false
% 2.28/0.99  --pred_elim                             true
% 2.28/0.99  --res_sim_input                         true
% 2.28/0.99  --eq_ax_congr_red                       true
% 2.28/0.99  --pure_diseq_elim                       true
% 2.28/0.99  --brand_transform                       false
% 2.28/0.99  --non_eq_to_eq                          false
% 2.28/0.99  --prep_def_merge                        true
% 2.28/0.99  --prep_def_merge_prop_impl              false
% 2.28/0.99  --prep_def_merge_mbd                    true
% 2.28/0.99  --prep_def_merge_tr_red                 false
% 2.28/0.99  --prep_def_merge_tr_cl                  false
% 2.28/0.99  --smt_preprocessing                     true
% 2.28/0.99  --smt_ac_axioms                         fast
% 2.28/0.99  --preprocessed_out                      false
% 2.28/0.99  --preprocessed_stats                    false
% 2.28/0.99  
% 2.28/0.99  ------ Abstraction refinement Options
% 2.28/0.99  
% 2.28/0.99  --abstr_ref                             []
% 2.28/0.99  --abstr_ref_prep                        false
% 2.28/0.99  --abstr_ref_until_sat                   false
% 2.28/0.99  --abstr_ref_sig_restrict                funpre
% 2.28/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.28/0.99  --abstr_ref_under                       []
% 2.28/0.99  
% 2.28/0.99  ------ SAT Options
% 2.28/0.99  
% 2.28/0.99  --sat_mode                              false
% 2.28/0.99  --sat_fm_restart_options                ""
% 2.28/0.99  --sat_gr_def                            false
% 2.28/0.99  --sat_epr_types                         true
% 2.28/0.99  --sat_non_cyclic_types                  false
% 2.28/0.99  --sat_finite_models                     false
% 2.28/0.99  --sat_fm_lemmas                         false
% 2.28/0.99  --sat_fm_prep                           false
% 2.28/0.99  --sat_fm_uc_incr                        true
% 2.28/0.99  --sat_out_model                         small
% 2.28/0.99  --sat_out_clauses                       false
% 2.28/0.99  
% 2.28/0.99  ------ QBF Options
% 2.28/0.99  
% 2.28/0.99  --qbf_mode                              false
% 2.28/0.99  --qbf_elim_univ                         false
% 2.28/0.99  --qbf_dom_inst                          none
% 2.28/0.99  --qbf_dom_pre_inst                      false
% 2.28/0.99  --qbf_sk_in                             false
% 2.28/0.99  --qbf_pred_elim                         true
% 2.28/0.99  --qbf_split                             512
% 2.28/0.99  
% 2.28/0.99  ------ BMC1 Options
% 2.28/0.99  
% 2.28/0.99  --bmc1_incremental                      false
% 2.28/0.99  --bmc1_axioms                           reachable_all
% 2.28/0.99  --bmc1_min_bound                        0
% 2.28/0.99  --bmc1_max_bound                        -1
% 2.28/0.99  --bmc1_max_bound_default                -1
% 2.28/0.99  --bmc1_symbol_reachability              true
% 2.28/0.99  --bmc1_property_lemmas                  false
% 2.28/0.99  --bmc1_k_induction                      false
% 2.28/0.99  --bmc1_non_equiv_states                 false
% 2.28/0.99  --bmc1_deadlock                         false
% 2.28/0.99  --bmc1_ucm                              false
% 2.28/0.99  --bmc1_add_unsat_core                   none
% 2.28/0.99  --bmc1_unsat_core_children              false
% 2.28/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.28/0.99  --bmc1_out_stat                         full
% 2.28/0.99  --bmc1_ground_init                      false
% 2.28/0.99  --bmc1_pre_inst_next_state              false
% 2.28/0.99  --bmc1_pre_inst_state                   false
% 2.28/0.99  --bmc1_pre_inst_reach_state             false
% 2.28/0.99  --bmc1_out_unsat_core                   false
% 2.28/0.99  --bmc1_aig_witness_out                  false
% 2.28/0.99  --bmc1_verbose                          false
% 2.28/0.99  --bmc1_dump_clauses_tptp                false
% 2.28/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.28/0.99  --bmc1_dump_file                        -
% 2.28/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.28/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.28/0.99  --bmc1_ucm_extend_mode                  1
% 2.28/0.99  --bmc1_ucm_init_mode                    2
% 2.28/0.99  --bmc1_ucm_cone_mode                    none
% 2.28/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.28/0.99  --bmc1_ucm_relax_model                  4
% 2.28/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.28/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.28/0.99  --bmc1_ucm_layered_model                none
% 2.28/0.99  --bmc1_ucm_max_lemma_size               10
% 2.28/0.99  
% 2.28/0.99  ------ AIG Options
% 2.28/0.99  
% 2.28/0.99  --aig_mode                              false
% 2.28/0.99  
% 2.28/0.99  ------ Instantiation Options
% 2.28/0.99  
% 2.28/0.99  --instantiation_flag                    true
% 2.28/0.99  --inst_sos_flag                         false
% 2.28/0.99  --inst_sos_phase                        true
% 2.28/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.28/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.28/0.99  --inst_lit_sel_side                     none
% 2.28/0.99  --inst_solver_per_active                1400
% 2.28/0.99  --inst_solver_calls_frac                1.
% 2.28/0.99  --inst_passive_queue_type               priority_queues
% 2.28/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.28/0.99  --inst_passive_queues_freq              [25;2]
% 2.28/0.99  --inst_dismatching                      true
% 2.28/0.99  --inst_eager_unprocessed_to_passive     true
% 2.28/0.99  --inst_prop_sim_given                   true
% 2.28/0.99  --inst_prop_sim_new                     false
% 2.28/0.99  --inst_subs_new                         false
% 2.28/0.99  --inst_eq_res_simp                      false
% 2.28/0.99  --inst_subs_given                       false
% 2.28/0.99  --inst_orphan_elimination               true
% 2.28/0.99  --inst_learning_loop_flag               true
% 2.28/0.99  --inst_learning_start                   3000
% 2.28/0.99  --inst_learning_factor                  2
% 2.28/0.99  --inst_start_prop_sim_after_learn       3
% 2.28/0.99  --inst_sel_renew                        solver
% 2.28/0.99  --inst_lit_activity_flag                true
% 2.28/0.99  --inst_restr_to_given                   false
% 2.28/0.99  --inst_activity_threshold               500
% 2.28/0.99  --inst_out_proof                        true
% 2.28/0.99  
% 2.28/0.99  ------ Resolution Options
% 2.28/0.99  
% 2.28/0.99  --resolution_flag                       false
% 2.28/0.99  --res_lit_sel                           adaptive
% 2.28/0.99  --res_lit_sel_side                      none
% 2.28/0.99  --res_ordering                          kbo
% 2.28/0.99  --res_to_prop_solver                    active
% 2.28/0.99  --res_prop_simpl_new                    false
% 2.28/0.99  --res_prop_simpl_given                  true
% 2.28/0.99  --res_passive_queue_type                priority_queues
% 2.28/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.28/0.99  --res_passive_queues_freq               [15;5]
% 2.28/0.99  --res_forward_subs                      full
% 2.28/0.99  --res_backward_subs                     full
% 2.28/0.99  --res_forward_subs_resolution           true
% 2.28/0.99  --res_backward_subs_resolution          true
% 2.28/0.99  --res_orphan_elimination                true
% 2.28/0.99  --res_time_limit                        2.
% 2.28/0.99  --res_out_proof                         true
% 2.28/0.99  
% 2.28/0.99  ------ Superposition Options
% 2.28/0.99  
% 2.28/0.99  --superposition_flag                    true
% 2.28/0.99  --sup_passive_queue_type                priority_queues
% 2.28/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.28/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.28/0.99  --demod_completeness_check              fast
% 2.28/0.99  --demod_use_ground                      true
% 2.28/0.99  --sup_to_prop_solver                    passive
% 2.28/0.99  --sup_prop_simpl_new                    true
% 2.28/0.99  --sup_prop_simpl_given                  true
% 2.28/0.99  --sup_fun_splitting                     false
% 2.28/0.99  --sup_smt_interval                      50000
% 2.28/0.99  
% 2.28/0.99  ------ Superposition Simplification Setup
% 2.28/0.99  
% 2.28/0.99  --sup_indices_passive                   []
% 2.28/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.28/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.28/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_full_bw                           [BwDemod]
% 2.28/0.99  --sup_immed_triv                        [TrivRules]
% 2.28/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.28/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_immed_bw_main                     []
% 2.28/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.28/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.28/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.28/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.28/0.99  
% 2.28/0.99  ------ Combination Options
% 2.28/0.99  
% 2.28/0.99  --comb_res_mult                         3
% 2.28/0.99  --comb_sup_mult                         2
% 2.28/0.99  --comb_inst_mult                        10
% 2.28/0.99  
% 2.28/0.99  ------ Debug Options
% 2.28/0.99  
% 2.28/0.99  --dbg_backtrace                         false
% 2.28/0.99  --dbg_dump_prop_clauses                 false
% 2.28/0.99  --dbg_dump_prop_clauses_file            -
% 2.28/0.99  --dbg_out_stat                          false
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  ------ Proving...
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  % SZS status Theorem for theBenchmark.p
% 2.28/0.99  
% 2.28/0.99   Resolution empty clause
% 2.28/0.99  
% 2.28/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.28/0.99  
% 2.28/0.99  fof(f6,conjecture,(
% 2.28/0.99    ! [X0,X1,X2,X3,X4,X5,X6,X7] : (k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7) => ((X3 = X7 & X2 = X6 & X1 = X5 & X0 = X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f7,negated_conjecture,(
% 2.28/0.99    ~! [X0,X1,X2,X3,X4,X5,X6,X7] : (k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7) => ((X3 = X7 & X2 = X6 & X1 = X5 & X0 = X4) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.28/0.99    inference(negated_conjecture,[],[f6])).
% 2.28/0.99  
% 2.28/0.99  fof(f10,plain,(
% 2.28/0.99    ? [X0,X1,X2,X3,X4,X5,X6,X7] : (((X3 != X7 | X2 != X6 | X1 != X5 | X0 != X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7))),
% 2.28/0.99    inference(ennf_transformation,[],[f7])).
% 2.28/0.99  
% 2.28/0.99  fof(f11,plain,(
% 2.28/0.99    ? [X0,X1,X2,X3,X4,X5,X6,X7] : ((X3 != X7 | X2 != X6 | X1 != X5 | X0 != X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7))),
% 2.28/0.99    inference(flattening,[],[f10])).
% 2.28/0.99  
% 2.28/0.99  fof(f16,plain,(
% 2.28/0.99    ? [X0,X1,X2,X3,X4,X5,X6,X7] : ((X3 != X7 | X2 != X6 | X1 != X5 | X0 != X4) & k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & k4_zfmisc_1(X0,X1,X2,X3) = k4_zfmisc_1(X4,X5,X6,X7)) => ((sK3 != sK7 | sK2 != sK6 | sK1 != sK5 | sK0 != sK4) & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7))),
% 2.28/0.99    introduced(choice_axiom,[])).
% 2.28/0.99  
% 2.28/0.99  fof(f17,plain,(
% 2.28/0.99    (sK3 != sK7 | sK2 != sK6 | sK1 != sK5 | sK0 != sK4) & k1_xboole_0 != sK3 & k1_xboole_0 != sK2 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7)),
% 2.28/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f11,f16])).
% 2.28/0.99  
% 2.28/0.99  fof(f31,plain,(
% 2.28/0.99    k4_zfmisc_1(sK0,sK1,sK2,sK3) = k4_zfmisc_1(sK4,sK5,sK6,sK7)),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  fof(f3,axiom,(
% 2.28/0.99    ! [X0,X1,X2,X3] : k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f22,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k3_zfmisc_1(X0,X1,X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f3])).
% 2.28/0.99  
% 2.28/0.99  fof(f2,axiom,(
% 2.28/0.99    ! [X0,X1,X2] : k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f21,plain,(
% 2.28/0.99    ( ! [X2,X0,X1] : (k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) = k3_zfmisc_1(X0,X1,X2)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f2])).
% 2.28/0.99  
% 2.28/0.99  fof(f37,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.28/0.99    inference(definition_unfolding,[],[f22,f21])).
% 2.28/0.99  
% 2.28/0.99  fof(f46,plain,(
% 2.28/0.99    k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7)),
% 2.28/0.99    inference(definition_unfolding,[],[f31,f37,f37])).
% 2.28/0.99  
% 2.28/0.99  fof(f4,axiom,(
% 2.28/0.99    ! [X0,X1,X2,X3,X4,X5] : (k3_zfmisc_1(X0,X1,X2) = k3_zfmisc_1(X3,X4,X5) => ((X2 = X5 & X1 = X4 & X0 = X3) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f8,plain,(
% 2.28/0.99    ! [X0,X1,X2,X3,X4,X5] : (((X2 = X5 & X1 = X4 & X0 = X3) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5))),
% 2.28/0.99    inference(ennf_transformation,[],[f4])).
% 2.28/0.99  
% 2.28/0.99  fof(f9,plain,(
% 2.28/0.99    ! [X0,X1,X2,X3,X4,X5] : ((X2 = X5 & X1 = X4 & X0 = X3) | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5))),
% 2.28/0.99    inference(flattening,[],[f8])).
% 2.28/0.99  
% 2.28/0.99  fof(f25,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X2 = X5 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f9])).
% 2.28/0.99  
% 2.28/0.99  fof(f38,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X2 = X5 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5)) )),
% 2.28/0.99    inference(definition_unfolding,[],[f25,f21,f21])).
% 2.28/0.99  
% 2.28/0.99  fof(f32,plain,(
% 2.28/0.99    k1_xboole_0 != sK0),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  fof(f33,plain,(
% 2.28/0.99    k1_xboole_0 != sK1),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  fof(f34,plain,(
% 2.28/0.99    k1_xboole_0 != sK2),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  fof(f35,plain,(
% 2.28/0.99    k1_xboole_0 != sK3),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  fof(f5,axiom,(
% 2.28/0.99    ! [X0,X1,X2,X3] : ((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) <=> k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3))),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f14,plain,(
% 2.28/0.99    ! [X0,X1,X2,X3] : (((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) & (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | (k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0)))),
% 2.28/0.99    inference(nnf_transformation,[],[f5])).
% 2.28/0.99  
% 2.28/0.99  fof(f15,plain,(
% 2.28/0.99    ! [X0,X1,X2,X3] : (((k1_xboole_0 != X3 & k1_xboole_0 != X2 & k1_xboole_0 != X1 & k1_xboole_0 != X0) | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) & (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.28/0.99    inference(flattening,[],[f14])).
% 2.28/0.99  
% 2.28/0.99  fof(f26,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != k4_zfmisc_1(X0,X1,X2,X3) | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.28/0.99    inference(cnf_transformation,[],[f15])).
% 2.28/0.99  
% 2.28/0.99  fof(f45,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0 | k1_xboole_0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 2.28/0.99    inference(definition_unfolding,[],[f26,f37])).
% 2.28/0.99  
% 2.28/0.99  fof(f27,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X0 | k1_xboole_0 = k4_zfmisc_1(X0,X1,X2,X3)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f15])).
% 2.28/0.99  
% 2.28/0.99  fof(f44,plain,(
% 2.28/0.99    ( ! [X2,X0,X3,X1] : (k1_xboole_0 != X0 | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) = k1_xboole_0) )),
% 2.28/0.99    inference(definition_unfolding,[],[f27,f37])).
% 2.28/0.99  
% 2.28/0.99  fof(f52,plain,(
% 2.28/0.99    ( ! [X2,X3,X1] : (k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1),X2),X3) = k1_xboole_0) )),
% 2.28/0.99    inference(equality_resolution,[],[f44])).
% 2.28/0.99  
% 2.28/0.99  fof(f1,axiom,(
% 2.28/0.99    ! [X0,X1] : (k2_zfmisc_1(X0,X1) = k1_xboole_0 <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.28/0.99  
% 2.28/0.99  fof(f12,plain,(
% 2.28/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 2.28/0.99    inference(nnf_transformation,[],[f1])).
% 2.28/0.99  
% 2.28/0.99  fof(f13,plain,(
% 2.28/0.99    ! [X0,X1] : ((k2_zfmisc_1(X0,X1) = k1_xboole_0 | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0))),
% 2.28/0.99    inference(flattening,[],[f12])).
% 2.28/0.99  
% 2.28/0.99  fof(f18,plain,(
% 2.28/0.99    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(X0,X1) != k1_xboole_0) )),
% 2.28/0.99    inference(cnf_transformation,[],[f13])).
% 2.28/0.99  
% 2.28/0.99  fof(f24,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X1 = X4 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f9])).
% 2.28/0.99  
% 2.28/0.99  fof(f39,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X1 = X4 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5)) )),
% 2.28/0.99    inference(definition_unfolding,[],[f24,f21,f21])).
% 2.28/0.99  
% 2.28/0.99  fof(f23,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k3_zfmisc_1(X0,X1,X2) != k3_zfmisc_1(X3,X4,X5)) )),
% 2.28/0.99    inference(cnf_transformation,[],[f9])).
% 2.28/0.99  
% 2.28/0.99  fof(f40,plain,(
% 2.28/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (X0 = X3 | k1_xboole_0 = X2 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(X3,X4),X5)) )),
% 2.28/0.99    inference(definition_unfolding,[],[f23,f21,f21])).
% 2.28/0.99  
% 2.28/0.99  fof(f36,plain,(
% 2.28/0.99    sK3 != sK7 | sK2 != sK6 | sK1 != sK5 | sK0 != sK4),
% 2.28/0.99    inference(cnf_transformation,[],[f17])).
% 2.28/0.99  
% 2.28/0.99  cnf(c_16,negated_conjecture,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6),sK7) ),
% 2.28/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_3,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(X2,X3),X0) != k2_zfmisc_1(k2_zfmisc_1(X4,X5),X1)
% 2.28/0.99      | k1_xboole_0 = X5
% 2.28/0.99      | k1_xboole_0 = X4
% 2.28/0.99      | k1_xboole_0 = X1 ),
% 2.28/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_306,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
% 2.28/0.99      | sK7 = X2
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X2 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_16,c_3]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_687,plain,
% 2.28/0.99      ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
% 2.28/0.99      | sK2 = k1_xboole_0
% 2.28/0.99      | sK7 = sK3
% 2.28/0.99      | sK3 = k1_xboole_0 ),
% 2.28/0.99      inference(equality_resolution,[status(thm)],[c_306]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_15,negated_conjecture,
% 2.28/0.99      ( k1_xboole_0 != sK0 ),
% 2.28/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_14,negated_conjecture,
% 2.28/0.99      ( k1_xboole_0 != sK1 ),
% 2.28/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_13,negated_conjecture,
% 2.28/0.99      ( k1_xboole_0 != sK2 ),
% 2.28/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_12,negated_conjecture,
% 2.28/0.99      ( k1_xboole_0 != sK3 ),
% 2.28/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_10,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2),X3) != k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X2
% 2.28/0.99      | k1_xboole_0 = X3 ),
% 2.28/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_17,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) != k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_10]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_9,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0),X1),X2) = k1_xboole_0 ),
% 2.28/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_18,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0),k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_26,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_111,plain,
% 2.28/0.99      ( sK3 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK3 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_26]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_112,plain,
% 2.28/0.99      ( sK3 != k1_xboole_0 | k1_xboole_0 = sK3 | k1_xboole_0 != k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_111]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_113,plain,
% 2.28/0.99      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_26]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_114,plain,
% 2.28/0.99      ( sK2 != k1_xboole_0 | k1_xboole_0 = sK2 | k1_xboole_0 != k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_113]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2,plain,
% 2.28/0.99      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X0 ),
% 2.28/0.99      inference(cnf_transformation,[],[f18]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_107,plain,
% 2.28/0.99      ( k2_zfmisc_1(X0,sK1) != k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = sK1 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_148,plain,
% 2.28/0.99      ( k2_zfmisc_1(sK0,sK1) != k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = sK0
% 2.28/0.99      | k1_xboole_0 = sK1 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_107]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1376,plain,
% 2.28/0.99      ( sK7 = sK3 ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_687,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_314,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1) != k2_zfmisc_1(k2_zfmisc_1(X2,X3),X0)
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
% 2.28/0.99      | sK7 = k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X1 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_16,c_3]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1132,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
% 2.28/0.99      | sK7 = k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X0 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_16,c_314]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1381,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
% 2.28/0.99      | sK3 = k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X1 ),
% 2.28/0.99      inference(demodulation,[status(thm)],[c_1376,c_1132]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2640,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
% 2.28/0.99      | X0 = X1
% 2.28/0.99      | k1_xboole_0 = X1 ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_1381,c_12,c_17,c_18,c_112]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2641,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(sK4,sK5),sK6) = k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X1 ),
% 2.28/0.99      inference(renaming,[status(thm)],[c_2640]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_4,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(X2,X0),X3) != k2_zfmisc_1(k2_zfmisc_1(X4,X1),X5)
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X4
% 2.28/0.99      | k1_xboole_0 = X5 ),
% 2.28/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_382,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
% 2.28/0.99      | sK6 = X1
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X2 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_16,c_4]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_716,plain,
% 2.28/0.99      ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
% 2.28/0.99      | sK6 = sK2
% 2.28/0.99      | sK2 = k1_xboole_0
% 2.28/0.99      | sK3 = k1_xboole_0 ),
% 2.28/0.99      inference(equality_resolution,[status(thm)],[c_382]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1679,plain,
% 2.28/0.99      ( sK6 = sK2 ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_716,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_5,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(X0,X2),X3) != k2_zfmisc_1(k2_zfmisc_1(X1,X4),X5)
% 2.28/0.99      | k1_xboole_0 = X4
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X5 ),
% 2.28/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_504,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3) != k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)
% 2.28/0.99      | k2_zfmisc_1(sK4,sK5) = X0
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X2 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_16,c_5]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1048,plain,
% 2.28/0.99      ( k2_zfmisc_1(sK4,sK5) = k2_zfmisc_1(sK0,sK1)
% 2.28/0.99      | k2_zfmisc_1(sK0,sK1) = k1_xboole_0
% 2.28/0.99      | sK2 = k1_xboole_0
% 2.28/0.99      | sK3 = k1_xboole_0 ),
% 2.28/0.99      inference(equality_resolution,[status(thm)],[c_504]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1860,plain,
% 2.28/0.99      ( k2_zfmisc_1(sK4,sK5) = k2_zfmisc_1(sK0,sK1) ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_1048,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2642,plain,
% 2.28/0.99      ( X0 = X1
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X0) != k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2),sK3),X1)
% 2.28/0.99      | k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),sK2) = k1_xboole_0
% 2.28/0.99      | k1_xboole_0 = X0 ),
% 2.28/0.99      inference(light_normalisation,[status(thm)],[c_2641,c_1679,c_1860]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_115,plain,
% 2.28/0.99      ( sK1 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK1 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_26]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_116,plain,
% 2.28/0.99      ( sK1 != k1_xboole_0 | k1_xboole_0 = sK1 | k1_xboole_0 != k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_115]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_117,plain,
% 2.28/0.99      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_26]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_118,plain,
% 2.28/0.99      ( sK0 != k1_xboole_0 | k1_xboole_0 = sK0 | k1_xboole_0 != k1_xboole_0 ),
% 2.28/0.99      inference(instantiation,[status(thm)],[c_117]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_11,negated_conjecture,
% 2.28/0.99      ( sK0 != sK4 | sK1 != sK5 | sK2 != sK6 | sK3 != sK7 ),
% 2.28/0.99      inference(cnf_transformation,[],[f36]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1398,plain,
% 2.28/0.99      ( sK4 != sK0 | sK5 != sK1 | sK6 != sK2 | sK3 != sK3 ),
% 2.28/0.99      inference(demodulation,[status(thm)],[c_1376,c_11]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1402,plain,
% 2.28/0.99      ( sK4 != sK0 | sK5 != sK1 | sK6 != sK2 ),
% 2.28/0.99      inference(equality_resolution_simp,[status(thm)],[c_1398]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1665,plain,
% 2.28/0.99      ( sK5 != sK1 | sK4 != sK0 ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_1402,c_15,c_14,c_13,c_12,c_17,c_18,c_112,c_114,c_148,c_716]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1666,plain,
% 2.28/0.99      ( sK4 != sK0 | sK5 != sK1 ),
% 2.28/0.99      inference(renaming,[status(thm)],[c_1665]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1876,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),X3)
% 2.28/0.99      | sK5 = X1
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X2 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_1860,c_4]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2455,plain,
% 2.28/0.99      ( sK0 = k1_xboole_0 | sK5 = sK1 | sK1 = k1_xboole_0 | k1_xboole_0 = X0 ),
% 2.28/0.99      inference(equality_resolution,[status(thm)],[c_1876]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_1878,plain,
% 2.28/0.99      ( k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) != k2_zfmisc_1(k2_zfmisc_1(sK0,sK1),X3)
% 2.28/0.99      | sK4 = X0
% 2.28/0.99      | k1_xboole_0 = X0
% 2.28/0.99      | k1_xboole_0 = X1
% 2.28/0.99      | k1_xboole_0 = X2 ),
% 2.28/0.99      inference(superposition,[status(thm)],[c_1860,c_5]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2556,plain,
% 2.28/0.99      ( sK4 = sK0 | sK0 = k1_xboole_0 | sK1 = k1_xboole_0 | k1_xboole_0 = X0 ),
% 2.28/0.99      inference(equality_resolution,[status(thm)],[c_1878]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2647,plain,
% 2.28/0.99      ( k1_xboole_0 = X0 ),
% 2.28/0.99      inference(global_propositional_subsumption,
% 2.28/0.99                [status(thm)],
% 2.28/0.99                [c_2642,c_15,c_14,c_17,c_18,c_116,c_118,c_1666,c_2455,c_2556]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2683,plain,
% 2.28/0.99      ( k1_xboole_0 != k1_xboole_0 ),
% 2.28/0.99      inference(demodulation,[status(thm)],[c_2647,c_14]) ).
% 2.28/0.99  
% 2.28/0.99  cnf(c_2685,plain,
% 2.28/0.99      ( $false ),
% 2.28/0.99      inference(equality_resolution_simp,[status(thm)],[c_2683]) ).
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.28/0.99  
% 2.28/0.99  ------                               Statistics
% 2.28/0.99  
% 2.28/0.99  ------ General
% 2.28/0.99  
% 2.28/0.99  abstr_ref_over_cycles:                  0
% 2.28/0.99  abstr_ref_under_cycles:                 0
% 2.28/0.99  gc_basic_clause_elim:                   0
% 2.28/0.99  forced_gc_time:                         0
% 2.28/0.99  parsing_time:                           0.023
% 2.28/0.99  unif_index_cands_time:                  0.
% 2.28/0.99  unif_index_add_time:                    0.
% 2.28/0.99  orderings_time:                         0.
% 2.28/0.99  out_proof_time:                         0.007
% 2.28/0.99  total_time:                             0.163
% 2.28/0.99  num_of_symbols:                         41
% 2.28/0.99  num_of_terms:                           3025
% 2.28/0.99  
% 2.28/0.99  ------ Preprocessing
% 2.28/0.99  
% 2.28/0.99  num_of_splits:                          0
% 2.28/0.99  num_of_split_atoms:                     0
% 2.28/0.99  num_of_reused_defs:                     0
% 2.28/0.99  num_eq_ax_congr_red:                    0
% 2.28/0.99  num_of_sem_filtered_clauses:            0
% 2.28/0.99  num_of_subtypes:                        0
% 2.28/0.99  monotx_restored_types:                  0
% 2.28/0.99  sat_num_of_epr_types:                   0
% 2.28/0.99  sat_num_of_non_cyclic_types:            0
% 2.28/0.99  sat_guarded_non_collapsed_types:        0
% 2.28/0.99  num_pure_diseq_elim:                    0
% 2.28/0.99  simp_replaced_by:                       0
% 2.28/0.99  res_preprocessed:                       37
% 2.28/0.99  prep_upred:                             0
% 2.28/0.99  prep_unflattend:                        0
% 2.28/0.99  smt_new_axioms:                         0
% 2.28/0.99  pred_elim_cands:                        0
% 2.28/0.99  pred_elim:                              0
% 2.28/0.99  pred_elim_cl:                           0
% 2.28/0.99  pred_elim_cycles:                       0
% 2.28/0.99  merged_defs:                            0
% 2.28/0.99  merged_defs_ncl:                        0
% 2.28/0.99  bin_hyper_res:                          0
% 2.28/0.99  prep_cycles:                            2
% 2.28/0.99  pred_elim_time:                         0.
% 2.28/0.99  splitting_time:                         0.
% 2.28/0.99  sem_filter_time:                        0.
% 2.28/0.99  monotx_time:                            0.
% 2.28/0.99  subtype_inf_time:                       0.
% 2.28/0.99  
% 2.28/0.99  ------ Problem properties
% 2.28/0.99  
% 2.28/0.99  clauses:                                17
% 2.28/0.99  conjectures:                            6
% 2.28/0.99  epr:                                    5
% 2.28/0.99  horn:                                   12
% 2.28/0.99  ground:                                 6
% 2.28/0.99  unary:                                  11
% 2.28/0.99  binary:                                 0
% 2.28/0.99  lits:                                   38
% 2.28/0.99  lits_eq:                                38
% 2.28/0.99  fd_pure:                                0
% 2.28/0.99  fd_pseudo:                              0
% 2.28/0.99  fd_cond:                                2
% 2.28/0.99  fd_pseudo_cond:                         3
% 2.28/0.99  ac_symbols:                             0
% 2.28/0.99  
% 2.28/0.99  ------ Propositional Solver
% 2.28/0.99  
% 2.28/0.99  prop_solver_calls:                      19
% 2.28/0.99  prop_fast_solver_calls:                 663
% 2.28/0.99  smt_solver_calls:                       0
% 2.28/0.99  smt_fast_solver_calls:                  0
% 2.28/0.99  prop_num_of_clauses:                    979
% 2.28/0.99  prop_preprocess_simplified:             2978
% 2.28/0.99  prop_fo_subsumed:                       59
% 2.28/0.99  prop_solver_time:                       0.
% 2.28/0.99  smt_solver_time:                        0.
% 2.28/0.99  smt_fast_solver_time:                   0.
% 2.28/0.99  prop_fast_solver_time:                  0.
% 2.28/0.99  prop_unsat_core_time:                   0.
% 2.28/0.99  
% 2.28/0.99  ------ QBF
% 2.28/0.99  
% 2.28/0.99  qbf_q_res:                              0
% 2.28/0.99  qbf_num_tautologies:                    0
% 2.28/0.99  qbf_prep_cycles:                        0
% 2.28/0.99  
% 2.28/0.99  ------ BMC1
% 2.28/0.99  
% 2.28/0.99  bmc1_current_bound:                     -1
% 2.28/0.99  bmc1_last_solved_bound:                 -1
% 2.28/0.99  bmc1_unsat_core_size:                   -1
% 2.28/0.99  bmc1_unsat_core_parents_size:           -1
% 2.28/0.99  bmc1_merge_next_fun:                    0
% 2.28/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.28/0.99  
% 2.28/0.99  ------ Instantiation
% 2.28/0.99  
% 2.28/0.99  inst_num_of_clauses:                    748
% 2.28/0.99  inst_num_in_passive:                    32
% 2.28/0.99  inst_num_in_active:                     350
% 2.28/0.99  inst_num_in_unprocessed:                366
% 2.28/0.99  inst_num_of_loops:                      350
% 2.28/0.99  inst_num_of_learning_restarts:          0
% 2.28/0.99  inst_num_moves_active_passive:          0
% 2.28/0.99  inst_lit_activity:                      0
% 2.28/0.99  inst_lit_activity_moves:                0
% 2.28/0.99  inst_num_tautologies:                   0
% 2.28/0.99  inst_num_prop_implied:                  0
% 2.28/0.99  inst_num_existing_simplified:           0
% 2.28/0.99  inst_num_eq_res_simplified:             0
% 2.28/0.99  inst_num_child_elim:                    0
% 2.28/0.99  inst_num_of_dismatching_blockings:      0
% 2.28/0.99  inst_num_of_non_proper_insts:           723
% 2.28/0.99  inst_num_of_duplicates:                 0
% 2.28/0.99  inst_inst_num_from_inst_to_res:         0
% 2.28/0.99  inst_dismatching_checking_time:         0.
% 2.28/0.99  
% 2.28/0.99  ------ Resolution
% 2.28/0.99  
% 2.28/0.99  res_num_of_clauses:                     0
% 2.28/0.99  res_num_in_passive:                     0
% 2.28/0.99  res_num_in_active:                      0
% 2.28/0.99  res_num_of_loops:                       39
% 2.28/0.99  res_forward_subset_subsumed:            12
% 2.28/0.99  res_backward_subset_subsumed:           0
% 2.28/0.99  res_forward_subsumed:                   0
% 2.28/0.99  res_backward_subsumed:                  0
% 2.28/0.99  res_forward_subsumption_resolution:     0
% 2.28/0.99  res_backward_subsumption_resolution:    0
% 2.28/0.99  res_clause_to_clause_subsumption:       919
% 2.28/0.99  res_orphan_elimination:                 0
% 2.28/0.99  res_tautology_del:                      1
% 2.28/0.99  res_num_eq_res_simplified:              0
% 2.28/0.99  res_num_sel_changes:                    0
% 2.28/0.99  res_moves_from_active_to_pass:          0
% 2.28/0.99  
% 2.28/0.99  ------ Superposition
% 2.28/0.99  
% 2.28/0.99  sup_time_total:                         0.
% 2.28/0.99  sup_time_generating:                    0.
% 2.28/0.99  sup_time_sim_full:                      0.
% 2.28/0.99  sup_time_sim_immed:                     0.
% 2.28/0.99  
% 2.28/0.99  sup_num_of_clauses:                     36
% 2.28/0.99  sup_num_in_active:                      2
% 2.28/0.99  sup_num_in_passive:                     34
% 2.28/0.99  sup_num_of_loops:                       68
% 2.28/0.99  sup_fw_superposition:                   184
% 2.28/0.99  sup_bw_superposition:                   55
% 2.28/0.99  sup_immediate_simplified:               59
% 2.28/0.99  sup_given_eliminated:                   0
% 2.28/0.99  comparisons_done:                       0
% 2.28/0.99  comparisons_avoided:                    0
% 2.28/0.99  
% 2.28/0.99  ------ Simplifications
% 2.28/0.99  
% 2.28/0.99  
% 2.28/0.99  sim_fw_subset_subsumed:                 18
% 2.28/0.99  sim_bw_subset_subsumed:                 6
% 2.28/0.99  sim_fw_subsumed:                        31
% 2.28/0.99  sim_bw_subsumed:                        4
% 2.28/0.99  sim_fw_subsumption_res:                 7
% 2.28/0.99  sim_bw_subsumption_res:                 0
% 2.28/0.99  sim_tautology_del:                      0
% 2.28/0.99  sim_eq_tautology_del:                   98
% 2.28/0.99  sim_eq_res_simp:                        1
% 2.28/0.99  sim_fw_demodulated:                     26
% 2.28/0.99  sim_bw_demodulated:                     63
% 2.28/0.99  sim_light_normalised:                   23
% 2.28/0.99  sim_joinable_taut:                      0
% 2.28/0.99  sim_joinable_simp:                      0
% 2.28/0.99  sim_ac_normalised:                      0
% 2.28/0.99  sim_smt_subsumption:                    0
% 2.28/0.99  
%------------------------------------------------------------------------------
