%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:40:41 EST 2020

% Result     : Theorem 4.04s
% Output     : CNFRefutation 4.04s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 183 expanded)
%              Number of clauses        :   51 (  61 expanded)
%              Number of leaves         :   19 (  42 expanded)
%              Depth                    :   19
%              Number of atoms          :  273 ( 536 expanded)
%              Number of equality atoms :   87 ( 120 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
     => r1_xboole_0(X0,k4_xboole_0(X2,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,k4_xboole_0(X2,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,k4_xboole_0(X2,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,k4_xboole_0(X1,X2))
     => r1_xboole_0(X1,k4_xboole_0(X0,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X1,k4_xboole_0(X0,X2))
      | ~ r1_xboole_0(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X1,k4_xboole_0(X0,X2))
      | ~ r1_xboole_0(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f65,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f20,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <=> r1_tarski(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(X0))
           => ( r1_xboole_0(X1,k3_subset_1(X0,X2))
            <=> r1_tarski(X1,X2) ) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f29,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <~> r1_tarski(X1,X2) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f36,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f37,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f36])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
     => ( ( ~ r1_tarski(X1,sK3)
          | ~ r1_xboole_0(X1,k3_subset_1(X0,sK3)) )
        & ( r1_tarski(X1,sK3)
          | r1_xboole_0(X1,k3_subset_1(X0,sK3)) )
        & m1_subset_1(sK3,k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( ~ r1_tarski(X1,X2)
              | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
            & ( r1_tarski(X1,X2)
              | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
            & m1_subset_1(X2,k1_zfmisc_1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ? [X2] :
          ( ( ~ r1_tarski(sK2,X2)
            | ~ r1_xboole_0(sK2,k3_subset_1(sK1,X2)) )
          & ( r1_tarski(sK2,X2)
            | r1_xboole_0(sK2,k3_subset_1(sK1,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(sK1)) )
      & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ( ~ r1_tarski(sK2,sK3)
      | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) )
    & ( r1_tarski(sK2,sK3)
      | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) )
    & m1_subset_1(sK3,k1_zfmisc_1(sK1))
    & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f37,f39,f38])).

fof(f68,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f40])).

fof(f69,plain,
    ( r1_tarski(sK2,sK3)
    | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f40])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f67,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f40])).

fof(f19,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f19])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f31])).

fof(f33,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).

fof(f57,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f80,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f57])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f23])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k3_xboole_0(X0,X1) != k1_xboole_0 )
      & ( k3_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f9,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f74,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f43,f50])).

fof(f8,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f78,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f49,f50])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f72,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f41,f50,f50])).

fof(f7,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f77,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
    inference(definition_unfolding,[],[f48,f50])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f4])).

fof(f45,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f22])).

fof(f75,plain,(
    ! [X0] : k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f45,f50])).

fof(f5,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f71,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f46,f50])).

fof(f15,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f15])).

fof(f70,plain,
    ( ~ r1_tarski(sK2,sK3)
    | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_12,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_xboole_0(X0,k4_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1899,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_xboole_0(X0,k4_xboole_0(X2,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_11,plain,
    ( ~ r1_xboole_0(X0,k4_xboole_0(X1,X2))
    | r1_xboole_0(X1,k4_xboole_0(X0,X2)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1900,plain,
    ( r1_xboole_0(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r1_xboole_0(X1,k4_xboole_0(X0,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_11328,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_xboole_0(X2,k4_xboole_0(X0,X1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1899,c_1900])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_27,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_480,plain,
    ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_27])).

cnf(c_481,plain,
    ( k3_subset_1(X0,sK3) = k4_xboole_0(X0,sK3)
    | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
    inference(unflattening,[status(thm)],[c_480])).

cnf(c_2041,plain,
    ( k3_subset_1(sK1,sK3) = k4_xboole_0(sK1,sK3) ),
    inference(equality_resolution,[status(thm)],[c_481])).

cnf(c_26,negated_conjecture,
    ( r1_tarski(sK2,sK3)
    | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_1893,plain,
    ( r1_tarski(sK2,sK3) = iProver_top
    | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_2095,plain,
    ( r1_tarski(sK2,sK3) = iProver_top
    | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2041,c_1893])).

cnf(c_11329,plain,
    ( r1_tarski(sK2,sK3) = iProver_top
    | r1_xboole_0(sK1,k4_xboole_0(sK2,sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2095,c_1900])).

cnf(c_11379,plain,
    ( r1_xboole_0(sK1,k4_xboole_0(sK2,sK3)) = iProver_top ),
    inference(backward_subsumption_resolution,[status(thm)],[c_11328,c_11329])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_467,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | k1_zfmisc_1(sK1) != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_28])).

cnf(c_468,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK1))
    | v1_xboole_0(k1_zfmisc_1(sK1)) ),
    inference(unflattening,[status(thm)],[c_467])).

cnf(c_24,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_474,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK1)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_468,c_24])).

cnf(c_1891,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_474])).

cnf(c_18,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1895,plain,
    ( r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2733,plain,
    ( r1_tarski(sK2,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1891,c_1895])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_xboole_0(X1,X2)
    | r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1901,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_xboole_0(X1,X2) != iProver_top
    | r1_xboole_0(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_14987,plain,
    ( r1_xboole_0(sK1,X0) != iProver_top
    | r1_xboole_0(sK2,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2733,c_1901])).

cnf(c_16688,plain,
    ( r1_xboole_0(sK2,k4_xboole_0(sK2,sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_11379,c_14987])).

cnf(c_4,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1903,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_17133,plain,
    ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK2,sK3))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_16688,c_1903])).

cnf(c_8,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_18736,plain,
    ( k4_xboole_0(sK2,sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_17133,c_8])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_7,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1902,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2776,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_1902])).

cnf(c_19407,plain,
    ( r1_tarski(k4_xboole_0(sK2,k1_xboole_0),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_18736,c_2776])).

cnf(c_5,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_2742,plain,
    ( k5_xboole_0(X0,X0) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_5,c_0])).

cnf(c_14,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_2751,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_2742,c_14])).

cnf(c_2971,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(demodulation,[status(thm)],[c_2751,c_5])).

cnf(c_19446,plain,
    ( r1_tarski(sK2,sK3) = iProver_top ),
    inference(demodulation,[status(thm)],[c_19407,c_2971])).

cnf(c_25,negated_conjecture,
    ( ~ r1_tarski(sK2,sK3)
    | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1894,plain,
    ( r1_tarski(sK2,sK3) != iProver_top
    | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_2096,plain,
    ( r1_tarski(sK2,sK3) != iProver_top
    | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2041,c_1894])).

cnf(c_7783,plain,
    ( r1_tarski(sK2,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1899,c_2096])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_19446,c_7783])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:34:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 4.04/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 4.04/0.99  
% 4.04/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 4.04/0.99  
% 4.04/0.99  ------  iProver source info
% 4.04/0.99  
% 4.04/0.99  git: date: 2020-06-30 10:37:57 +0100
% 4.04/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 4.04/0.99  git: non_committed_changes: false
% 4.04/0.99  git: last_make_outside_of_git: false
% 4.04/0.99  
% 4.04/0.99  ------ 
% 4.04/0.99  
% 4.04/0.99  ------ Input Options
% 4.04/0.99  
% 4.04/0.99  --out_options                           all
% 4.04/0.99  --tptp_safe_out                         true
% 4.04/0.99  --problem_path                          ""
% 4.04/0.99  --include_path                          ""
% 4.04/0.99  --clausifier                            res/vclausify_rel
% 4.04/0.99  --clausifier_options                    --mode clausify
% 4.04/0.99  --stdin                                 false
% 4.04/0.99  --stats_out                             all
% 4.04/0.99  
% 4.04/0.99  ------ General Options
% 4.04/0.99  
% 4.04/0.99  --fof                                   false
% 4.04/0.99  --time_out_real                         305.
% 4.04/0.99  --time_out_virtual                      -1.
% 4.04/0.99  --symbol_type_check                     false
% 4.04/0.99  --clausify_out                          false
% 4.04/0.99  --sig_cnt_out                           false
% 4.04/0.99  --trig_cnt_out                          false
% 4.04/0.99  --trig_cnt_out_tolerance                1.
% 4.04/0.99  --trig_cnt_out_sk_spl                   false
% 4.04/0.99  --abstr_cl_out                          false
% 4.04/0.99  
% 4.04/0.99  ------ Global Options
% 4.04/0.99  
% 4.04/0.99  --schedule                              default
% 4.04/0.99  --add_important_lit                     false
% 4.04/0.99  --prop_solver_per_cl                    1000
% 4.04/0.99  --min_unsat_core                        false
% 4.04/0.99  --soft_assumptions                      false
% 4.04/0.99  --soft_lemma_size                       3
% 4.04/0.99  --prop_impl_unit_size                   0
% 4.04/0.99  --prop_impl_unit                        []
% 4.04/0.99  --share_sel_clauses                     true
% 4.04/0.99  --reset_solvers                         false
% 4.04/0.99  --bc_imp_inh                            [conj_cone]
% 4.04/0.99  --conj_cone_tolerance                   3.
% 4.04/0.99  --extra_neg_conj                        none
% 4.04/0.99  --large_theory_mode                     true
% 4.04/0.99  --prolific_symb_bound                   200
% 4.04/0.99  --lt_threshold                          2000
% 4.04/0.99  --clause_weak_htbl                      true
% 4.04/0.99  --gc_record_bc_elim                     false
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing Options
% 4.04/0.99  
% 4.04/0.99  --preprocessing_flag                    true
% 4.04/0.99  --time_out_prep_mult                    0.1
% 4.04/0.99  --splitting_mode                        input
% 4.04/0.99  --splitting_grd                         true
% 4.04/0.99  --splitting_cvd                         false
% 4.04/0.99  --splitting_cvd_svl                     false
% 4.04/0.99  --splitting_nvd                         32
% 4.04/0.99  --sub_typing                            true
% 4.04/0.99  --prep_gs_sim                           true
% 4.04/0.99  --prep_unflatten                        true
% 4.04/0.99  --prep_res_sim                          true
% 4.04/0.99  --prep_upred                            true
% 4.04/0.99  --prep_sem_filter                       exhaustive
% 4.04/0.99  --prep_sem_filter_out                   false
% 4.04/0.99  --pred_elim                             true
% 4.04/0.99  --res_sim_input                         true
% 4.04/0.99  --eq_ax_congr_red                       true
% 4.04/0.99  --pure_diseq_elim                       true
% 4.04/0.99  --brand_transform                       false
% 4.04/0.99  --non_eq_to_eq                          false
% 4.04/0.99  --prep_def_merge                        true
% 4.04/0.99  --prep_def_merge_prop_impl              false
% 4.04/0.99  --prep_def_merge_mbd                    true
% 4.04/0.99  --prep_def_merge_tr_red                 false
% 4.04/0.99  --prep_def_merge_tr_cl                  false
% 4.04/0.99  --smt_preprocessing                     true
% 4.04/0.99  --smt_ac_axioms                         fast
% 4.04/0.99  --preprocessed_out                      false
% 4.04/0.99  --preprocessed_stats                    false
% 4.04/0.99  
% 4.04/0.99  ------ Abstraction refinement Options
% 4.04/0.99  
% 4.04/0.99  --abstr_ref                             []
% 4.04/0.99  --abstr_ref_prep                        false
% 4.04/0.99  --abstr_ref_until_sat                   false
% 4.04/0.99  --abstr_ref_sig_restrict                funpre
% 4.04/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 4.04/0.99  --abstr_ref_under                       []
% 4.04/0.99  
% 4.04/0.99  ------ SAT Options
% 4.04/0.99  
% 4.04/0.99  --sat_mode                              false
% 4.04/0.99  --sat_fm_restart_options                ""
% 4.04/0.99  --sat_gr_def                            false
% 4.04/0.99  --sat_epr_types                         true
% 4.04/0.99  --sat_non_cyclic_types                  false
% 4.04/0.99  --sat_finite_models                     false
% 4.04/0.99  --sat_fm_lemmas                         false
% 4.04/0.99  --sat_fm_prep                           false
% 4.04/0.99  --sat_fm_uc_incr                        true
% 4.04/0.99  --sat_out_model                         small
% 4.04/0.99  --sat_out_clauses                       false
% 4.04/0.99  
% 4.04/0.99  ------ QBF Options
% 4.04/0.99  
% 4.04/0.99  --qbf_mode                              false
% 4.04/0.99  --qbf_elim_univ                         false
% 4.04/0.99  --qbf_dom_inst                          none
% 4.04/0.99  --qbf_dom_pre_inst                      false
% 4.04/0.99  --qbf_sk_in                             false
% 4.04/0.99  --qbf_pred_elim                         true
% 4.04/0.99  --qbf_split                             512
% 4.04/0.99  
% 4.04/0.99  ------ BMC1 Options
% 4.04/0.99  
% 4.04/0.99  --bmc1_incremental                      false
% 4.04/0.99  --bmc1_axioms                           reachable_all
% 4.04/0.99  --bmc1_min_bound                        0
% 4.04/0.99  --bmc1_max_bound                        -1
% 4.04/0.99  --bmc1_max_bound_default                -1
% 4.04/0.99  --bmc1_symbol_reachability              true
% 4.04/0.99  --bmc1_property_lemmas                  false
% 4.04/0.99  --bmc1_k_induction                      false
% 4.04/0.99  --bmc1_non_equiv_states                 false
% 4.04/0.99  --bmc1_deadlock                         false
% 4.04/0.99  --bmc1_ucm                              false
% 4.04/0.99  --bmc1_add_unsat_core                   none
% 4.04/0.99  --bmc1_unsat_core_children              false
% 4.04/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 4.04/0.99  --bmc1_out_stat                         full
% 4.04/0.99  --bmc1_ground_init                      false
% 4.04/0.99  --bmc1_pre_inst_next_state              false
% 4.04/0.99  --bmc1_pre_inst_state                   false
% 4.04/0.99  --bmc1_pre_inst_reach_state             false
% 4.04/0.99  --bmc1_out_unsat_core                   false
% 4.04/0.99  --bmc1_aig_witness_out                  false
% 4.04/0.99  --bmc1_verbose                          false
% 4.04/0.99  --bmc1_dump_clauses_tptp                false
% 4.04/0.99  --bmc1_dump_unsat_core_tptp             false
% 4.04/0.99  --bmc1_dump_file                        -
% 4.04/0.99  --bmc1_ucm_expand_uc_limit              128
% 4.04/0.99  --bmc1_ucm_n_expand_iterations          6
% 4.04/0.99  --bmc1_ucm_extend_mode                  1
% 4.04/0.99  --bmc1_ucm_init_mode                    2
% 4.04/0.99  --bmc1_ucm_cone_mode                    none
% 4.04/0.99  --bmc1_ucm_reduced_relation_type        0
% 4.04/0.99  --bmc1_ucm_relax_model                  4
% 4.04/0.99  --bmc1_ucm_full_tr_after_sat            true
% 4.04/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 4.04/0.99  --bmc1_ucm_layered_model                none
% 4.04/0.99  --bmc1_ucm_max_lemma_size               10
% 4.04/0.99  
% 4.04/0.99  ------ AIG Options
% 4.04/0.99  
% 4.04/0.99  --aig_mode                              false
% 4.04/0.99  
% 4.04/0.99  ------ Instantiation Options
% 4.04/0.99  
% 4.04/0.99  --instantiation_flag                    true
% 4.04/0.99  --inst_sos_flag                         false
% 4.04/0.99  --inst_sos_phase                        true
% 4.04/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 4.04/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 4.04/0.99  --inst_lit_sel_side                     num_symb
% 4.04/0.99  --inst_solver_per_active                1400
% 4.04/0.99  --inst_solver_calls_frac                1.
% 4.04/0.99  --inst_passive_queue_type               priority_queues
% 4.04/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 4.04/0.99  --inst_passive_queues_freq              [25;2]
% 4.04/0.99  --inst_dismatching                      true
% 4.04/0.99  --inst_eager_unprocessed_to_passive     true
% 4.04/0.99  --inst_prop_sim_given                   true
% 4.04/0.99  --inst_prop_sim_new                     false
% 4.04/0.99  --inst_subs_new                         false
% 4.04/0.99  --inst_eq_res_simp                      false
% 4.04/0.99  --inst_subs_given                       false
% 4.04/0.99  --inst_orphan_elimination               true
% 4.04/0.99  --inst_learning_loop_flag               true
% 4.04/0.99  --inst_learning_start                   3000
% 4.04/0.99  --inst_learning_factor                  2
% 4.04/0.99  --inst_start_prop_sim_after_learn       3
% 4.04/0.99  --inst_sel_renew                        solver
% 4.04/0.99  --inst_lit_activity_flag                true
% 4.04/0.99  --inst_restr_to_given                   false
% 4.04/0.99  --inst_activity_threshold               500
% 4.04/0.99  --inst_out_proof                        true
% 4.04/0.99  
% 4.04/0.99  ------ Resolution Options
% 4.04/0.99  
% 4.04/0.99  --resolution_flag                       true
% 4.04/0.99  --res_lit_sel                           adaptive
% 4.04/0.99  --res_lit_sel_side                      none
% 4.04/0.99  --res_ordering                          kbo
% 4.04/0.99  --res_to_prop_solver                    active
% 4.04/0.99  --res_prop_simpl_new                    false
% 4.04/0.99  --res_prop_simpl_given                  true
% 4.04/0.99  --res_passive_queue_type                priority_queues
% 4.04/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 4.04/0.99  --res_passive_queues_freq               [15;5]
% 4.04/0.99  --res_forward_subs                      full
% 4.04/0.99  --res_backward_subs                     full
% 4.04/0.99  --res_forward_subs_resolution           true
% 4.04/0.99  --res_backward_subs_resolution          true
% 4.04/0.99  --res_orphan_elimination                true
% 4.04/0.99  --res_time_limit                        2.
% 4.04/0.99  --res_out_proof                         true
% 4.04/0.99  
% 4.04/0.99  ------ Superposition Options
% 4.04/0.99  
% 4.04/0.99  --superposition_flag                    true
% 4.04/0.99  --sup_passive_queue_type                priority_queues
% 4.04/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 4.04/0.99  --sup_passive_queues_freq               [8;1;4]
% 4.04/0.99  --demod_completeness_check              fast
% 4.04/0.99  --demod_use_ground                      true
% 4.04/0.99  --sup_to_prop_solver                    passive
% 4.04/0.99  --sup_prop_simpl_new                    true
% 4.04/0.99  --sup_prop_simpl_given                  true
% 4.04/0.99  --sup_fun_splitting                     false
% 4.04/0.99  --sup_smt_interval                      50000
% 4.04/0.99  
% 4.04/0.99  ------ Superposition Simplification Setup
% 4.04/0.99  
% 4.04/0.99  --sup_indices_passive                   []
% 4.04/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 4.04/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_full_bw                           [BwDemod]
% 4.04/0.99  --sup_immed_triv                        [TrivRules]
% 4.04/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 4.04/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_immed_bw_main                     []
% 4.04/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 4.04/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 4.04/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 4.04/0.99  
% 4.04/0.99  ------ Combination Options
% 4.04/0.99  
% 4.04/0.99  --comb_res_mult                         3
% 4.04/0.99  --comb_sup_mult                         2
% 4.04/0.99  --comb_inst_mult                        10
% 4.04/0.99  
% 4.04/0.99  ------ Debug Options
% 4.04/0.99  
% 4.04/0.99  --dbg_backtrace                         false
% 4.04/0.99  --dbg_dump_prop_clauses                 false
% 4.04/0.99  --dbg_dump_prop_clauses_file            -
% 4.04/0.99  --dbg_out_stat                          false
% 4.04/0.99  ------ Parsing...
% 4.04/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 4.04/0.99  ------ Proving...
% 4.04/0.99  ------ Problem Properties 
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  clauses                                 26
% 4.04/0.99  conjectures                             2
% 4.04/0.99  EPR                                     1
% 4.04/0.99  Horn                                    24
% 4.04/0.99  unary                                   12
% 4.04/0.99  binary                                  11
% 4.04/0.99  lits                                    43
% 4.04/0.99  lits eq                                 18
% 4.04/0.99  fd_pure                                 0
% 4.04/0.99  fd_pseudo                               0
% 4.04/0.99  fd_cond                                 0
% 4.04/0.99  fd_pseudo_cond                          2
% 4.04/0.99  AC symbols                              1
% 4.04/0.99  
% 4.04/0.99  ------ Schedule dynamic 5 is on 
% 4.04/0.99  
% 4.04/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  ------ 
% 4.04/0.99  Current options:
% 4.04/0.99  ------ 
% 4.04/0.99  
% 4.04/0.99  ------ Input Options
% 4.04/0.99  
% 4.04/0.99  --out_options                           all
% 4.04/0.99  --tptp_safe_out                         true
% 4.04/0.99  --problem_path                          ""
% 4.04/0.99  --include_path                          ""
% 4.04/0.99  --clausifier                            res/vclausify_rel
% 4.04/0.99  --clausifier_options                    --mode clausify
% 4.04/0.99  --stdin                                 false
% 4.04/0.99  --stats_out                             all
% 4.04/0.99  
% 4.04/0.99  ------ General Options
% 4.04/0.99  
% 4.04/0.99  --fof                                   false
% 4.04/0.99  --time_out_real                         305.
% 4.04/0.99  --time_out_virtual                      -1.
% 4.04/0.99  --symbol_type_check                     false
% 4.04/0.99  --clausify_out                          false
% 4.04/0.99  --sig_cnt_out                           false
% 4.04/0.99  --trig_cnt_out                          false
% 4.04/0.99  --trig_cnt_out_tolerance                1.
% 4.04/0.99  --trig_cnt_out_sk_spl                   false
% 4.04/0.99  --abstr_cl_out                          false
% 4.04/0.99  
% 4.04/0.99  ------ Global Options
% 4.04/0.99  
% 4.04/0.99  --schedule                              default
% 4.04/0.99  --add_important_lit                     false
% 4.04/0.99  --prop_solver_per_cl                    1000
% 4.04/0.99  --min_unsat_core                        false
% 4.04/0.99  --soft_assumptions                      false
% 4.04/0.99  --soft_lemma_size                       3
% 4.04/0.99  --prop_impl_unit_size                   0
% 4.04/0.99  --prop_impl_unit                        []
% 4.04/0.99  --share_sel_clauses                     true
% 4.04/0.99  --reset_solvers                         false
% 4.04/0.99  --bc_imp_inh                            [conj_cone]
% 4.04/0.99  --conj_cone_tolerance                   3.
% 4.04/0.99  --extra_neg_conj                        none
% 4.04/0.99  --large_theory_mode                     true
% 4.04/0.99  --prolific_symb_bound                   200
% 4.04/0.99  --lt_threshold                          2000
% 4.04/0.99  --clause_weak_htbl                      true
% 4.04/0.99  --gc_record_bc_elim                     false
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing Options
% 4.04/0.99  
% 4.04/0.99  --preprocessing_flag                    true
% 4.04/0.99  --time_out_prep_mult                    0.1
% 4.04/0.99  --splitting_mode                        input
% 4.04/0.99  --splitting_grd                         true
% 4.04/0.99  --splitting_cvd                         false
% 4.04/0.99  --splitting_cvd_svl                     false
% 4.04/0.99  --splitting_nvd                         32
% 4.04/0.99  --sub_typing                            true
% 4.04/0.99  --prep_gs_sim                           true
% 4.04/0.99  --prep_unflatten                        true
% 4.04/0.99  --prep_res_sim                          true
% 4.04/0.99  --prep_upred                            true
% 4.04/0.99  --prep_sem_filter                       exhaustive
% 4.04/0.99  --prep_sem_filter_out                   false
% 4.04/0.99  --pred_elim                             true
% 4.04/0.99  --res_sim_input                         true
% 4.04/0.99  --eq_ax_congr_red                       true
% 4.04/0.99  --pure_diseq_elim                       true
% 4.04/0.99  --brand_transform                       false
% 4.04/0.99  --non_eq_to_eq                          false
% 4.04/0.99  --prep_def_merge                        true
% 4.04/0.99  --prep_def_merge_prop_impl              false
% 4.04/0.99  --prep_def_merge_mbd                    true
% 4.04/0.99  --prep_def_merge_tr_red                 false
% 4.04/0.99  --prep_def_merge_tr_cl                  false
% 4.04/0.99  --smt_preprocessing                     true
% 4.04/0.99  --smt_ac_axioms                         fast
% 4.04/0.99  --preprocessed_out                      false
% 4.04/0.99  --preprocessed_stats                    false
% 4.04/0.99  
% 4.04/0.99  ------ Abstraction refinement Options
% 4.04/0.99  
% 4.04/0.99  --abstr_ref                             []
% 4.04/0.99  --abstr_ref_prep                        false
% 4.04/0.99  --abstr_ref_until_sat                   false
% 4.04/0.99  --abstr_ref_sig_restrict                funpre
% 4.04/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 4.04/0.99  --abstr_ref_under                       []
% 4.04/0.99  
% 4.04/0.99  ------ SAT Options
% 4.04/0.99  
% 4.04/0.99  --sat_mode                              false
% 4.04/0.99  --sat_fm_restart_options                ""
% 4.04/0.99  --sat_gr_def                            false
% 4.04/0.99  --sat_epr_types                         true
% 4.04/0.99  --sat_non_cyclic_types                  false
% 4.04/0.99  --sat_finite_models                     false
% 4.04/0.99  --sat_fm_lemmas                         false
% 4.04/0.99  --sat_fm_prep                           false
% 4.04/0.99  --sat_fm_uc_incr                        true
% 4.04/0.99  --sat_out_model                         small
% 4.04/0.99  --sat_out_clauses                       false
% 4.04/0.99  
% 4.04/0.99  ------ QBF Options
% 4.04/0.99  
% 4.04/0.99  --qbf_mode                              false
% 4.04/0.99  --qbf_elim_univ                         false
% 4.04/0.99  --qbf_dom_inst                          none
% 4.04/0.99  --qbf_dom_pre_inst                      false
% 4.04/0.99  --qbf_sk_in                             false
% 4.04/0.99  --qbf_pred_elim                         true
% 4.04/0.99  --qbf_split                             512
% 4.04/0.99  
% 4.04/0.99  ------ BMC1 Options
% 4.04/0.99  
% 4.04/0.99  --bmc1_incremental                      false
% 4.04/0.99  --bmc1_axioms                           reachable_all
% 4.04/0.99  --bmc1_min_bound                        0
% 4.04/0.99  --bmc1_max_bound                        -1
% 4.04/0.99  --bmc1_max_bound_default                -1
% 4.04/0.99  --bmc1_symbol_reachability              true
% 4.04/0.99  --bmc1_property_lemmas                  false
% 4.04/0.99  --bmc1_k_induction                      false
% 4.04/0.99  --bmc1_non_equiv_states                 false
% 4.04/0.99  --bmc1_deadlock                         false
% 4.04/0.99  --bmc1_ucm                              false
% 4.04/0.99  --bmc1_add_unsat_core                   none
% 4.04/0.99  --bmc1_unsat_core_children              false
% 4.04/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 4.04/0.99  --bmc1_out_stat                         full
% 4.04/0.99  --bmc1_ground_init                      false
% 4.04/0.99  --bmc1_pre_inst_next_state              false
% 4.04/0.99  --bmc1_pre_inst_state                   false
% 4.04/0.99  --bmc1_pre_inst_reach_state             false
% 4.04/0.99  --bmc1_out_unsat_core                   false
% 4.04/0.99  --bmc1_aig_witness_out                  false
% 4.04/0.99  --bmc1_verbose                          false
% 4.04/0.99  --bmc1_dump_clauses_tptp                false
% 4.04/0.99  --bmc1_dump_unsat_core_tptp             false
% 4.04/0.99  --bmc1_dump_file                        -
% 4.04/0.99  --bmc1_ucm_expand_uc_limit              128
% 4.04/0.99  --bmc1_ucm_n_expand_iterations          6
% 4.04/0.99  --bmc1_ucm_extend_mode                  1
% 4.04/0.99  --bmc1_ucm_init_mode                    2
% 4.04/0.99  --bmc1_ucm_cone_mode                    none
% 4.04/0.99  --bmc1_ucm_reduced_relation_type        0
% 4.04/0.99  --bmc1_ucm_relax_model                  4
% 4.04/0.99  --bmc1_ucm_full_tr_after_sat            true
% 4.04/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 4.04/0.99  --bmc1_ucm_layered_model                none
% 4.04/0.99  --bmc1_ucm_max_lemma_size               10
% 4.04/0.99  
% 4.04/0.99  ------ AIG Options
% 4.04/0.99  
% 4.04/0.99  --aig_mode                              false
% 4.04/0.99  
% 4.04/0.99  ------ Instantiation Options
% 4.04/0.99  
% 4.04/0.99  --instantiation_flag                    true
% 4.04/0.99  --inst_sos_flag                         false
% 4.04/0.99  --inst_sos_phase                        true
% 4.04/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 4.04/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 4.04/0.99  --inst_lit_sel_side                     none
% 4.04/0.99  --inst_solver_per_active                1400
% 4.04/0.99  --inst_solver_calls_frac                1.
% 4.04/0.99  --inst_passive_queue_type               priority_queues
% 4.04/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 4.04/0.99  --inst_passive_queues_freq              [25;2]
% 4.04/0.99  --inst_dismatching                      true
% 4.04/0.99  --inst_eager_unprocessed_to_passive     true
% 4.04/0.99  --inst_prop_sim_given                   true
% 4.04/0.99  --inst_prop_sim_new                     false
% 4.04/0.99  --inst_subs_new                         false
% 4.04/0.99  --inst_eq_res_simp                      false
% 4.04/0.99  --inst_subs_given                       false
% 4.04/0.99  --inst_orphan_elimination               true
% 4.04/0.99  --inst_learning_loop_flag               true
% 4.04/0.99  --inst_learning_start                   3000
% 4.04/0.99  --inst_learning_factor                  2
% 4.04/0.99  --inst_start_prop_sim_after_learn       3
% 4.04/0.99  --inst_sel_renew                        solver
% 4.04/0.99  --inst_lit_activity_flag                true
% 4.04/0.99  --inst_restr_to_given                   false
% 4.04/0.99  --inst_activity_threshold               500
% 4.04/0.99  --inst_out_proof                        true
% 4.04/0.99  
% 4.04/0.99  ------ Resolution Options
% 4.04/0.99  
% 4.04/0.99  --resolution_flag                       false
% 4.04/0.99  --res_lit_sel                           adaptive
% 4.04/0.99  --res_lit_sel_side                      none
% 4.04/0.99  --res_ordering                          kbo
% 4.04/0.99  --res_to_prop_solver                    active
% 4.04/0.99  --res_prop_simpl_new                    false
% 4.04/0.99  --res_prop_simpl_given                  true
% 4.04/0.99  --res_passive_queue_type                priority_queues
% 4.04/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 4.04/0.99  --res_passive_queues_freq               [15;5]
% 4.04/0.99  --res_forward_subs                      full
% 4.04/0.99  --res_backward_subs                     full
% 4.04/0.99  --res_forward_subs_resolution           true
% 4.04/0.99  --res_backward_subs_resolution          true
% 4.04/0.99  --res_orphan_elimination                true
% 4.04/0.99  --res_time_limit                        2.
% 4.04/0.99  --res_out_proof                         true
% 4.04/0.99  
% 4.04/0.99  ------ Superposition Options
% 4.04/0.99  
% 4.04/0.99  --superposition_flag                    true
% 4.04/0.99  --sup_passive_queue_type                priority_queues
% 4.04/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 4.04/0.99  --sup_passive_queues_freq               [8;1;4]
% 4.04/0.99  --demod_completeness_check              fast
% 4.04/0.99  --demod_use_ground                      true
% 4.04/0.99  --sup_to_prop_solver                    passive
% 4.04/0.99  --sup_prop_simpl_new                    true
% 4.04/0.99  --sup_prop_simpl_given                  true
% 4.04/0.99  --sup_fun_splitting                     false
% 4.04/0.99  --sup_smt_interval                      50000
% 4.04/0.99  
% 4.04/0.99  ------ Superposition Simplification Setup
% 4.04/0.99  
% 4.04/0.99  --sup_indices_passive                   []
% 4.04/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 4.04/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 4.04/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_full_bw                           [BwDemod]
% 4.04/0.99  --sup_immed_triv                        [TrivRules]
% 4.04/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 4.04/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_immed_bw_main                     []
% 4.04/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 4.04/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 4.04/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 4.04/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 4.04/0.99  
% 4.04/0.99  ------ Combination Options
% 4.04/0.99  
% 4.04/0.99  --comb_res_mult                         3
% 4.04/0.99  --comb_sup_mult                         2
% 4.04/0.99  --comb_inst_mult                        10
% 4.04/0.99  
% 4.04/0.99  ------ Debug Options
% 4.04/0.99  
% 4.04/0.99  --dbg_backtrace                         false
% 4.04/0.99  --dbg_dump_prop_clauses                 false
% 4.04/0.99  --dbg_dump_prop_clauses_file            -
% 4.04/0.99  --dbg_out_stat                          false
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  ------ Proving...
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  % SZS status Theorem for theBenchmark.p
% 4.04/0.99  
% 4.04/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 4.04/0.99  
% 4.04/0.99  fof(f13,axiom,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_xboole_0(X0,k4_xboole_0(X2,X1)))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f26,plain,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_xboole_0(X0,k4_xboole_0(X2,X1)) | ~r1_tarski(X0,X1))),
% 4.04/0.99    inference(ennf_transformation,[],[f13])).
% 4.04/0.99  
% 4.04/0.99  fof(f54,plain,(
% 4.04/0.99    ( ! [X2,X0,X1] : (r1_xboole_0(X0,k4_xboole_0(X2,X1)) | ~r1_tarski(X0,X1)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f26])).
% 4.04/0.99  
% 4.04/0.99  fof(f12,axiom,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_xboole_0(X0,k4_xboole_0(X1,X2)) => r1_xboole_0(X1,k4_xboole_0(X0,X2)))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f25,plain,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_xboole_0(X1,k4_xboole_0(X0,X2)) | ~r1_xboole_0(X0,k4_xboole_0(X1,X2)))),
% 4.04/0.99    inference(ennf_transformation,[],[f12])).
% 4.04/0.99  
% 4.04/0.99  fof(f53,plain,(
% 4.04/0.99    ( ! [X2,X0,X1] : (r1_xboole_0(X1,k4_xboole_0(X0,X2)) | ~r1_xboole_0(X0,k4_xboole_0(X1,X2))) )),
% 4.04/0.99    inference(cnf_transformation,[],[f25])).
% 4.04/0.99  
% 4.04/0.99  fof(f18,axiom,(
% 4.04/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f28,plain,(
% 4.04/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 4.04/0.99    inference(ennf_transformation,[],[f18])).
% 4.04/0.99  
% 4.04/0.99  fof(f65,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 4.04/0.99    inference(cnf_transformation,[],[f28])).
% 4.04/0.99  
% 4.04/0.99  fof(f20,conjecture,(
% 4.04/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2))))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f21,negated_conjecture,(
% 4.04/0.99    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2))))),
% 4.04/0.99    inference(negated_conjecture,[],[f20])).
% 4.04/0.99  
% 4.04/0.99  fof(f29,plain,(
% 4.04/0.99    ? [X0,X1] : (? [X2] : ((r1_xboole_0(X1,k3_subset_1(X0,X2)) <~> r1_tarski(X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 4.04/0.99    inference(ennf_transformation,[],[f21])).
% 4.04/0.99  
% 4.04/0.99  fof(f36,plain,(
% 4.04/0.99    ? [X0,X1] : (? [X2] : (((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 4.04/0.99    inference(nnf_transformation,[],[f29])).
% 4.04/0.99  
% 4.04/0.99  fof(f37,plain,(
% 4.04/0.99    ? [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 4.04/0.99    inference(flattening,[],[f36])).
% 4.04/0.99  
% 4.04/0.99  fof(f39,plain,(
% 4.04/0.99    ( ! [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) => ((~r1_tarski(X1,sK3) | ~r1_xboole_0(X1,k3_subset_1(X0,sK3))) & (r1_tarski(X1,sK3) | r1_xboole_0(X1,k3_subset_1(X0,sK3))) & m1_subset_1(sK3,k1_zfmisc_1(X0)))) )),
% 4.04/0.99    introduced(choice_axiom,[])).
% 4.04/0.99  
% 4.04/0.99  fof(f38,plain,(
% 4.04/0.99    ? [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (? [X2] : ((~r1_tarski(sK2,X2) | ~r1_xboole_0(sK2,k3_subset_1(sK1,X2))) & (r1_tarski(sK2,X2) | r1_xboole_0(sK2,k3_subset_1(sK1,X2))) & m1_subset_1(X2,k1_zfmisc_1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(sK1)))),
% 4.04/0.99    introduced(choice_axiom,[])).
% 4.04/0.99  
% 4.04/0.99  fof(f40,plain,(
% 4.04/0.99    ((~r1_tarski(sK2,sK3) | ~r1_xboole_0(sK2,k3_subset_1(sK1,sK3))) & (r1_tarski(sK2,sK3) | r1_xboole_0(sK2,k3_subset_1(sK1,sK3))) & m1_subset_1(sK3,k1_zfmisc_1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 4.04/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f37,f39,f38])).
% 4.04/0.99  
% 4.04/0.99  fof(f68,plain,(
% 4.04/0.99    m1_subset_1(sK3,k1_zfmisc_1(sK1))),
% 4.04/0.99    inference(cnf_transformation,[],[f40])).
% 4.04/0.99  
% 4.04/0.99  fof(f69,plain,(
% 4.04/0.99    r1_tarski(sK2,sK3) | r1_xboole_0(sK2,k3_subset_1(sK1,sK3))),
% 4.04/0.99    inference(cnf_transformation,[],[f40])).
% 4.04/0.99  
% 4.04/0.99  fof(f17,axiom,(
% 4.04/0.99    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f27,plain,(
% 4.04/0.99    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 4.04/0.99    inference(ennf_transformation,[],[f17])).
% 4.04/0.99  
% 4.04/0.99  fof(f35,plain,(
% 4.04/0.99    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 4.04/0.99    inference(nnf_transformation,[],[f27])).
% 4.04/0.99  
% 4.04/0.99  fof(f61,plain,(
% 4.04/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f35])).
% 4.04/0.99  
% 4.04/0.99  fof(f67,plain,(
% 4.04/0.99    m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 4.04/0.99    inference(cnf_transformation,[],[f40])).
% 4.04/0.99  
% 4.04/0.99  fof(f19,axiom,(
% 4.04/0.99    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f66,plain,(
% 4.04/0.99    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 4.04/0.99    inference(cnf_transformation,[],[f19])).
% 4.04/0.99  
% 4.04/0.99  fof(f16,axiom,(
% 4.04/0.99    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f31,plain,(
% 4.04/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 4.04/0.99    inference(nnf_transformation,[],[f16])).
% 4.04/0.99  
% 4.04/0.99  fof(f32,plain,(
% 4.04/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 4.04/0.99    inference(rectify,[],[f31])).
% 4.04/0.99  
% 4.04/0.99  fof(f33,plain,(
% 4.04/0.99    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 4.04/0.99    introduced(choice_axiom,[])).
% 4.04/0.99  
% 4.04/0.99  fof(f34,plain,(
% 4.04/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 4.04/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).
% 4.04/0.99  
% 4.04/0.99  fof(f57,plain,(
% 4.04/0.99    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 4.04/0.99    inference(cnf_transformation,[],[f34])).
% 4.04/0.99  
% 4.04/0.99  fof(f80,plain,(
% 4.04/0.99    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 4.04/0.99    inference(equality_resolution,[],[f57])).
% 4.04/0.99  
% 4.04/0.99  fof(f11,axiom,(
% 4.04/0.99    ! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f23,plain,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | (~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)))),
% 4.04/0.99    inference(ennf_transformation,[],[f11])).
% 4.04/0.99  
% 4.04/0.99  fof(f24,plain,(
% 4.04/0.99    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1))),
% 4.04/0.99    inference(flattening,[],[f23])).
% 4.04/0.99  
% 4.04/0.99  fof(f52,plain,(
% 4.04/0.99    ( ! [X2,X0,X1] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f24])).
% 4.04/0.99  
% 4.04/0.99  fof(f3,axiom,(
% 4.04/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f30,plain,(
% 4.04/0.99    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 4.04/0.99    inference(nnf_transformation,[],[f3])).
% 4.04/0.99  
% 4.04/0.99  fof(f43,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f30])).
% 4.04/0.99  
% 4.04/0.99  fof(f9,axiom,(
% 4.04/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f50,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 4.04/0.99    inference(cnf_transformation,[],[f9])).
% 4.04/0.99  
% 4.04/0.99  fof(f74,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1)) | ~r1_xboole_0(X0,X1)) )),
% 4.04/0.99    inference(definition_unfolding,[],[f43,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f8,axiom,(
% 4.04/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f49,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 4.04/0.99    inference(cnf_transformation,[],[f8])).
% 4.04/0.99  
% 4.04/0.99  fof(f78,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 4.04/0.99    inference(definition_unfolding,[],[f49,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f1,axiom,(
% 4.04/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f41,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f1])).
% 4.04/0.99  
% 4.04/0.99  fof(f72,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 4.04/0.99    inference(definition_unfolding,[],[f41,f50,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f7,axiom,(
% 4.04/0.99    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f48,plain,(
% 4.04/0.99    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f7])).
% 4.04/0.99  
% 4.04/0.99  fof(f77,plain,(
% 4.04/0.99    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0)) )),
% 4.04/0.99    inference(definition_unfolding,[],[f48,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f4,axiom,(
% 4.04/0.99    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f22,plain,(
% 4.04/0.99    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 4.04/0.99    inference(rectify,[],[f4])).
% 4.04/0.99  
% 4.04/0.99  fof(f45,plain,(
% 4.04/0.99    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 4.04/0.99    inference(cnf_transformation,[],[f22])).
% 4.04/0.99  
% 4.04/0.99  fof(f75,plain,(
% 4.04/0.99    ( ! [X0] : (k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0) )),
% 4.04/0.99    inference(definition_unfolding,[],[f45,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f5,axiom,(
% 4.04/0.99    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f46,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)) )),
% 4.04/0.99    inference(cnf_transformation,[],[f5])).
% 4.04/0.99  
% 4.04/0.99  fof(f71,plain,(
% 4.04/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1)) )),
% 4.04/0.99    inference(definition_unfolding,[],[f46,f50])).
% 4.04/0.99  
% 4.04/0.99  fof(f15,axiom,(
% 4.04/0.99    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 4.04/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 4.04/0.99  
% 4.04/0.99  fof(f56,plain,(
% 4.04/0.99    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 4.04/0.99    inference(cnf_transformation,[],[f15])).
% 4.04/0.99  
% 4.04/0.99  fof(f70,plain,(
% 4.04/0.99    ~r1_tarski(sK2,sK3) | ~r1_xboole_0(sK2,k3_subset_1(sK1,sK3))),
% 4.04/0.99    inference(cnf_transformation,[],[f40])).
% 4.04/0.99  
% 4.04/0.99  cnf(c_12,plain,
% 4.04/0.99      ( ~ r1_tarski(X0,X1) | r1_xboole_0(X0,k4_xboole_0(X2,X1)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f54]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1899,plain,
% 4.04/0.99      ( r1_tarski(X0,X1) != iProver_top
% 4.04/0.99      | r1_xboole_0(X0,k4_xboole_0(X2,X1)) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_11,plain,
% 4.04/0.99      ( ~ r1_xboole_0(X0,k4_xboole_0(X1,X2))
% 4.04/0.99      | r1_xboole_0(X1,k4_xboole_0(X0,X2)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f53]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1900,plain,
% 4.04/0.99      ( r1_xboole_0(X0,k4_xboole_0(X1,X2)) != iProver_top
% 4.04/0.99      | r1_xboole_0(X1,k4_xboole_0(X0,X2)) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_11328,plain,
% 4.04/0.99      ( r1_tarski(X0,X1) != iProver_top
% 4.04/0.99      | r1_xboole_0(X2,k4_xboole_0(X0,X1)) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_1899,c_1900]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_23,plain,
% 4.04/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 4.04/0.99      | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 4.04/0.99      inference(cnf_transformation,[],[f65]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_27,negated_conjecture,
% 4.04/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f68]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_480,plain,
% 4.04/0.99      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
% 4.04/0.99      | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1)
% 4.04/0.99      | sK3 != X1 ),
% 4.04/0.99      inference(resolution_lifted,[status(thm)],[c_23,c_27]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_481,plain,
% 4.04/0.99      ( k3_subset_1(X0,sK3) = k4_xboole_0(X0,sK3)
% 4.04/0.99      | k1_zfmisc_1(X0) != k1_zfmisc_1(sK1) ),
% 4.04/0.99      inference(unflattening,[status(thm)],[c_480]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2041,plain,
% 4.04/0.99      ( k3_subset_1(sK1,sK3) = k4_xboole_0(sK1,sK3) ),
% 4.04/0.99      inference(equality_resolution,[status(thm)],[c_481]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_26,negated_conjecture,
% 4.04/0.99      ( r1_tarski(sK2,sK3) | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f69]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1893,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) = iProver_top
% 4.04/0.99      | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2095,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) = iProver_top
% 4.04/0.99      | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) = iProver_top ),
% 4.04/0.99      inference(demodulation,[status(thm)],[c_2041,c_1893]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_11329,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) = iProver_top
% 4.04/0.99      | r1_xboole_0(sK1,k4_xboole_0(sK2,sK3)) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_2095,c_1900]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_11379,plain,
% 4.04/0.99      ( r1_xboole_0(sK1,k4_xboole_0(sK2,sK3)) = iProver_top ),
% 4.04/0.99      inference(backward_subsumption_resolution,
% 4.04/0.99                [status(thm)],
% 4.04/0.99                [c_11328,c_11329]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_22,plain,
% 4.04/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 4.04/0.99      inference(cnf_transformation,[],[f61]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_28,negated_conjecture,
% 4.04/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f67]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_467,plain,
% 4.04/0.99      ( r2_hidden(X0,X1)
% 4.04/0.99      | v1_xboole_0(X1)
% 4.04/0.99      | k1_zfmisc_1(sK1) != X1
% 4.04/0.99      | sK2 != X0 ),
% 4.04/0.99      inference(resolution_lifted,[status(thm)],[c_22,c_28]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_468,plain,
% 4.04/0.99      ( r2_hidden(sK2,k1_zfmisc_1(sK1)) | v1_xboole_0(k1_zfmisc_1(sK1)) ),
% 4.04/0.99      inference(unflattening,[status(thm)],[c_467]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_24,plain,
% 4.04/0.99      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f66]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_474,plain,
% 4.04/0.99      ( r2_hidden(sK2,k1_zfmisc_1(sK1)) ),
% 4.04/0.99      inference(forward_subsumption_resolution,
% 4.04/0.99                [status(thm)],
% 4.04/0.99                [c_468,c_24]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1891,plain,
% 4.04/0.99      ( r2_hidden(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_474]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_18,plain,
% 4.04/0.99      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 4.04/0.99      inference(cnf_transformation,[],[f80]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1895,plain,
% 4.04/0.99      ( r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top
% 4.04/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2733,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK1) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_1891,c_1895]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_10,plain,
% 4.04/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_xboole_0(X1,X2) | r1_xboole_0(X0,X2) ),
% 4.04/0.99      inference(cnf_transformation,[],[f52]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1901,plain,
% 4.04/0.99      ( r1_tarski(X0,X1) != iProver_top
% 4.04/0.99      | r1_xboole_0(X1,X2) != iProver_top
% 4.04/0.99      | r1_xboole_0(X0,X2) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_14987,plain,
% 4.04/0.99      ( r1_xboole_0(sK1,X0) != iProver_top
% 4.04/0.99      | r1_xboole_0(sK2,X0) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_2733,c_1901]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_16688,plain,
% 4.04/0.99      ( r1_xboole_0(sK2,k4_xboole_0(sK2,sK3)) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_11379,c_14987]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_4,plain,
% 4.04/0.99      ( ~ r1_xboole_0(X0,X1)
% 4.04/0.99      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0 ),
% 4.04/0.99      inference(cnf_transformation,[],[f74]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1903,plain,
% 4.04/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_xboole_0
% 4.04/0.99      | r1_xboole_0(X0,X1) != iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_17133,plain,
% 4.04/0.99      ( k4_xboole_0(sK2,k4_xboole_0(sK2,k4_xboole_0(sK2,sK3))) = k1_xboole_0 ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_16688,c_1903]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_8,plain,
% 4.04/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 4.04/0.99      inference(cnf_transformation,[],[f78]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_18736,plain,
% 4.04/0.99      ( k4_xboole_0(sK2,sK3) = k1_xboole_0 ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_17133,c_8]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1,plain,
% 4.04/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f72]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_7,plain,
% 4.04/0.99      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
% 4.04/0.99      inference(cnf_transformation,[],[f77]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1902,plain,
% 4.04/0.99      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2776,plain,
% 4.04/0.99      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_1,c_1902]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_19407,plain,
% 4.04/0.99      ( r1_tarski(k4_xboole_0(sK2,k1_xboole_0),sK3) = iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_18736,c_2776]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_5,plain,
% 4.04/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
% 4.04/0.99      inference(cnf_transformation,[],[f75]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_0,plain,
% 4.04/0.99      ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 4.04/0.99      inference(cnf_transformation,[],[f71]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2742,plain,
% 4.04/0.99      ( k5_xboole_0(X0,X0) = k4_xboole_0(X0,X0) ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_5,c_0]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_14,plain,
% 4.04/0.99      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 4.04/0.99      inference(cnf_transformation,[],[f56]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2751,plain,
% 4.04/0.99      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 4.04/0.99      inference(light_normalisation,[status(thm)],[c_2742,c_14]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2971,plain,
% 4.04/0.99      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 4.04/0.99      inference(demodulation,[status(thm)],[c_2751,c_5]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_19446,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) = iProver_top ),
% 4.04/0.99      inference(demodulation,[status(thm)],[c_19407,c_2971]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_25,negated_conjecture,
% 4.04/0.99      ( ~ r1_tarski(sK2,sK3) | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
% 4.04/0.99      inference(cnf_transformation,[],[f70]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_1894,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) != iProver_top
% 4.04/0.99      | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) != iProver_top ),
% 4.04/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_2096,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) != iProver_top
% 4.04/0.99      | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) != iProver_top ),
% 4.04/0.99      inference(demodulation,[status(thm)],[c_2041,c_1894]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(c_7783,plain,
% 4.04/0.99      ( r1_tarski(sK2,sK3) != iProver_top ),
% 4.04/0.99      inference(superposition,[status(thm)],[c_1899,c_2096]) ).
% 4.04/0.99  
% 4.04/0.99  cnf(contradiction,plain,
% 4.04/0.99      ( $false ),
% 4.04/0.99      inference(minisat,[status(thm)],[c_19446,c_7783]) ).
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 4.04/0.99  
% 4.04/0.99  ------                               Statistics
% 4.04/0.99  
% 4.04/0.99  ------ General
% 4.04/0.99  
% 4.04/0.99  abstr_ref_over_cycles:                  0
% 4.04/0.99  abstr_ref_under_cycles:                 0
% 4.04/0.99  gc_basic_clause_elim:                   0
% 4.04/0.99  forced_gc_time:                         0
% 4.04/0.99  parsing_time:                           0.01
% 4.04/0.99  unif_index_cands_time:                  0.
% 4.04/0.99  unif_index_add_time:                    0.
% 4.04/0.99  orderings_time:                         0.
% 4.04/0.99  out_proof_time:                         0.007
% 4.04/0.99  total_time:                             0.435
% 4.04/0.99  num_of_symbols:                         45
% 4.04/0.99  num_of_terms:                           18630
% 4.04/0.99  
% 4.04/0.99  ------ Preprocessing
% 4.04/0.99  
% 4.04/0.99  num_of_splits:                          0
% 4.04/0.99  num_of_split_atoms:                     0
% 4.04/0.99  num_of_reused_defs:                     0
% 4.04/0.99  num_eq_ax_congr_red:                    6
% 4.04/0.99  num_of_sem_filtered_clauses:            1
% 4.04/0.99  num_of_subtypes:                        0
% 4.04/0.99  monotx_restored_types:                  0
% 4.04/0.99  sat_num_of_epr_types:                   0
% 4.04/0.99  sat_num_of_non_cyclic_types:            0
% 4.04/0.99  sat_guarded_non_collapsed_types:        0
% 4.04/0.99  num_pure_diseq_elim:                    0
% 4.04/0.99  simp_replaced_by:                       0
% 4.04/0.99  res_preprocessed:                       126
% 4.04/0.99  prep_upred:                             0
% 4.04/0.99  prep_unflattend:                        104
% 4.04/0.99  smt_new_axioms:                         0
% 4.04/0.99  pred_elim_cands:                        3
% 4.04/0.99  pred_elim:                              2
% 4.04/0.99  pred_elim_cl:                           3
% 4.04/0.99  pred_elim_cycles:                       7
% 4.04/0.99  merged_defs:                            24
% 4.04/0.99  merged_defs_ncl:                        0
% 4.04/0.99  bin_hyper_res:                          25
% 4.04/0.99  prep_cycles:                            4
% 4.04/0.99  pred_elim_time:                         0.014
% 4.04/0.99  splitting_time:                         0.
% 4.04/0.99  sem_filter_time:                        0.
% 4.04/0.99  monotx_time:                            0.
% 4.04/0.99  subtype_inf_time:                       0.
% 4.04/0.99  
% 4.04/0.99  ------ Problem properties
% 4.04/0.99  
% 4.04/0.99  clauses:                                26
% 4.04/0.99  conjectures:                            2
% 4.04/0.99  epr:                                    1
% 4.04/0.99  horn:                                   24
% 4.04/0.99  ground:                                 4
% 4.04/0.99  unary:                                  12
% 4.04/0.99  binary:                                 11
% 4.04/0.99  lits:                                   43
% 4.04/0.99  lits_eq:                                18
% 4.04/0.99  fd_pure:                                0
% 4.04/0.99  fd_pseudo:                              0
% 4.04/0.99  fd_cond:                                0
% 4.04/0.99  fd_pseudo_cond:                         2
% 4.04/0.99  ac_symbols:                             1
% 4.04/0.99  
% 4.04/0.99  ------ Propositional Solver
% 4.04/0.99  
% 4.04/0.99  prop_solver_calls:                      28
% 4.04/0.99  prop_fast_solver_calls:                 790
% 4.04/0.99  smt_solver_calls:                       0
% 4.04/0.99  smt_fast_solver_calls:                  0
% 4.04/0.99  prop_num_of_clauses:                    4435
% 4.04/0.99  prop_preprocess_simplified:             8379
% 4.04/0.99  prop_fo_subsumed:                       1
% 4.04/0.99  prop_solver_time:                       0.
% 4.04/0.99  smt_solver_time:                        0.
% 4.04/0.99  smt_fast_solver_time:                   0.
% 4.04/0.99  prop_fast_solver_time:                  0.
% 4.04/0.99  prop_unsat_core_time:                   0.
% 4.04/0.99  
% 4.04/0.99  ------ QBF
% 4.04/0.99  
% 4.04/0.99  qbf_q_res:                              0
% 4.04/0.99  qbf_num_tautologies:                    0
% 4.04/0.99  qbf_prep_cycles:                        0
% 4.04/0.99  
% 4.04/0.99  ------ BMC1
% 4.04/0.99  
% 4.04/0.99  bmc1_current_bound:                     -1
% 4.04/0.99  bmc1_last_solved_bound:                 -1
% 4.04/0.99  bmc1_unsat_core_size:                   -1
% 4.04/0.99  bmc1_unsat_core_parents_size:           -1
% 4.04/0.99  bmc1_merge_next_fun:                    0
% 4.04/0.99  bmc1_unsat_core_clauses_time:           0.
% 4.04/0.99  
% 4.04/0.99  ------ Instantiation
% 4.04/0.99  
% 4.04/0.99  inst_num_of_clauses:                    914
% 4.04/0.99  inst_num_in_passive:                    194
% 4.04/0.99  inst_num_in_active:                     426
% 4.04/0.99  inst_num_in_unprocessed:                294
% 4.04/0.99  inst_num_of_loops:                      550
% 4.04/0.99  inst_num_of_learning_restarts:          0
% 4.04/0.99  inst_num_moves_active_passive:          122
% 4.04/0.99  inst_lit_activity:                      0
% 4.04/0.99  inst_lit_activity_moves:                0
% 4.04/0.99  inst_num_tautologies:                   0
% 4.04/0.99  inst_num_prop_implied:                  0
% 4.04/0.99  inst_num_existing_simplified:           0
% 4.04/0.99  inst_num_eq_res_simplified:             0
% 4.04/0.99  inst_num_child_elim:                    0
% 4.04/0.99  inst_num_of_dismatching_blockings:      586
% 4.04/0.99  inst_num_of_non_proper_insts:           1014
% 4.04/0.99  inst_num_of_duplicates:                 0
% 4.04/0.99  inst_inst_num_from_inst_to_res:         0
% 4.04/0.99  inst_dismatching_checking_time:         0.
% 4.04/0.99  
% 4.04/0.99  ------ Resolution
% 4.04/0.99  
% 4.04/0.99  res_num_of_clauses:                     0
% 4.04/0.99  res_num_in_passive:                     0
% 4.04/0.99  res_num_in_active:                      0
% 4.04/0.99  res_num_of_loops:                       130
% 4.04/0.99  res_forward_subset_subsumed:            53
% 4.04/0.99  res_backward_subset_subsumed:           0
% 4.04/0.99  res_forward_subsumed:                   3
% 4.04/0.99  res_backward_subsumed:                  0
% 4.04/0.99  res_forward_subsumption_resolution:     4
% 4.04/0.99  res_backward_subsumption_resolution:    0
% 4.04/0.99  res_clause_to_clause_subsumption:       23919
% 4.04/0.99  res_orphan_elimination:                 0
% 4.04/0.99  res_tautology_del:                      98
% 4.04/0.99  res_num_eq_res_simplified:              0
% 4.04/0.99  res_num_sel_changes:                    0
% 4.04/0.99  res_moves_from_active_to_pass:          0
% 4.04/0.99  
% 4.04/0.99  ------ Superposition
% 4.04/0.99  
% 4.04/0.99  sup_time_total:                         0.
% 4.04/0.99  sup_time_generating:                    0.
% 4.04/0.99  sup_time_sim_full:                      0.
% 4.04/0.99  sup_time_sim_immed:                     0.
% 4.04/0.99  
% 4.04/0.99  sup_num_of_clauses:                     1187
% 4.04/0.99  sup_num_in_active:                      93
% 4.04/0.99  sup_num_in_passive:                     1094
% 4.04/0.99  sup_num_of_loops:                       109
% 4.04/0.99  sup_fw_superposition:                   3483
% 4.04/0.99  sup_bw_superposition:                   2544
% 4.04/0.99  sup_immediate_simplified:               1477
% 4.04/0.99  sup_given_eliminated:                   5
% 4.04/0.99  comparisons_done:                       0
% 4.04/0.99  comparisons_avoided:                    0
% 4.04/0.99  
% 4.04/0.99  ------ Simplifications
% 4.04/0.99  
% 4.04/0.99  
% 4.04/0.99  sim_fw_subset_subsumed:                 14
% 4.04/0.99  sim_bw_subset_subsumed:                 4
% 4.04/0.99  sim_fw_subsumed:                        193
% 4.04/0.99  sim_bw_subsumed:                        2
% 4.04/0.99  sim_fw_subsumption_res:                 0
% 4.04/0.99  sim_bw_subsumption_res:                 1
% 4.04/0.99  sim_tautology_del:                      3
% 4.04/0.99  sim_eq_tautology_del:                   353
% 4.04/0.99  sim_eq_res_simp:                        0
% 4.04/0.99  sim_fw_demodulated:                     567
% 4.04/0.99  sim_bw_demodulated:                     68
% 4.04/0.99  sim_light_normalised:                   739
% 4.04/0.99  sim_joinable_taut:                      165
% 4.04/0.99  sim_joinable_simp:                      0
% 4.04/0.99  sim_ac_normalised:                      0
% 4.04/0.99  sim_smt_subsumption:                    0
% 4.04/0.99  
%------------------------------------------------------------------------------
