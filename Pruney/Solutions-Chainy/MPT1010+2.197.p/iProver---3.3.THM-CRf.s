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
% DateTime   : Thu Dec  3 12:06:39 EST 2020

% Result     : Theorem 0.84s
% Output     : CNFRefutation 0.84s
% Verified   : 
% Statistics : Number of formulae       :   70 ( 121 expanded)
%              Number of clauses        :   30 (  31 expanded)
%              Number of leaves         :   10 (  27 expanded)
%              Depth                    :   16
%              Number of atoms          :  259 ( 568 expanded)
%              Number of equality atoms :  117 ( 268 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f14])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK0(X0,X1,X2) != X1
            & sK0(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( sK0(X0,X1,X2) = X1
          | sK0(X0,X1,X2) = X0
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK0(X0,X1,X2) != X1
              & sK0(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( sK0(X0,X1,X2) = X1
            | sK0(X0,X1,X2) = X0
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).

fof(f22,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f43,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k1_enumset1(X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f22,f29])).

fof(f50,plain,(
    ! [X4,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,k1_enumset1(X0,X0,X1)) ) ),
    inference(equality_resolution,[],[f43])).

fof(f7,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => k1_funct_1(X3,X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
          & v1_funct_2(X3,X0,k1_tarski(X1))
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => k1_funct_1(X3,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f12,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f13,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f12])).

fof(f19,plain,
    ( ? [X0,X1,X2,X3] :
        ( k1_funct_1(X3,X2) != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
   => ( k1_funct_1(sK4,sK3) != sK2
      & r2_hidden(sK3,sK1)
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2))))
      & v1_funct_2(sK4,sK1,k1_tarski(sK2))
      & v1_funct_1(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( k1_funct_1(sK4,sK3) != sK2
    & r2_hidden(sK3,sK1)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2))))
    & v1_funct_2(sK4,sK1,k1_tarski(sK2))
    & v1_funct_1(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f13,f19])).

fof(f33,plain,(
    v1_funct_2(sK4,sK1,k1_tarski(sK2)) ),
    inference(cnf_transformation,[],[f20])).

fof(f3,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f37,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f28,f29])).

fof(f45,plain,(
    v1_funct_2(sK4,sK1,k1_enumset1(sK2,sK2,sK2)) ),
    inference(definition_unfolding,[],[f33,f37])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),X1)
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f11,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f10])).

fof(f31,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f34,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2)))) ),
    inference(cnf_transformation,[],[f20])).

fof(f44,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2)))) ),
    inference(definition_unfolding,[],[f34,f37])).

fof(f32,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f42,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k1_enumset1(X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f23,f29])).

fof(f48,plain,(
    ! [X4,X2,X1] :
      ( r2_hidden(X4,X2)
      | k1_enumset1(X4,X4,X1) != X2 ) ),
    inference(equality_resolution,[],[f42])).

fof(f49,plain,(
    ! [X4,X1] : r2_hidden(X4,k1_enumset1(X4,X4,X1)) ),
    inference(equality_resolution,[],[f48])).

fof(f36,plain,(
    k1_funct_1(sK4,sK3) != sK2 ),
    inference(cnf_transformation,[],[f20])).

fof(f35,plain,(
    r2_hidden(sK3,sK1) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_279,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_504,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X2,k1_enumset1(X3,X3,X2))
    | X0 != X2
    | X1 != k1_enumset1(X3,X3,X2) ),
    inference(instantiation,[status(thm)],[c_279])).

cnf(c_614,plain,
    ( r2_hidden(X0,k1_xboole_0)
    | ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2))
    | X0 != sK2
    | k1_xboole_0 != k1_enumset1(sK2,sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_504])).

cnf(c_616,plain,
    ( ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2))
    | r2_hidden(sK2,k1_xboole_0)
    | sK2 != sK2
    | k1_xboole_0 != k1_enumset1(sK2,sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_614])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,k1_enumset1(X1,X1,X2))
    | X0 = X1
    | X0 = X2 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_499,plain,
    ( ~ r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,X0))
    | k1_funct_1(sK4,sK3) = X0
    | k1_funct_1(sK4,sK3) = sK2 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_501,plain,
    ( ~ r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,sK2))
    | k1_funct_1(sK4,sK3) = sK2 ),
    inference(instantiation,[status(thm)],[c_499])).

cnf(c_12,negated_conjecture,
    ( v1_funct_2(sK4,sK1,k1_enumset1(sK2,sK2,sK2)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_8,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),X2)
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2)))) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_156,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),X2)
    | ~ v1_funct_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK4 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_11])).

cnf(c_157,plain,
    ( ~ v1_funct_2(sK4,X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(k1_funct_1(sK4,X2),X1)
    | ~ v1_funct_1(sK4)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_156])).

cnf(c_13,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_161,plain,
    ( r2_hidden(k1_funct_1(sK4,X2),X1)
    | ~ r2_hidden(X2,X0)
    | ~ v1_funct_2(sK4,X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_157,c_13])).

cnf(c_162,plain,
    ( ~ v1_funct_2(sK4,X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(k1_funct_1(sK4,X2),X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_161])).

cnf(c_189,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k1_funct_1(sK4,X0),X2)
    | k1_enumset1(sK2,sK2,sK2) != X2
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK1 != X1
    | sK4 != sK4
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_162])).

cnf(c_190,plain,
    ( ~ r2_hidden(X0,sK1)
    | r2_hidden(k1_funct_1(sK4,X0),k1_enumset1(sK2,sK2,sK2))
    | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2)))
    | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
    inference(unflattening,[status(thm)],[c_189])).

cnf(c_221,plain,
    ( ~ r2_hidden(X0,sK1)
    | r2_hidden(k1_funct_1(sK4,X0),k1_enumset1(sK2,sK2,sK2))
    | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_190])).

cnf(c_495,plain,
    ( r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,sK2))
    | ~ r2_hidden(sK3,sK1)
    | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_221])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_145,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_7])).

cnf(c_146,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_145])).

cnf(c_148,plain,
    ( ~ r2_hidden(sK2,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_146])).

cnf(c_5,plain,
    ( r2_hidden(X0,k1_enumset1(X0,X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_28,plain,
    ( r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_25,plain,
    ( ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2))
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_9,negated_conjecture,
    ( k1_funct_1(sK4,sK3) != sK2 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_10,negated_conjecture,
    ( r2_hidden(sK3,sK1) ),
    inference(cnf_transformation,[],[f35])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_616,c_501,c_495,c_148,c_28,c_25,c_9,c_10])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n015.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 15:07:38 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 0.84/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.84/0.99  
% 0.84/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.84/0.99  
% 0.84/0.99  ------  iProver source info
% 0.84/0.99  
% 0.84/0.99  git: date: 2020-06-30 10:37:57 +0100
% 0.84/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.84/0.99  git: non_committed_changes: false
% 0.84/0.99  git: last_make_outside_of_git: false
% 0.84/0.99  
% 0.84/0.99  ------ 
% 0.84/0.99  
% 0.84/0.99  ------ Input Options
% 0.84/0.99  
% 0.84/0.99  --out_options                           all
% 0.84/0.99  --tptp_safe_out                         true
% 0.84/0.99  --problem_path                          ""
% 0.84/0.99  --include_path                          ""
% 0.84/0.99  --clausifier                            res/vclausify_rel
% 0.84/0.99  --clausifier_options                    --mode clausify
% 0.84/0.99  --stdin                                 false
% 0.84/0.99  --stats_out                             all
% 0.84/0.99  
% 0.84/0.99  ------ General Options
% 0.84/0.99  
% 0.84/0.99  --fof                                   false
% 0.84/0.99  --time_out_real                         305.
% 0.84/0.99  --time_out_virtual                      -1.
% 0.84/0.99  --symbol_type_check                     false
% 0.84/0.99  --clausify_out                          false
% 0.84/0.99  --sig_cnt_out                           false
% 0.84/0.99  --trig_cnt_out                          false
% 0.84/0.99  --trig_cnt_out_tolerance                1.
% 0.84/0.99  --trig_cnt_out_sk_spl                   false
% 0.84/0.99  --abstr_cl_out                          false
% 0.84/0.99  
% 0.84/0.99  ------ Global Options
% 0.84/0.99  
% 0.84/0.99  --schedule                              default
% 0.84/0.99  --add_important_lit                     false
% 0.84/0.99  --prop_solver_per_cl                    1000
% 0.84/0.99  --min_unsat_core                        false
% 0.84/0.99  --soft_assumptions                      false
% 0.84/0.99  --soft_lemma_size                       3
% 0.84/0.99  --prop_impl_unit_size                   0
% 0.84/0.99  --prop_impl_unit                        []
% 0.84/0.99  --share_sel_clauses                     true
% 0.84/0.99  --reset_solvers                         false
% 0.84/0.99  --bc_imp_inh                            [conj_cone]
% 0.84/0.99  --conj_cone_tolerance                   3.
% 0.84/0.99  --extra_neg_conj                        none
% 0.84/0.99  --large_theory_mode                     true
% 0.84/0.99  --prolific_symb_bound                   200
% 0.84/0.99  --lt_threshold                          2000
% 0.84/0.99  --clause_weak_htbl                      true
% 0.84/0.99  --gc_record_bc_elim                     false
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing Options
% 0.84/0.99  
% 0.84/0.99  --preprocessing_flag                    true
% 0.84/0.99  --time_out_prep_mult                    0.1
% 0.84/0.99  --splitting_mode                        input
% 0.84/0.99  --splitting_grd                         true
% 0.84/0.99  --splitting_cvd                         false
% 0.84/0.99  --splitting_cvd_svl                     false
% 0.84/0.99  --splitting_nvd                         32
% 0.84/0.99  --sub_typing                            true
% 0.84/0.99  --prep_gs_sim                           true
% 0.84/0.99  --prep_unflatten                        true
% 0.84/0.99  --prep_res_sim                          true
% 0.84/0.99  --prep_upred                            true
% 0.84/0.99  --prep_sem_filter                       exhaustive
% 0.84/0.99  --prep_sem_filter_out                   false
% 0.84/0.99  --pred_elim                             true
% 0.84/0.99  --res_sim_input                         true
% 0.84/0.99  --eq_ax_congr_red                       true
% 0.84/0.99  --pure_diseq_elim                       true
% 0.84/0.99  --brand_transform                       false
% 0.84/0.99  --non_eq_to_eq                          false
% 0.84/0.99  --prep_def_merge                        true
% 0.84/0.99  --prep_def_merge_prop_impl              false
% 0.84/0.99  --prep_def_merge_mbd                    true
% 0.84/0.99  --prep_def_merge_tr_red                 false
% 0.84/0.99  --prep_def_merge_tr_cl                  false
% 0.84/0.99  --smt_preprocessing                     true
% 0.84/0.99  --smt_ac_axioms                         fast
% 0.84/0.99  --preprocessed_out                      false
% 0.84/0.99  --preprocessed_stats                    false
% 0.84/0.99  
% 0.84/0.99  ------ Abstraction refinement Options
% 0.84/0.99  
% 0.84/0.99  --abstr_ref                             []
% 0.84/0.99  --abstr_ref_prep                        false
% 0.84/0.99  --abstr_ref_until_sat                   false
% 0.84/0.99  --abstr_ref_sig_restrict                funpre
% 0.84/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 0.84/0.99  --abstr_ref_under                       []
% 0.84/0.99  
% 0.84/0.99  ------ SAT Options
% 0.84/0.99  
% 0.84/0.99  --sat_mode                              false
% 0.84/0.99  --sat_fm_restart_options                ""
% 0.84/0.99  --sat_gr_def                            false
% 0.84/0.99  --sat_epr_types                         true
% 0.84/0.99  --sat_non_cyclic_types                  false
% 0.84/0.99  --sat_finite_models                     false
% 0.84/0.99  --sat_fm_lemmas                         false
% 0.84/0.99  --sat_fm_prep                           false
% 0.84/0.99  --sat_fm_uc_incr                        true
% 0.84/0.99  --sat_out_model                         small
% 0.84/0.99  --sat_out_clauses                       false
% 0.84/0.99  
% 0.84/0.99  ------ QBF Options
% 0.84/0.99  
% 0.84/0.99  --qbf_mode                              false
% 0.84/0.99  --qbf_elim_univ                         false
% 0.84/0.99  --qbf_dom_inst                          none
% 0.84/0.99  --qbf_dom_pre_inst                      false
% 0.84/0.99  --qbf_sk_in                             false
% 0.84/0.99  --qbf_pred_elim                         true
% 0.84/0.99  --qbf_split                             512
% 0.84/0.99  
% 0.84/0.99  ------ BMC1 Options
% 0.84/0.99  
% 0.84/0.99  --bmc1_incremental                      false
% 0.84/0.99  --bmc1_axioms                           reachable_all
% 0.84/0.99  --bmc1_min_bound                        0
% 0.84/0.99  --bmc1_max_bound                        -1
% 0.84/0.99  --bmc1_max_bound_default                -1
% 0.84/0.99  --bmc1_symbol_reachability              true
% 0.84/0.99  --bmc1_property_lemmas                  false
% 0.84/0.99  --bmc1_k_induction                      false
% 0.84/0.99  --bmc1_non_equiv_states                 false
% 0.84/0.99  --bmc1_deadlock                         false
% 0.84/0.99  --bmc1_ucm                              false
% 0.84/0.99  --bmc1_add_unsat_core                   none
% 0.84/0.99  --bmc1_unsat_core_children              false
% 0.84/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 0.84/0.99  --bmc1_out_stat                         full
% 0.84/0.99  --bmc1_ground_init                      false
% 0.84/0.99  --bmc1_pre_inst_next_state              false
% 0.84/0.99  --bmc1_pre_inst_state                   false
% 0.84/0.99  --bmc1_pre_inst_reach_state             false
% 0.84/0.99  --bmc1_out_unsat_core                   false
% 0.84/0.99  --bmc1_aig_witness_out                  false
% 0.84/0.99  --bmc1_verbose                          false
% 0.84/0.99  --bmc1_dump_clauses_tptp                false
% 0.84/0.99  --bmc1_dump_unsat_core_tptp             false
% 0.84/0.99  --bmc1_dump_file                        -
% 0.84/0.99  --bmc1_ucm_expand_uc_limit              128
% 0.84/0.99  --bmc1_ucm_n_expand_iterations          6
% 0.84/0.99  --bmc1_ucm_extend_mode                  1
% 0.84/0.99  --bmc1_ucm_init_mode                    2
% 0.84/0.99  --bmc1_ucm_cone_mode                    none
% 0.84/0.99  --bmc1_ucm_reduced_relation_type        0
% 0.84/0.99  --bmc1_ucm_relax_model                  4
% 0.84/0.99  --bmc1_ucm_full_tr_after_sat            true
% 0.84/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 0.84/0.99  --bmc1_ucm_layered_model                none
% 0.84/0.99  --bmc1_ucm_max_lemma_size               10
% 0.84/0.99  
% 0.84/0.99  ------ AIG Options
% 0.84/0.99  
% 0.84/0.99  --aig_mode                              false
% 0.84/0.99  
% 0.84/0.99  ------ Instantiation Options
% 0.84/0.99  
% 0.84/0.99  --instantiation_flag                    true
% 0.84/0.99  --inst_sos_flag                         false
% 0.84/0.99  --inst_sos_phase                        true
% 0.84/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.84/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.84/0.99  --inst_lit_sel_side                     num_symb
% 0.84/0.99  --inst_solver_per_active                1400
% 0.84/0.99  --inst_solver_calls_frac                1.
% 0.84/0.99  --inst_passive_queue_type               priority_queues
% 0.84/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.84/0.99  --inst_passive_queues_freq              [25;2]
% 0.84/0.99  --inst_dismatching                      true
% 0.84/0.99  --inst_eager_unprocessed_to_passive     true
% 0.84/0.99  --inst_prop_sim_given                   true
% 0.84/0.99  --inst_prop_sim_new                     false
% 0.84/0.99  --inst_subs_new                         false
% 0.84/0.99  --inst_eq_res_simp                      false
% 0.84/0.99  --inst_subs_given                       false
% 0.84/0.99  --inst_orphan_elimination               true
% 0.84/0.99  --inst_learning_loop_flag               true
% 0.84/0.99  --inst_learning_start                   3000
% 0.84/0.99  --inst_learning_factor                  2
% 0.84/0.99  --inst_start_prop_sim_after_learn       3
% 0.84/0.99  --inst_sel_renew                        solver
% 0.84/0.99  --inst_lit_activity_flag                true
% 0.84/0.99  --inst_restr_to_given                   false
% 0.84/0.99  --inst_activity_threshold               500
% 0.84/0.99  --inst_out_proof                        true
% 0.84/0.99  
% 0.84/0.99  ------ Resolution Options
% 0.84/0.99  
% 0.84/0.99  --resolution_flag                       true
% 0.84/0.99  --res_lit_sel                           adaptive
% 0.84/0.99  --res_lit_sel_side                      none
% 0.84/0.99  --res_ordering                          kbo
% 0.84/0.99  --res_to_prop_solver                    active
% 0.84/0.99  --res_prop_simpl_new                    false
% 0.84/0.99  --res_prop_simpl_given                  true
% 0.84/0.99  --res_passive_queue_type                priority_queues
% 0.84/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.84/0.99  --res_passive_queues_freq               [15;5]
% 0.84/0.99  --res_forward_subs                      full
% 0.84/0.99  --res_backward_subs                     full
% 0.84/0.99  --res_forward_subs_resolution           true
% 0.84/0.99  --res_backward_subs_resolution          true
% 0.84/0.99  --res_orphan_elimination                true
% 0.84/0.99  --res_time_limit                        2.
% 0.84/0.99  --res_out_proof                         true
% 0.84/0.99  
% 0.84/0.99  ------ Superposition Options
% 0.84/0.99  
% 0.84/0.99  --superposition_flag                    true
% 0.84/0.99  --sup_passive_queue_type                priority_queues
% 0.84/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.84/0.99  --sup_passive_queues_freq               [8;1;4]
% 0.84/0.99  --demod_completeness_check              fast
% 0.84/0.99  --demod_use_ground                      true
% 0.84/0.99  --sup_to_prop_solver                    passive
% 0.84/0.99  --sup_prop_simpl_new                    true
% 0.84/0.99  --sup_prop_simpl_given                  true
% 0.84/0.99  --sup_fun_splitting                     false
% 0.84/0.99  --sup_smt_interval                      50000
% 0.84/0.99  
% 0.84/0.99  ------ Superposition Simplification Setup
% 0.84/0.99  
% 0.84/0.99  --sup_indices_passive                   []
% 0.84/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 0.84/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_full_bw                           [BwDemod]
% 0.84/0.99  --sup_immed_triv                        [TrivRules]
% 0.84/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.84/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_immed_bw_main                     []
% 0.84/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.84/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 0.84/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.84/0.99  
% 0.84/0.99  ------ Combination Options
% 0.84/0.99  
% 0.84/0.99  --comb_res_mult                         3
% 0.84/0.99  --comb_sup_mult                         2
% 0.84/0.99  --comb_inst_mult                        10
% 0.84/0.99  
% 0.84/0.99  ------ Debug Options
% 0.84/0.99  
% 0.84/0.99  --dbg_backtrace                         false
% 0.84/0.99  --dbg_dump_prop_clauses                 false
% 0.84/0.99  --dbg_dump_prop_clauses_file            -
% 0.84/0.99  --dbg_out_stat                          false
% 0.84/0.99  ------ Parsing...
% 0.84/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.84/0.99  ------ Proving...
% 0.84/0.99  ------ Problem Properties 
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  clauses                                 10
% 0.84/0.99  conjectures                             2
% 0.84/0.99  EPR                                     2
% 0.84/0.99  Horn                                    7
% 0.84/0.99  unary                                   5
% 0.84/0.99  binary                                  0
% 0.84/0.99  lits                                    21
% 0.84/0.99  lits eq                                 11
% 0.84/0.99  fd_pure                                 0
% 0.84/0.99  fd_pseudo                               0
% 0.84/0.99  fd_cond                                 0
% 0.84/0.99  fd_pseudo_cond                          3
% 0.84/0.99  AC symbols                              0
% 0.84/0.99  
% 0.84/0.99  ------ Schedule dynamic 5 is on 
% 0.84/0.99  
% 0.84/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  ------ 
% 0.84/0.99  Current options:
% 0.84/0.99  ------ 
% 0.84/0.99  
% 0.84/0.99  ------ Input Options
% 0.84/0.99  
% 0.84/0.99  --out_options                           all
% 0.84/0.99  --tptp_safe_out                         true
% 0.84/0.99  --problem_path                          ""
% 0.84/0.99  --include_path                          ""
% 0.84/0.99  --clausifier                            res/vclausify_rel
% 0.84/0.99  --clausifier_options                    --mode clausify
% 0.84/0.99  --stdin                                 false
% 0.84/0.99  --stats_out                             all
% 0.84/0.99  
% 0.84/0.99  ------ General Options
% 0.84/0.99  
% 0.84/0.99  --fof                                   false
% 0.84/0.99  --time_out_real                         305.
% 0.84/0.99  --time_out_virtual                      -1.
% 0.84/0.99  --symbol_type_check                     false
% 0.84/0.99  --clausify_out                          false
% 0.84/0.99  --sig_cnt_out                           false
% 0.84/0.99  --trig_cnt_out                          false
% 0.84/0.99  --trig_cnt_out_tolerance                1.
% 0.84/0.99  --trig_cnt_out_sk_spl                   false
% 0.84/0.99  --abstr_cl_out                          false
% 0.84/0.99  
% 0.84/0.99  ------ Global Options
% 0.84/0.99  
% 0.84/0.99  --schedule                              default
% 0.84/0.99  --add_important_lit                     false
% 0.84/0.99  --prop_solver_per_cl                    1000
% 0.84/0.99  --min_unsat_core                        false
% 0.84/0.99  --soft_assumptions                      false
% 0.84/0.99  --soft_lemma_size                       3
% 0.84/0.99  --prop_impl_unit_size                   0
% 0.84/0.99  --prop_impl_unit                        []
% 0.84/0.99  --share_sel_clauses                     true
% 0.84/0.99  --reset_solvers                         false
% 0.84/0.99  --bc_imp_inh                            [conj_cone]
% 0.84/0.99  --conj_cone_tolerance                   3.
% 0.84/0.99  --extra_neg_conj                        none
% 0.84/0.99  --large_theory_mode                     true
% 0.84/0.99  --prolific_symb_bound                   200
% 0.84/0.99  --lt_threshold                          2000
% 0.84/0.99  --clause_weak_htbl                      true
% 0.84/0.99  --gc_record_bc_elim                     false
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing Options
% 0.84/0.99  
% 0.84/0.99  --preprocessing_flag                    true
% 0.84/0.99  --time_out_prep_mult                    0.1
% 0.84/0.99  --splitting_mode                        input
% 0.84/0.99  --splitting_grd                         true
% 0.84/0.99  --splitting_cvd                         false
% 0.84/0.99  --splitting_cvd_svl                     false
% 0.84/0.99  --splitting_nvd                         32
% 0.84/0.99  --sub_typing                            true
% 0.84/0.99  --prep_gs_sim                           true
% 0.84/0.99  --prep_unflatten                        true
% 0.84/0.99  --prep_res_sim                          true
% 0.84/0.99  --prep_upred                            true
% 0.84/0.99  --prep_sem_filter                       exhaustive
% 0.84/0.99  --prep_sem_filter_out                   false
% 0.84/0.99  --pred_elim                             true
% 0.84/0.99  --res_sim_input                         true
% 0.84/0.99  --eq_ax_congr_red                       true
% 0.84/0.99  --pure_diseq_elim                       true
% 0.84/0.99  --brand_transform                       false
% 0.84/0.99  --non_eq_to_eq                          false
% 0.84/0.99  --prep_def_merge                        true
% 0.84/0.99  --prep_def_merge_prop_impl              false
% 0.84/0.99  --prep_def_merge_mbd                    true
% 0.84/0.99  --prep_def_merge_tr_red                 false
% 0.84/0.99  --prep_def_merge_tr_cl                  false
% 0.84/0.99  --smt_preprocessing                     true
% 0.84/0.99  --smt_ac_axioms                         fast
% 0.84/0.99  --preprocessed_out                      false
% 0.84/0.99  --preprocessed_stats                    false
% 0.84/0.99  
% 0.84/0.99  ------ Abstraction refinement Options
% 0.84/0.99  
% 0.84/0.99  --abstr_ref                             []
% 0.84/0.99  --abstr_ref_prep                        false
% 0.84/0.99  --abstr_ref_until_sat                   false
% 0.84/0.99  --abstr_ref_sig_restrict                funpre
% 0.84/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 0.84/0.99  --abstr_ref_under                       []
% 0.84/0.99  
% 0.84/0.99  ------ SAT Options
% 0.84/0.99  
% 0.84/0.99  --sat_mode                              false
% 0.84/0.99  --sat_fm_restart_options                ""
% 0.84/0.99  --sat_gr_def                            false
% 0.84/0.99  --sat_epr_types                         true
% 0.84/0.99  --sat_non_cyclic_types                  false
% 0.84/0.99  --sat_finite_models                     false
% 0.84/0.99  --sat_fm_lemmas                         false
% 0.84/0.99  --sat_fm_prep                           false
% 0.84/0.99  --sat_fm_uc_incr                        true
% 0.84/0.99  --sat_out_model                         small
% 0.84/0.99  --sat_out_clauses                       false
% 0.84/0.99  
% 0.84/0.99  ------ QBF Options
% 0.84/0.99  
% 0.84/0.99  --qbf_mode                              false
% 0.84/0.99  --qbf_elim_univ                         false
% 0.84/0.99  --qbf_dom_inst                          none
% 0.84/0.99  --qbf_dom_pre_inst                      false
% 0.84/0.99  --qbf_sk_in                             false
% 0.84/0.99  --qbf_pred_elim                         true
% 0.84/0.99  --qbf_split                             512
% 0.84/0.99  
% 0.84/0.99  ------ BMC1 Options
% 0.84/0.99  
% 0.84/0.99  --bmc1_incremental                      false
% 0.84/0.99  --bmc1_axioms                           reachable_all
% 0.84/0.99  --bmc1_min_bound                        0
% 0.84/0.99  --bmc1_max_bound                        -1
% 0.84/0.99  --bmc1_max_bound_default                -1
% 0.84/0.99  --bmc1_symbol_reachability              true
% 0.84/0.99  --bmc1_property_lemmas                  false
% 0.84/0.99  --bmc1_k_induction                      false
% 0.84/0.99  --bmc1_non_equiv_states                 false
% 0.84/0.99  --bmc1_deadlock                         false
% 0.84/0.99  --bmc1_ucm                              false
% 0.84/0.99  --bmc1_add_unsat_core                   none
% 0.84/0.99  --bmc1_unsat_core_children              false
% 0.84/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 0.84/0.99  --bmc1_out_stat                         full
% 0.84/0.99  --bmc1_ground_init                      false
% 0.84/0.99  --bmc1_pre_inst_next_state              false
% 0.84/0.99  --bmc1_pre_inst_state                   false
% 0.84/0.99  --bmc1_pre_inst_reach_state             false
% 0.84/0.99  --bmc1_out_unsat_core                   false
% 0.84/0.99  --bmc1_aig_witness_out                  false
% 0.84/0.99  --bmc1_verbose                          false
% 0.84/0.99  --bmc1_dump_clauses_tptp                false
% 0.84/0.99  --bmc1_dump_unsat_core_tptp             false
% 0.84/0.99  --bmc1_dump_file                        -
% 0.84/0.99  --bmc1_ucm_expand_uc_limit              128
% 0.84/0.99  --bmc1_ucm_n_expand_iterations          6
% 0.84/0.99  --bmc1_ucm_extend_mode                  1
% 0.84/0.99  --bmc1_ucm_init_mode                    2
% 0.84/0.99  --bmc1_ucm_cone_mode                    none
% 0.84/0.99  --bmc1_ucm_reduced_relation_type        0
% 0.84/0.99  --bmc1_ucm_relax_model                  4
% 0.84/0.99  --bmc1_ucm_full_tr_after_sat            true
% 0.84/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 0.84/0.99  --bmc1_ucm_layered_model                none
% 0.84/0.99  --bmc1_ucm_max_lemma_size               10
% 0.84/0.99  
% 0.84/0.99  ------ AIG Options
% 0.84/0.99  
% 0.84/0.99  --aig_mode                              false
% 0.84/0.99  
% 0.84/0.99  ------ Instantiation Options
% 0.84/0.99  
% 0.84/0.99  --instantiation_flag                    true
% 0.84/0.99  --inst_sos_flag                         false
% 0.84/0.99  --inst_sos_phase                        true
% 0.84/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.84/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.84/0.99  --inst_lit_sel_side                     none
% 0.84/0.99  --inst_solver_per_active                1400
% 0.84/0.99  --inst_solver_calls_frac                1.
% 0.84/0.99  --inst_passive_queue_type               priority_queues
% 0.84/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.84/0.99  --inst_passive_queues_freq              [25;2]
% 0.84/0.99  --inst_dismatching                      true
% 0.84/0.99  --inst_eager_unprocessed_to_passive     true
% 0.84/0.99  --inst_prop_sim_given                   true
% 0.84/0.99  --inst_prop_sim_new                     false
% 0.84/0.99  --inst_subs_new                         false
% 0.84/0.99  --inst_eq_res_simp                      false
% 0.84/0.99  --inst_subs_given                       false
% 0.84/0.99  --inst_orphan_elimination               true
% 0.84/0.99  --inst_learning_loop_flag               true
% 0.84/0.99  --inst_learning_start                   3000
% 0.84/0.99  --inst_learning_factor                  2
% 0.84/0.99  --inst_start_prop_sim_after_learn       3
% 0.84/0.99  --inst_sel_renew                        solver
% 0.84/0.99  --inst_lit_activity_flag                true
% 0.84/0.99  --inst_restr_to_given                   false
% 0.84/0.99  --inst_activity_threshold               500
% 0.84/0.99  --inst_out_proof                        true
% 0.84/0.99  
% 0.84/0.99  ------ Resolution Options
% 0.84/0.99  
% 0.84/0.99  --resolution_flag                       false
% 0.84/0.99  --res_lit_sel                           adaptive
% 0.84/0.99  --res_lit_sel_side                      none
% 0.84/0.99  --res_ordering                          kbo
% 0.84/0.99  --res_to_prop_solver                    active
% 0.84/0.99  --res_prop_simpl_new                    false
% 0.84/0.99  --res_prop_simpl_given                  true
% 0.84/0.99  --res_passive_queue_type                priority_queues
% 0.84/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.84/0.99  --res_passive_queues_freq               [15;5]
% 0.84/0.99  --res_forward_subs                      full
% 0.84/0.99  --res_backward_subs                     full
% 0.84/0.99  --res_forward_subs_resolution           true
% 0.84/0.99  --res_backward_subs_resolution          true
% 0.84/0.99  --res_orphan_elimination                true
% 0.84/0.99  --res_time_limit                        2.
% 0.84/0.99  --res_out_proof                         true
% 0.84/0.99  
% 0.84/0.99  ------ Superposition Options
% 0.84/0.99  
% 0.84/0.99  --superposition_flag                    true
% 0.84/0.99  --sup_passive_queue_type                priority_queues
% 0.84/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.84/0.99  --sup_passive_queues_freq               [8;1;4]
% 0.84/0.99  --demod_completeness_check              fast
% 0.84/0.99  --demod_use_ground                      true
% 0.84/0.99  --sup_to_prop_solver                    passive
% 0.84/0.99  --sup_prop_simpl_new                    true
% 0.84/0.99  --sup_prop_simpl_given                  true
% 0.84/0.99  --sup_fun_splitting                     false
% 0.84/0.99  --sup_smt_interval                      50000
% 0.84/0.99  
% 0.84/0.99  ------ Superposition Simplification Setup
% 0.84/0.99  
% 0.84/0.99  --sup_indices_passive                   []
% 0.84/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.84/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 0.84/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_full_bw                           [BwDemod]
% 0.84/0.99  --sup_immed_triv                        [TrivRules]
% 0.84/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.84/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_immed_bw_main                     []
% 0.84/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.84/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 0.84/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.84/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.84/0.99  
% 0.84/0.99  ------ Combination Options
% 0.84/0.99  
% 0.84/0.99  --comb_res_mult                         3
% 0.84/0.99  --comb_sup_mult                         2
% 0.84/0.99  --comb_inst_mult                        10
% 0.84/0.99  
% 0.84/0.99  ------ Debug Options
% 0.84/0.99  
% 0.84/0.99  --dbg_backtrace                         false
% 0.84/0.99  --dbg_dump_prop_clauses                 false
% 0.84/0.99  --dbg_dump_prop_clauses_file            -
% 0.84/0.99  --dbg_out_stat                          false
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  ------ Proving...
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  % SZS status Theorem for theBenchmark.p
% 0.84/0.99  
% 0.84/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 0.84/0.99  
% 0.84/0.99  fof(f2,axiom,(
% 0.84/0.99    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f14,plain,(
% 0.84/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 0.84/0.99    inference(nnf_transformation,[],[f2])).
% 0.84/0.99  
% 0.84/0.99  fof(f15,plain,(
% 0.84/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 0.84/0.99    inference(flattening,[],[f14])).
% 0.84/0.99  
% 0.84/0.99  fof(f16,plain,(
% 0.84/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 0.84/0.99    inference(rectify,[],[f15])).
% 0.84/0.99  
% 0.84/0.99  fof(f17,plain,(
% 0.84/0.99    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK0(X0,X1,X2) != X1 & sK0(X0,X1,X2) != X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (sK0(X0,X1,X2) = X1 | sK0(X0,X1,X2) = X0 | r2_hidden(sK0(X0,X1,X2),X2))))),
% 0.84/0.99    introduced(choice_axiom,[])).
% 0.84/0.99  
% 0.84/0.99  fof(f18,plain,(
% 0.84/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK0(X0,X1,X2) != X1 & sK0(X0,X1,X2) != X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (sK0(X0,X1,X2) = X1 | sK0(X0,X1,X2) = X0 | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 0.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).
% 0.84/0.99  
% 0.84/0.99  fof(f22,plain,(
% 0.84/0.99    ( ! [X4,X2,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2) | k2_tarski(X0,X1) != X2) )),
% 0.84/0.99    inference(cnf_transformation,[],[f18])).
% 0.84/0.99  
% 0.84/0.99  fof(f4,axiom,(
% 0.84/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f29,plain,(
% 0.84/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.84/0.99    inference(cnf_transformation,[],[f4])).
% 0.84/0.99  
% 0.84/0.99  fof(f43,plain,(
% 0.84/0.99    ( ! [X4,X2,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2) | k1_enumset1(X0,X0,X1) != X2) )),
% 0.84/0.99    inference(definition_unfolding,[],[f22,f29])).
% 0.84/0.99  
% 0.84/0.99  fof(f50,plain,(
% 0.84/0.99    ( ! [X4,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,k1_enumset1(X0,X0,X1))) )),
% 0.84/0.99    inference(equality_resolution,[],[f43])).
% 0.84/0.99  
% 0.84/0.99  fof(f7,conjecture,(
% 0.84/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f8,negated_conjecture,(
% 0.84/0.99    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 0.84/0.99    inference(negated_conjecture,[],[f7])).
% 0.84/0.99  
% 0.84/0.99  fof(f12,plain,(
% 0.84/0.99    ? [X0,X1,X2,X3] : ((k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)))),
% 0.84/0.99    inference(ennf_transformation,[],[f8])).
% 0.84/0.99  
% 0.84/0.99  fof(f13,plain,(
% 0.84/0.99    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3))),
% 0.84/0.99    inference(flattening,[],[f12])).
% 0.84/0.99  
% 0.84/0.99  fof(f19,plain,(
% 0.84/0.99    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (k1_funct_1(sK4,sK3) != sK2 & r2_hidden(sK3,sK1) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2)))) & v1_funct_2(sK4,sK1,k1_tarski(sK2)) & v1_funct_1(sK4))),
% 0.84/0.99    introduced(choice_axiom,[])).
% 0.84/0.99  
% 0.84/0.99  fof(f20,plain,(
% 0.84/0.99    k1_funct_1(sK4,sK3) != sK2 & r2_hidden(sK3,sK1) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2)))) & v1_funct_2(sK4,sK1,k1_tarski(sK2)) & v1_funct_1(sK4)),
% 0.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f13,f19])).
% 0.84/0.99  
% 0.84/0.99  fof(f33,plain,(
% 0.84/0.99    v1_funct_2(sK4,sK1,k1_tarski(sK2))),
% 0.84/0.99    inference(cnf_transformation,[],[f20])).
% 0.84/0.99  
% 0.84/0.99  fof(f3,axiom,(
% 0.84/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f28,plain,(
% 0.84/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.84/0.99    inference(cnf_transformation,[],[f3])).
% 0.84/0.99  
% 0.84/0.99  fof(f37,plain,(
% 0.84/0.99    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 0.84/0.99    inference(definition_unfolding,[],[f28,f29])).
% 0.84/0.99  
% 0.84/0.99  fof(f45,plain,(
% 0.84/0.99    v1_funct_2(sK4,sK1,k1_enumset1(sK2,sK2,sK2))),
% 0.84/0.99    inference(definition_unfolding,[],[f33,f37])).
% 0.84/0.99  
% 0.84/0.99  fof(f6,axiom,(
% 0.84/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1)))),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f10,plain,(
% 0.84/0.99    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 0.84/0.99    inference(ennf_transformation,[],[f6])).
% 0.84/0.99  
% 0.84/0.99  fof(f11,plain,(
% 0.84/0.99    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 0.84/0.99    inference(flattening,[],[f10])).
% 0.84/0.99  
% 0.84/0.99  fof(f31,plain,(
% 0.84/0.99    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 0.84/0.99    inference(cnf_transformation,[],[f11])).
% 0.84/0.99  
% 0.84/0.99  fof(f34,plain,(
% 0.84/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_tarski(sK2))))),
% 0.84/0.99    inference(cnf_transformation,[],[f20])).
% 0.84/0.99  
% 0.84/0.99  fof(f44,plain,(
% 0.84/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))))),
% 0.84/0.99    inference(definition_unfolding,[],[f34,f37])).
% 0.84/0.99  
% 0.84/0.99  fof(f32,plain,(
% 0.84/0.99    v1_funct_1(sK4)),
% 0.84/0.99    inference(cnf_transformation,[],[f20])).
% 0.84/0.99  
% 0.84/0.99  fof(f1,axiom,(
% 0.84/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f21,plain,(
% 0.84/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.84/0.99    inference(cnf_transformation,[],[f1])).
% 0.84/0.99  
% 0.84/0.99  fof(f5,axiom,(
% 0.84/0.99    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 0.84/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.84/0.99  
% 0.84/0.99  fof(f9,plain,(
% 0.84/0.99    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 0.84/0.99    inference(ennf_transformation,[],[f5])).
% 0.84/0.99  
% 0.84/0.99  fof(f30,plain,(
% 0.84/0.99    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 0.84/0.99    inference(cnf_transformation,[],[f9])).
% 0.84/0.99  
% 0.84/0.99  fof(f23,plain,(
% 0.84/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_tarski(X0,X1) != X2) )),
% 0.84/0.99    inference(cnf_transformation,[],[f18])).
% 0.84/0.99  
% 0.84/0.99  fof(f42,plain,(
% 0.84/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k1_enumset1(X0,X0,X1) != X2) )),
% 0.84/0.99    inference(definition_unfolding,[],[f23,f29])).
% 0.84/0.99  
% 0.84/0.99  fof(f48,plain,(
% 0.84/0.99    ( ! [X4,X2,X1] : (r2_hidden(X4,X2) | k1_enumset1(X4,X4,X1) != X2) )),
% 0.84/0.99    inference(equality_resolution,[],[f42])).
% 0.84/0.99  
% 0.84/0.99  fof(f49,plain,(
% 0.84/0.99    ( ! [X4,X1] : (r2_hidden(X4,k1_enumset1(X4,X4,X1))) )),
% 0.84/0.99    inference(equality_resolution,[],[f48])).
% 0.84/0.99  
% 0.84/0.99  fof(f36,plain,(
% 0.84/0.99    k1_funct_1(sK4,sK3) != sK2),
% 0.84/0.99    inference(cnf_transformation,[],[f20])).
% 0.84/0.99  
% 0.84/0.99  fof(f35,plain,(
% 0.84/0.99    r2_hidden(sK3,sK1)),
% 0.84/0.99    inference(cnf_transformation,[],[f20])).
% 0.84/0.99  
% 0.84/0.99  cnf(c_279,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 0.84/0.99      theory(equality) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_504,plain,
% 0.84/0.99      ( r2_hidden(X0,X1)
% 0.84/0.99      | ~ r2_hidden(X2,k1_enumset1(X3,X3,X2))
% 0.84/0.99      | X0 != X2
% 0.84/0.99      | X1 != k1_enumset1(X3,X3,X2) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_279]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_614,plain,
% 0.84/0.99      ( r2_hidden(X0,k1_xboole_0)
% 0.84/0.99      | ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | X0 != sK2
% 0.84/0.99      | k1_xboole_0 != k1_enumset1(sK2,sK2,sK2) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_504]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_616,plain,
% 0.84/0.99      ( ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | r2_hidden(sK2,k1_xboole_0)
% 0.84/0.99      | sK2 != sK2
% 0.84/0.99      | k1_xboole_0 != k1_enumset1(sK2,sK2,sK2) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_614]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_6,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,k1_enumset1(X1,X1,X2)) | X0 = X1 | X0 = X2 ),
% 0.84/0.99      inference(cnf_transformation,[],[f50]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_499,plain,
% 0.84/0.99      ( ~ r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,X0))
% 0.84/0.99      | k1_funct_1(sK4,sK3) = X0
% 0.84/0.99      | k1_funct_1(sK4,sK3) = sK2 ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_501,plain,
% 0.84/0.99      ( ~ r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | k1_funct_1(sK4,sK3) = sK2 ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_499]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_12,negated_conjecture,
% 0.84/0.99      ( v1_funct_2(sK4,sK1,k1_enumset1(sK2,sK2,sK2)) ),
% 0.84/0.99      inference(cnf_transformation,[],[f45]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_8,plain,
% 0.84/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 0.84/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.84/0.99      | ~ r2_hidden(X3,X1)
% 0.84/0.99      | r2_hidden(k1_funct_1(X0,X3),X2)
% 0.84/0.99      | ~ v1_funct_1(X0)
% 0.84/0.99      | k1_xboole_0 = X2 ),
% 0.84/0.99      inference(cnf_transformation,[],[f31]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_11,negated_conjecture,
% 0.84/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2)))) ),
% 0.84/0.99      inference(cnf_transformation,[],[f44]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_156,plain,
% 0.84/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 0.84/0.99      | ~ r2_hidden(X3,X1)
% 0.84/0.99      | r2_hidden(k1_funct_1(X0,X3),X2)
% 0.84/0.99      | ~ v1_funct_1(X0)
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 0.84/0.99      | sK4 != X0
% 0.84/0.99      | k1_xboole_0 = X2 ),
% 0.84/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_11]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_157,plain,
% 0.84/0.99      ( ~ v1_funct_2(sK4,X0,X1)
% 0.84/0.99      | ~ r2_hidden(X2,X0)
% 0.84/0.99      | r2_hidden(k1_funct_1(sK4,X2),X1)
% 0.84/0.99      | ~ v1_funct_1(sK4)
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 0.84/0.99      | k1_xboole_0 = X1 ),
% 0.84/0.99      inference(unflattening,[status(thm)],[c_156]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_13,negated_conjecture,
% 0.84/0.99      ( v1_funct_1(sK4) ),
% 0.84/0.99      inference(cnf_transformation,[],[f32]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_161,plain,
% 0.84/0.99      ( r2_hidden(k1_funct_1(sK4,X2),X1)
% 0.84/0.99      | ~ r2_hidden(X2,X0)
% 0.84/0.99      | ~ v1_funct_2(sK4,X0,X1)
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 0.84/0.99      | k1_xboole_0 = X1 ),
% 0.84/0.99      inference(global_propositional_subsumption,
% 0.84/0.99                [status(thm)],
% 0.84/0.99                [c_157,c_13]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_162,plain,
% 0.84/0.99      ( ~ v1_funct_2(sK4,X0,X1)
% 0.84/0.99      | ~ r2_hidden(X2,X0)
% 0.84/0.99      | r2_hidden(k1_funct_1(sK4,X2),X1)
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 0.84/0.99      | k1_xboole_0 = X1 ),
% 0.84/0.99      inference(renaming,[status(thm)],[c_161]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_189,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,X1)
% 0.84/0.99      | r2_hidden(k1_funct_1(sK4,X0),X2)
% 0.84/0.99      | k1_enumset1(sK2,sK2,sK2) != X2
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 0.84/0.99      | sK1 != X1
% 0.84/0.99      | sK4 != sK4
% 0.84/0.99      | k1_xboole_0 = X2 ),
% 0.84/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_162]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_190,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,sK1)
% 0.84/0.99      | r2_hidden(k1_funct_1(sK4,X0),k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2))) != k1_zfmisc_1(k2_zfmisc_1(sK1,k1_enumset1(sK2,sK2,sK2)))
% 0.84/0.99      | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
% 0.84/0.99      inference(unflattening,[status(thm)],[c_189]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_221,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,sK1)
% 0.84/0.99      | r2_hidden(k1_funct_1(sK4,X0),k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
% 0.84/0.99      inference(equality_resolution_simp,[status(thm)],[c_190]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_495,plain,
% 0.84/0.99      ( r2_hidden(k1_funct_1(sK4,sK3),k1_enumset1(sK2,sK2,sK2))
% 0.84/0.99      | ~ r2_hidden(sK3,sK1)
% 0.84/0.99      | k1_xboole_0 = k1_enumset1(sK2,sK2,sK2) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_221]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_0,plain,
% 0.84/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 0.84/0.99      inference(cnf_transformation,[],[f21]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_7,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 0.84/0.99      inference(cnf_transformation,[],[f30]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_145,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 0.84/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_7]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_146,plain,
% 0.84/0.99      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 0.84/0.99      inference(unflattening,[status(thm)],[c_145]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_148,plain,
% 0.84/0.99      ( ~ r2_hidden(sK2,k1_xboole_0) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_146]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_5,plain,
% 0.84/0.99      ( r2_hidden(X0,k1_enumset1(X0,X0,X1)) ),
% 0.84/0.99      inference(cnf_transformation,[],[f49]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_28,plain,
% 0.84/0.99      ( r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2)) ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_25,plain,
% 0.84/0.99      ( ~ r2_hidden(sK2,k1_enumset1(sK2,sK2,sK2)) | sK2 = sK2 ),
% 0.84/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_9,negated_conjecture,
% 0.84/0.99      ( k1_funct_1(sK4,sK3) != sK2 ),
% 0.84/0.99      inference(cnf_transformation,[],[f36]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(c_10,negated_conjecture,
% 0.84/0.99      ( r2_hidden(sK3,sK1) ),
% 0.84/0.99      inference(cnf_transformation,[],[f35]) ).
% 0.84/0.99  
% 0.84/0.99  cnf(contradiction,plain,
% 0.84/0.99      ( $false ),
% 0.84/0.99      inference(minisat,
% 0.84/0.99                [status(thm)],
% 0.84/0.99                [c_616,c_501,c_495,c_148,c_28,c_25,c_9,c_10]) ).
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 0.84/0.99  
% 0.84/0.99  ------                               Statistics
% 0.84/0.99  
% 0.84/0.99  ------ General
% 0.84/0.99  
% 0.84/0.99  abstr_ref_over_cycles:                  0
% 0.84/0.99  abstr_ref_under_cycles:                 0
% 0.84/0.99  gc_basic_clause_elim:                   0
% 0.84/0.99  forced_gc_time:                         0
% 0.84/0.99  parsing_time:                           0.009
% 0.84/0.99  unif_index_cands_time:                  0.
% 0.84/0.99  unif_index_add_time:                    0.
% 0.84/0.99  orderings_time:                         0.
% 0.84/0.99  out_proof_time:                         0.01
% 0.84/0.99  total_time:                             0.055
% 0.84/0.99  num_of_symbols:                         46
% 0.84/0.99  num_of_terms:                           697
% 0.84/0.99  
% 0.84/0.99  ------ Preprocessing
% 0.84/0.99  
% 0.84/0.99  num_of_splits:                          0
% 0.84/0.99  num_of_split_atoms:                     0
% 0.84/0.99  num_of_reused_defs:                     0
% 0.84/0.99  num_eq_ax_congr_red:                    10
% 0.84/0.99  num_of_sem_filtered_clauses:            1
% 0.84/0.99  num_of_subtypes:                        0
% 0.84/0.99  monotx_restored_types:                  0
% 0.84/0.99  sat_num_of_epr_types:                   0
% 0.84/0.99  sat_num_of_non_cyclic_types:            0
% 0.84/0.99  sat_guarded_non_collapsed_types:        0
% 0.84/0.99  num_pure_diseq_elim:                    0
% 0.84/0.99  simp_replaced_by:                       0
% 0.84/0.99  res_preprocessed:                       55
% 0.84/0.99  prep_upred:                             0
% 0.84/0.99  prep_unflattend:                        5
% 0.84/0.99  smt_new_axioms:                         0
% 0.84/0.99  pred_elim_cands:                        1
% 0.84/0.99  pred_elim:                              4
% 0.84/0.99  pred_elim_cl:                           4
% 0.84/0.99  pred_elim_cycles:                       6
% 0.84/0.99  merged_defs:                            0
% 0.84/0.99  merged_defs_ncl:                        0
% 0.84/0.99  bin_hyper_res:                          0
% 0.84/0.99  prep_cycles:                            4
% 0.84/0.99  pred_elim_time:                         0.002
% 0.84/0.99  splitting_time:                         0.
% 0.84/0.99  sem_filter_time:                        0.
% 0.84/0.99  monotx_time:                            0.001
% 0.84/0.99  subtype_inf_time:                       0.
% 0.84/0.99  
% 0.84/0.99  ------ Problem properties
% 0.84/0.99  
% 0.84/0.99  clauses:                                10
% 0.84/0.99  conjectures:                            2
% 0.84/0.99  epr:                                    2
% 0.84/0.99  horn:                                   7
% 0.84/0.99  ground:                                 2
% 0.84/0.99  unary:                                  5
% 0.84/0.99  binary:                                 0
% 0.84/0.99  lits:                                   21
% 0.84/0.99  lits_eq:                                11
% 0.84/0.99  fd_pure:                                0
% 0.84/0.99  fd_pseudo:                              0
% 0.84/0.99  fd_cond:                                0
% 0.84/0.99  fd_pseudo_cond:                         3
% 0.84/0.99  ac_symbols:                             0
% 0.84/0.99  
% 0.84/0.99  ------ Propositional Solver
% 0.84/0.99  
% 0.84/0.99  prop_solver_calls:                      24
% 0.84/0.99  prop_fast_solver_calls:                 269
% 0.84/0.99  smt_solver_calls:                       0
% 0.84/0.99  smt_fast_solver_calls:                  0
% 0.84/0.99  prop_num_of_clauses:                    154
% 0.84/0.99  prop_preprocess_simplified:             1463
% 0.84/0.99  prop_fo_subsumed:                       3
% 0.84/0.99  prop_solver_time:                       0.
% 0.84/0.99  smt_solver_time:                        0.
% 0.84/0.99  smt_fast_solver_time:                   0.
% 0.84/0.99  prop_fast_solver_time:                  0.
% 0.84/0.99  prop_unsat_core_time:                   0.
% 0.84/0.99  
% 0.84/0.99  ------ QBF
% 0.84/0.99  
% 0.84/0.99  qbf_q_res:                              0
% 0.84/0.99  qbf_num_tautologies:                    0
% 0.84/0.99  qbf_prep_cycles:                        0
% 0.84/0.99  
% 0.84/0.99  ------ BMC1
% 0.84/0.99  
% 0.84/0.99  bmc1_current_bound:                     -1
% 0.84/0.99  bmc1_last_solved_bound:                 -1
% 0.84/0.99  bmc1_unsat_core_size:                   -1
% 0.84/0.99  bmc1_unsat_core_parents_size:           -1
% 0.84/0.99  bmc1_merge_next_fun:                    0
% 0.84/0.99  bmc1_unsat_core_clauses_time:           0.
% 0.84/0.99  
% 0.84/0.99  ------ Instantiation
% 0.84/0.99  
% 0.84/0.99  inst_num_of_clauses:                    47
% 0.84/0.99  inst_num_in_passive:                    9
% 0.84/0.99  inst_num_in_active:                     24
% 0.84/0.99  inst_num_in_unprocessed:                13
% 0.84/0.99  inst_num_of_loops:                      27
% 0.84/0.99  inst_num_of_learning_restarts:          0
% 0.84/0.99  inst_num_moves_active_passive:          1
% 0.84/0.99  inst_lit_activity:                      0
% 0.84/0.99  inst_lit_activity_moves:                0
% 0.84/0.99  inst_num_tautologies:                   0
% 0.84/0.99  inst_num_prop_implied:                  0
% 0.84/0.99  inst_num_existing_simplified:           0
% 0.84/0.99  inst_num_eq_res_simplified:             0
% 0.84/0.99  inst_num_child_elim:                    0
% 0.84/0.99  inst_num_of_dismatching_blockings:      0
% 0.84/0.99  inst_num_of_non_proper_insts:           21
% 0.84/0.99  inst_num_of_duplicates:                 0
% 0.84/0.99  inst_inst_num_from_inst_to_res:         0
% 0.84/0.99  inst_dismatching_checking_time:         0.
% 0.84/0.99  
% 0.84/0.99  ------ Resolution
% 0.84/0.99  
% 0.84/0.99  res_num_of_clauses:                     0
% 0.84/0.99  res_num_in_passive:                     0
% 0.84/0.99  res_num_in_active:                      0
% 0.84/0.99  res_num_of_loops:                       59
% 0.84/0.99  res_forward_subset_subsumed:            2
% 0.84/0.99  res_backward_subset_subsumed:           0
% 0.84/0.99  res_forward_subsumed:                   0
% 0.84/0.99  res_backward_subsumed:                  0
% 0.84/0.99  res_forward_subsumption_resolution:     0
% 0.84/0.99  res_backward_subsumption_resolution:    0
% 0.84/0.99  res_clause_to_clause_subsumption:       33
% 0.84/0.99  res_orphan_elimination:                 0
% 0.84/0.99  res_tautology_del:                      0
% 0.84/0.99  res_num_eq_res_simplified:              1
% 0.84/0.99  res_num_sel_changes:                    0
% 0.84/0.99  res_moves_from_active_to_pass:          0
% 0.84/0.99  
% 0.84/0.99  ------ Superposition
% 0.84/0.99  
% 0.84/0.99  sup_time_total:                         0.
% 0.84/0.99  sup_time_generating:                    0.
% 0.84/0.99  sup_time_sim_full:                      0.
% 0.84/0.99  sup_time_sim_immed:                     0.
% 0.84/0.99  
% 0.84/0.99  sup_num_of_clauses:                     10
% 0.84/0.99  sup_num_in_active:                      4
% 0.84/0.99  sup_num_in_passive:                     6
% 0.84/0.99  sup_num_of_loops:                       4
% 0.84/0.99  sup_fw_superposition:                   0
% 0.84/0.99  sup_bw_superposition:                   0
% 0.84/0.99  sup_immediate_simplified:               0
% 0.84/0.99  sup_given_eliminated:                   0
% 0.84/0.99  comparisons_done:                       0
% 0.84/0.99  comparisons_avoided:                    0
% 0.84/0.99  
% 0.84/0.99  ------ Simplifications
% 0.84/0.99  
% 0.84/0.99  
% 0.84/0.99  sim_fw_subset_subsumed:                 0
% 0.84/0.99  sim_bw_subset_subsumed:                 0
% 0.84/0.99  sim_fw_subsumed:                        0
% 0.84/0.99  sim_bw_subsumed:                        0
% 0.84/0.99  sim_fw_subsumption_res:                 0
% 0.84/0.99  sim_bw_subsumption_res:                 0
% 0.84/0.99  sim_tautology_del:                      0
% 0.84/0.99  sim_eq_tautology_del:                   0
% 0.84/0.99  sim_eq_res_simp:                        0
% 0.84/0.99  sim_fw_demodulated:                     0
% 0.84/0.99  sim_bw_demodulated:                     0
% 0.84/0.99  sim_light_normalised:                   0
% 0.84/0.99  sim_joinable_taut:                      0
% 0.84/0.99  sim_joinable_simp:                      0
% 0.84/0.99  sim_ac_normalised:                      0
% 0.84/0.99  sim_smt_subsumption:                    0
% 0.84/0.99  
%------------------------------------------------------------------------------
