%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:14:14 EST 2020

% Result     : Theorem 7.34s
% Output     : CNFRefutation 7.34s
% Verified   : 
% Statistics : Number of formulae       :  111 ( 358 expanded)
%              Number of clauses        :   69 ( 147 expanded)
%              Number of leaves         :   13 (  83 expanded)
%              Depth                    :   15
%              Number of atoms          :  281 ( 943 expanded)
%              Number of equality atoms :  110 ( 180 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1)) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1))
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f31,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1))
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_xboole_0(k1_tops_1(X0,sK1),k2_tops_1(X0,sK1))
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1))
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ~ r1_xboole_0(k1_tops_1(sK0,X1),k2_tops_1(sK0,X1))
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ~ r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f28,f31,f30])).

fof(f46,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f32])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f33,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f45,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f32])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2)))
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_xboole_0(X1,X2)
              | ~ r1_tarski(X1,k3_subset_1(X0,X2)) )
            & ( r1_tarski(X1,k3_subset_1(X0,X2))
              | ~ r1_xboole_0(X1,X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X1,X2)
      | ~ r1_tarski(X1,k3_subset_1(X0,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f15])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f24])).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f47,plain,(
    ~ r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_526,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_839,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_526])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_533,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
    | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_832,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_533])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_14,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_300,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_14])).

cnf(c_301,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_300])).

cnf(c_521,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
    | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_42),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_tops_1(sK0,X0_42) ),
    inference(subtyping,[status(esa)],[c_301])).

cnf(c_844,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_42),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_tops_1(sK0,X0_42)
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_521])).

cnf(c_1768,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0_42)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_832,c_844])).

cnf(c_26158,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
    inference(superposition,[status(thm)],[c_839,c_1768])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_264,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_14])).

cnf(c_265,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_264])).

cnf(c_524,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)) = k2_tops_1(sK0,X0_42) ),
    inference(subtyping,[status(esa)],[c_265])).

cnf(c_841,plain,
    ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)) = k2_tops_1(sK0,X0_42)
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_524])).

cnf(c_1094,plain,
    ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_839,c_841])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_531,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
    | k3_subset_1(X0_44,k3_subset_1(X0_44,X0_42)) = X0_42 ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_834,plain,
    ( k3_subset_1(X0_44,k3_subset_1(X0_44,X0_42)) = X0_42
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_531])).

cnf(c_1248,plain,
    ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_839,c_834])).

cnf(c_26226,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(light_normalisation,[status(thm)],[c_26158,c_1094,c_1248])).

cnf(c_3,plain,
    ( r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_530,plain,
    ( r1_tarski(k3_subset_1(X0_44,X0_42),k3_subset_1(X0_44,k9_subset_1(X0_44,X0_42,X1_42)))
    | ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
    | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_835,plain,
    ( r1_tarski(k3_subset_1(X0_44,X0_42),k3_subset_1(X0_44,k9_subset_1(X0_44,X0_42,X1_42))) = iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_530])).

cnf(c_4,plain,
    ( r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,k3_subset_1(X2,X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_529,plain,
    ( r1_xboole_0(X0_42,X1_42)
    | ~ r1_tarski(X0_42,k3_subset_1(X0_44,X1_42))
    | ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
    | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_836,plain,
    ( r1_xboole_0(X0_42,X1_42) = iProver_top
    | r1_tarski(X0_42,k3_subset_1(X0_44,X1_42)) != iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_529])).

cnf(c_1525,plain,
    ( r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(superposition,[status(thm)],[c_835,c_836])).

cnf(c_557,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_533])).

cnf(c_9712,plain,
    ( m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1525,c_557])).

cnf(c_9713,plain,
    ( r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(renaming,[status(thm)],[c_9712])).

cnf(c_26799,plain,
    ( r1_xboole_0(k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))),k2_tops_1(sK0,sK1)) = iProver_top
    | m1_subset_1(k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_26226,c_9713])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_312,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_14])).

cnf(c_313,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_312])).

cnf(c_520,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k1_tops_1(sK0,X0_42) ),
    inference(subtyping,[status(esa)],[c_313])).

cnf(c_845,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k1_tops_1(sK0,X0_42)
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_520])).

cnf(c_1623,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_839,c_845])).

cnf(c_26817,plain,
    ( r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top
    | m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_26799,c_1623,c_26226])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_252,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_14])).

cnf(c_253,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_252])).

cnf(c_525,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
    | k4_subset_1(u1_struct_0(sK0),X0_42,k2_tops_1(sK0,X0_42)) = k2_pre_topc(sK0,X0_42) ),
    inference(subtyping,[status(esa)],[c_253])).

cnf(c_840,plain,
    ( k4_subset_1(u1_struct_0(sK0),X0_42,k2_tops_1(sK0,X0_42)) = k2_pre_topc(sK0,X0_42)
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_1229,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0_42),k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))
    | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_832,c_840])).

cnf(c_5165,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
    inference(superposition,[status(thm)],[c_839,c_1229])).

cnf(c_5207,plain,
    ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
    inference(light_normalisation,[status(thm)],[c_5165,c_1094])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_532,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
    | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44))
    | m1_subset_1(k4_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_833,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
    | m1_subset_1(k4_subset_1(X0_44,X1_42,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_532])).

cnf(c_5925,plain,
    ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_5207,c_833])).

cnf(c_1165,plain,
    ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_839,c_840])).

cnf(c_1346,plain,
    ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1165,c_833])).

cnf(c_941,plain,
    ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_533])).

cnf(c_942,plain,
    ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_941])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_276,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_14])).

cnf(c_277,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(k2_tops_1(sK0,X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_276])).

cnf(c_523,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(k2_tops_1(sK0,X0_42),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_277])).

cnf(c_583,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k2_tops_1(sK0,X0_42),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_523])).

cnf(c_585,plain,
    ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_583])).

cnf(c_12,negated_conjecture,
    ( ~ r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_17,plain,
    ( r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_16,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_26817,c_5925,c_1346,c_942,c_585,c_17,c_16])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n019.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 17:27:37 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 7.34/1.49  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 7.34/1.49  
% 7.34/1.49  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.34/1.49  
% 7.34/1.49  ------  iProver source info
% 7.34/1.49  
% 7.34/1.49  git: date: 2020-06-30 10:37:57 +0100
% 7.34/1.49  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.34/1.49  git: non_committed_changes: false
% 7.34/1.49  git: last_make_outside_of_git: false
% 7.34/1.49  
% 7.34/1.49  ------ 
% 7.34/1.49  
% 7.34/1.49  ------ Input Options
% 7.34/1.49  
% 7.34/1.49  --out_options                           all
% 7.34/1.49  --tptp_safe_out                         true
% 7.34/1.49  --problem_path                          ""
% 7.34/1.49  --include_path                          ""
% 7.34/1.49  --clausifier                            res/vclausify_rel
% 7.34/1.49  --clausifier_options                    --mode clausify
% 7.34/1.49  --stdin                                 false
% 7.34/1.49  --stats_out                             all
% 7.34/1.49  
% 7.34/1.49  ------ General Options
% 7.34/1.49  
% 7.34/1.49  --fof                                   false
% 7.34/1.49  --time_out_real                         305.
% 7.34/1.49  --time_out_virtual                      -1.
% 7.34/1.49  --symbol_type_check                     false
% 7.34/1.49  --clausify_out                          false
% 7.34/1.49  --sig_cnt_out                           false
% 7.34/1.49  --trig_cnt_out                          false
% 7.34/1.49  --trig_cnt_out_tolerance                1.
% 7.34/1.49  --trig_cnt_out_sk_spl                   false
% 7.34/1.49  --abstr_cl_out                          false
% 7.34/1.49  
% 7.34/1.49  ------ Global Options
% 7.34/1.49  
% 7.34/1.49  --schedule                              default
% 7.34/1.49  --add_important_lit                     false
% 7.34/1.49  --prop_solver_per_cl                    1000
% 7.34/1.49  --min_unsat_core                        false
% 7.34/1.49  --soft_assumptions                      false
% 7.34/1.49  --soft_lemma_size                       3
% 7.34/1.49  --prop_impl_unit_size                   0
% 7.34/1.49  --prop_impl_unit                        []
% 7.34/1.49  --share_sel_clauses                     true
% 7.34/1.49  --reset_solvers                         false
% 7.34/1.49  --bc_imp_inh                            [conj_cone]
% 7.34/1.49  --conj_cone_tolerance                   3.
% 7.34/1.49  --extra_neg_conj                        none
% 7.34/1.49  --large_theory_mode                     true
% 7.34/1.49  --prolific_symb_bound                   200
% 7.34/1.49  --lt_threshold                          2000
% 7.34/1.49  --clause_weak_htbl                      true
% 7.34/1.49  --gc_record_bc_elim                     false
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing Options
% 7.34/1.49  
% 7.34/1.49  --preprocessing_flag                    true
% 7.34/1.49  --time_out_prep_mult                    0.1
% 7.34/1.49  --splitting_mode                        input
% 7.34/1.49  --splitting_grd                         true
% 7.34/1.49  --splitting_cvd                         false
% 7.34/1.49  --splitting_cvd_svl                     false
% 7.34/1.49  --splitting_nvd                         32
% 7.34/1.49  --sub_typing                            true
% 7.34/1.49  --prep_gs_sim                           true
% 7.34/1.49  --prep_unflatten                        true
% 7.34/1.49  --prep_res_sim                          true
% 7.34/1.49  --prep_upred                            true
% 7.34/1.49  --prep_sem_filter                       exhaustive
% 7.34/1.49  --prep_sem_filter_out                   false
% 7.34/1.49  --pred_elim                             true
% 7.34/1.49  --res_sim_input                         true
% 7.34/1.49  --eq_ax_congr_red                       true
% 7.34/1.49  --pure_diseq_elim                       true
% 7.34/1.49  --brand_transform                       false
% 7.34/1.49  --non_eq_to_eq                          false
% 7.34/1.49  --prep_def_merge                        true
% 7.34/1.49  --prep_def_merge_prop_impl              false
% 7.34/1.49  --prep_def_merge_mbd                    true
% 7.34/1.49  --prep_def_merge_tr_red                 false
% 7.34/1.49  --prep_def_merge_tr_cl                  false
% 7.34/1.49  --smt_preprocessing                     true
% 7.34/1.49  --smt_ac_axioms                         fast
% 7.34/1.49  --preprocessed_out                      false
% 7.34/1.49  --preprocessed_stats                    false
% 7.34/1.49  
% 7.34/1.49  ------ Abstraction refinement Options
% 7.34/1.49  
% 7.34/1.49  --abstr_ref                             []
% 7.34/1.49  --abstr_ref_prep                        false
% 7.34/1.49  --abstr_ref_until_sat                   false
% 7.34/1.49  --abstr_ref_sig_restrict                funpre
% 7.34/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.34/1.49  --abstr_ref_under                       []
% 7.34/1.49  
% 7.34/1.49  ------ SAT Options
% 7.34/1.49  
% 7.34/1.49  --sat_mode                              false
% 7.34/1.49  --sat_fm_restart_options                ""
% 7.34/1.49  --sat_gr_def                            false
% 7.34/1.49  --sat_epr_types                         true
% 7.34/1.49  --sat_non_cyclic_types                  false
% 7.34/1.49  --sat_finite_models                     false
% 7.34/1.49  --sat_fm_lemmas                         false
% 7.34/1.49  --sat_fm_prep                           false
% 7.34/1.49  --sat_fm_uc_incr                        true
% 7.34/1.49  --sat_out_model                         small
% 7.34/1.49  --sat_out_clauses                       false
% 7.34/1.49  
% 7.34/1.49  ------ QBF Options
% 7.34/1.49  
% 7.34/1.49  --qbf_mode                              false
% 7.34/1.49  --qbf_elim_univ                         false
% 7.34/1.49  --qbf_dom_inst                          none
% 7.34/1.49  --qbf_dom_pre_inst                      false
% 7.34/1.49  --qbf_sk_in                             false
% 7.34/1.49  --qbf_pred_elim                         true
% 7.34/1.49  --qbf_split                             512
% 7.34/1.49  
% 7.34/1.49  ------ BMC1 Options
% 7.34/1.49  
% 7.34/1.49  --bmc1_incremental                      false
% 7.34/1.49  --bmc1_axioms                           reachable_all
% 7.34/1.49  --bmc1_min_bound                        0
% 7.34/1.49  --bmc1_max_bound                        -1
% 7.34/1.49  --bmc1_max_bound_default                -1
% 7.34/1.49  --bmc1_symbol_reachability              true
% 7.34/1.49  --bmc1_property_lemmas                  false
% 7.34/1.49  --bmc1_k_induction                      false
% 7.34/1.49  --bmc1_non_equiv_states                 false
% 7.34/1.49  --bmc1_deadlock                         false
% 7.34/1.49  --bmc1_ucm                              false
% 7.34/1.49  --bmc1_add_unsat_core                   none
% 7.34/1.49  --bmc1_unsat_core_children              false
% 7.34/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.34/1.49  --bmc1_out_stat                         full
% 7.34/1.49  --bmc1_ground_init                      false
% 7.34/1.49  --bmc1_pre_inst_next_state              false
% 7.34/1.49  --bmc1_pre_inst_state                   false
% 7.34/1.49  --bmc1_pre_inst_reach_state             false
% 7.34/1.49  --bmc1_out_unsat_core                   false
% 7.34/1.49  --bmc1_aig_witness_out                  false
% 7.34/1.49  --bmc1_verbose                          false
% 7.34/1.49  --bmc1_dump_clauses_tptp                false
% 7.34/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.34/1.49  --bmc1_dump_file                        -
% 7.34/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.34/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.34/1.49  --bmc1_ucm_extend_mode                  1
% 7.34/1.49  --bmc1_ucm_init_mode                    2
% 7.34/1.49  --bmc1_ucm_cone_mode                    none
% 7.34/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.34/1.49  --bmc1_ucm_relax_model                  4
% 7.34/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.34/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.34/1.49  --bmc1_ucm_layered_model                none
% 7.34/1.49  --bmc1_ucm_max_lemma_size               10
% 7.34/1.49  
% 7.34/1.49  ------ AIG Options
% 7.34/1.49  
% 7.34/1.49  --aig_mode                              false
% 7.34/1.49  
% 7.34/1.49  ------ Instantiation Options
% 7.34/1.49  
% 7.34/1.49  --instantiation_flag                    true
% 7.34/1.49  --inst_sos_flag                         false
% 7.34/1.49  --inst_sos_phase                        true
% 7.34/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.34/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.34/1.49  --inst_lit_sel_side                     num_symb
% 7.34/1.49  --inst_solver_per_active                1400
% 7.34/1.49  --inst_solver_calls_frac                1.
% 7.34/1.49  --inst_passive_queue_type               priority_queues
% 7.34/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.34/1.49  --inst_passive_queues_freq              [25;2]
% 7.34/1.49  --inst_dismatching                      true
% 7.34/1.49  --inst_eager_unprocessed_to_passive     true
% 7.34/1.49  --inst_prop_sim_given                   true
% 7.34/1.49  --inst_prop_sim_new                     false
% 7.34/1.49  --inst_subs_new                         false
% 7.34/1.49  --inst_eq_res_simp                      false
% 7.34/1.49  --inst_subs_given                       false
% 7.34/1.49  --inst_orphan_elimination               true
% 7.34/1.49  --inst_learning_loop_flag               true
% 7.34/1.49  --inst_learning_start                   3000
% 7.34/1.49  --inst_learning_factor                  2
% 7.34/1.49  --inst_start_prop_sim_after_learn       3
% 7.34/1.49  --inst_sel_renew                        solver
% 7.34/1.49  --inst_lit_activity_flag                true
% 7.34/1.49  --inst_restr_to_given                   false
% 7.34/1.49  --inst_activity_threshold               500
% 7.34/1.49  --inst_out_proof                        true
% 7.34/1.49  
% 7.34/1.49  ------ Resolution Options
% 7.34/1.49  
% 7.34/1.49  --resolution_flag                       true
% 7.34/1.49  --res_lit_sel                           adaptive
% 7.34/1.49  --res_lit_sel_side                      none
% 7.34/1.49  --res_ordering                          kbo
% 7.34/1.49  --res_to_prop_solver                    active
% 7.34/1.49  --res_prop_simpl_new                    false
% 7.34/1.49  --res_prop_simpl_given                  true
% 7.34/1.49  --res_passive_queue_type                priority_queues
% 7.34/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.34/1.49  --res_passive_queues_freq               [15;5]
% 7.34/1.49  --res_forward_subs                      full
% 7.34/1.49  --res_backward_subs                     full
% 7.34/1.49  --res_forward_subs_resolution           true
% 7.34/1.49  --res_backward_subs_resolution          true
% 7.34/1.49  --res_orphan_elimination                true
% 7.34/1.49  --res_time_limit                        2.
% 7.34/1.49  --res_out_proof                         true
% 7.34/1.49  
% 7.34/1.49  ------ Superposition Options
% 7.34/1.49  
% 7.34/1.49  --superposition_flag                    true
% 7.34/1.49  --sup_passive_queue_type                priority_queues
% 7.34/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.34/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.34/1.49  --demod_completeness_check              fast
% 7.34/1.49  --demod_use_ground                      true
% 7.34/1.49  --sup_to_prop_solver                    passive
% 7.34/1.49  --sup_prop_simpl_new                    true
% 7.34/1.49  --sup_prop_simpl_given                  true
% 7.34/1.49  --sup_fun_splitting                     false
% 7.34/1.49  --sup_smt_interval                      50000
% 7.34/1.49  
% 7.34/1.49  ------ Superposition Simplification Setup
% 7.34/1.49  
% 7.34/1.49  --sup_indices_passive                   []
% 7.34/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.34/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_full_bw                           [BwDemod]
% 7.34/1.49  --sup_immed_triv                        [TrivRules]
% 7.34/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.34/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_immed_bw_main                     []
% 7.34/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.34/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.34/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.34/1.49  
% 7.34/1.49  ------ Combination Options
% 7.34/1.49  
% 7.34/1.49  --comb_res_mult                         3
% 7.34/1.49  --comb_sup_mult                         2
% 7.34/1.49  --comb_inst_mult                        10
% 7.34/1.49  
% 7.34/1.49  ------ Debug Options
% 7.34/1.49  
% 7.34/1.49  --dbg_backtrace                         false
% 7.34/1.49  --dbg_dump_prop_clauses                 false
% 7.34/1.49  --dbg_dump_prop_clauses_file            -
% 7.34/1.49  --dbg_out_stat                          false
% 7.34/1.49  ------ Parsing...
% 7.34/1.49  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.34/1.49  ------ Proving...
% 7.34/1.49  ------ Problem Properties 
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  clauses                                 14
% 7.34/1.49  conjectures                             2
% 7.34/1.49  EPR                                     0
% 7.34/1.49  Horn                                    14
% 7.34/1.49  unary                                   2
% 7.34/1.49  binary                                  8
% 7.34/1.49  lits                                    32
% 7.34/1.49  lits eq                                 5
% 7.34/1.49  fd_pure                                 0
% 7.34/1.49  fd_pseudo                               0
% 7.34/1.49  fd_cond                                 0
% 7.34/1.49  fd_pseudo_cond                          0
% 7.34/1.49  AC symbols                              0
% 7.34/1.49  
% 7.34/1.49  ------ Schedule dynamic 5 is on 
% 7.34/1.49  
% 7.34/1.49  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  ------ 
% 7.34/1.49  Current options:
% 7.34/1.49  ------ 
% 7.34/1.49  
% 7.34/1.49  ------ Input Options
% 7.34/1.49  
% 7.34/1.49  --out_options                           all
% 7.34/1.49  --tptp_safe_out                         true
% 7.34/1.49  --problem_path                          ""
% 7.34/1.49  --include_path                          ""
% 7.34/1.49  --clausifier                            res/vclausify_rel
% 7.34/1.49  --clausifier_options                    --mode clausify
% 7.34/1.49  --stdin                                 false
% 7.34/1.49  --stats_out                             all
% 7.34/1.49  
% 7.34/1.49  ------ General Options
% 7.34/1.49  
% 7.34/1.49  --fof                                   false
% 7.34/1.49  --time_out_real                         305.
% 7.34/1.49  --time_out_virtual                      -1.
% 7.34/1.49  --symbol_type_check                     false
% 7.34/1.49  --clausify_out                          false
% 7.34/1.49  --sig_cnt_out                           false
% 7.34/1.49  --trig_cnt_out                          false
% 7.34/1.49  --trig_cnt_out_tolerance                1.
% 7.34/1.49  --trig_cnt_out_sk_spl                   false
% 7.34/1.49  --abstr_cl_out                          false
% 7.34/1.49  
% 7.34/1.49  ------ Global Options
% 7.34/1.49  
% 7.34/1.49  --schedule                              default
% 7.34/1.49  --add_important_lit                     false
% 7.34/1.49  --prop_solver_per_cl                    1000
% 7.34/1.49  --min_unsat_core                        false
% 7.34/1.49  --soft_assumptions                      false
% 7.34/1.49  --soft_lemma_size                       3
% 7.34/1.49  --prop_impl_unit_size                   0
% 7.34/1.49  --prop_impl_unit                        []
% 7.34/1.49  --share_sel_clauses                     true
% 7.34/1.49  --reset_solvers                         false
% 7.34/1.49  --bc_imp_inh                            [conj_cone]
% 7.34/1.49  --conj_cone_tolerance                   3.
% 7.34/1.49  --extra_neg_conj                        none
% 7.34/1.49  --large_theory_mode                     true
% 7.34/1.49  --prolific_symb_bound                   200
% 7.34/1.49  --lt_threshold                          2000
% 7.34/1.49  --clause_weak_htbl                      true
% 7.34/1.49  --gc_record_bc_elim                     false
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing Options
% 7.34/1.49  
% 7.34/1.49  --preprocessing_flag                    true
% 7.34/1.49  --time_out_prep_mult                    0.1
% 7.34/1.49  --splitting_mode                        input
% 7.34/1.49  --splitting_grd                         true
% 7.34/1.49  --splitting_cvd                         false
% 7.34/1.49  --splitting_cvd_svl                     false
% 7.34/1.49  --splitting_nvd                         32
% 7.34/1.49  --sub_typing                            true
% 7.34/1.49  --prep_gs_sim                           true
% 7.34/1.49  --prep_unflatten                        true
% 7.34/1.49  --prep_res_sim                          true
% 7.34/1.49  --prep_upred                            true
% 7.34/1.49  --prep_sem_filter                       exhaustive
% 7.34/1.49  --prep_sem_filter_out                   false
% 7.34/1.49  --pred_elim                             true
% 7.34/1.49  --res_sim_input                         true
% 7.34/1.49  --eq_ax_congr_red                       true
% 7.34/1.49  --pure_diseq_elim                       true
% 7.34/1.49  --brand_transform                       false
% 7.34/1.49  --non_eq_to_eq                          false
% 7.34/1.49  --prep_def_merge                        true
% 7.34/1.49  --prep_def_merge_prop_impl              false
% 7.34/1.49  --prep_def_merge_mbd                    true
% 7.34/1.49  --prep_def_merge_tr_red                 false
% 7.34/1.49  --prep_def_merge_tr_cl                  false
% 7.34/1.49  --smt_preprocessing                     true
% 7.34/1.49  --smt_ac_axioms                         fast
% 7.34/1.49  --preprocessed_out                      false
% 7.34/1.49  --preprocessed_stats                    false
% 7.34/1.49  
% 7.34/1.49  ------ Abstraction refinement Options
% 7.34/1.49  
% 7.34/1.49  --abstr_ref                             []
% 7.34/1.49  --abstr_ref_prep                        false
% 7.34/1.49  --abstr_ref_until_sat                   false
% 7.34/1.49  --abstr_ref_sig_restrict                funpre
% 7.34/1.49  --abstr_ref_af_restrict_to_split_sk     false
% 7.34/1.49  --abstr_ref_under                       []
% 7.34/1.49  
% 7.34/1.49  ------ SAT Options
% 7.34/1.49  
% 7.34/1.49  --sat_mode                              false
% 7.34/1.49  --sat_fm_restart_options                ""
% 7.34/1.49  --sat_gr_def                            false
% 7.34/1.49  --sat_epr_types                         true
% 7.34/1.49  --sat_non_cyclic_types                  false
% 7.34/1.49  --sat_finite_models                     false
% 7.34/1.49  --sat_fm_lemmas                         false
% 7.34/1.49  --sat_fm_prep                           false
% 7.34/1.49  --sat_fm_uc_incr                        true
% 7.34/1.49  --sat_out_model                         small
% 7.34/1.49  --sat_out_clauses                       false
% 7.34/1.49  
% 7.34/1.49  ------ QBF Options
% 7.34/1.49  
% 7.34/1.49  --qbf_mode                              false
% 7.34/1.49  --qbf_elim_univ                         false
% 7.34/1.49  --qbf_dom_inst                          none
% 7.34/1.49  --qbf_dom_pre_inst                      false
% 7.34/1.49  --qbf_sk_in                             false
% 7.34/1.49  --qbf_pred_elim                         true
% 7.34/1.49  --qbf_split                             512
% 7.34/1.49  
% 7.34/1.49  ------ BMC1 Options
% 7.34/1.49  
% 7.34/1.49  --bmc1_incremental                      false
% 7.34/1.49  --bmc1_axioms                           reachable_all
% 7.34/1.49  --bmc1_min_bound                        0
% 7.34/1.49  --bmc1_max_bound                        -1
% 7.34/1.49  --bmc1_max_bound_default                -1
% 7.34/1.49  --bmc1_symbol_reachability              true
% 7.34/1.49  --bmc1_property_lemmas                  false
% 7.34/1.49  --bmc1_k_induction                      false
% 7.34/1.49  --bmc1_non_equiv_states                 false
% 7.34/1.49  --bmc1_deadlock                         false
% 7.34/1.49  --bmc1_ucm                              false
% 7.34/1.49  --bmc1_add_unsat_core                   none
% 7.34/1.49  --bmc1_unsat_core_children              false
% 7.34/1.49  --bmc1_unsat_core_extrapolate_axioms    false
% 7.34/1.49  --bmc1_out_stat                         full
% 7.34/1.49  --bmc1_ground_init                      false
% 7.34/1.49  --bmc1_pre_inst_next_state              false
% 7.34/1.49  --bmc1_pre_inst_state                   false
% 7.34/1.49  --bmc1_pre_inst_reach_state             false
% 7.34/1.49  --bmc1_out_unsat_core                   false
% 7.34/1.49  --bmc1_aig_witness_out                  false
% 7.34/1.49  --bmc1_verbose                          false
% 7.34/1.49  --bmc1_dump_clauses_tptp                false
% 7.34/1.49  --bmc1_dump_unsat_core_tptp             false
% 7.34/1.49  --bmc1_dump_file                        -
% 7.34/1.49  --bmc1_ucm_expand_uc_limit              128
% 7.34/1.49  --bmc1_ucm_n_expand_iterations          6
% 7.34/1.49  --bmc1_ucm_extend_mode                  1
% 7.34/1.49  --bmc1_ucm_init_mode                    2
% 7.34/1.49  --bmc1_ucm_cone_mode                    none
% 7.34/1.49  --bmc1_ucm_reduced_relation_type        0
% 7.34/1.49  --bmc1_ucm_relax_model                  4
% 7.34/1.49  --bmc1_ucm_full_tr_after_sat            true
% 7.34/1.49  --bmc1_ucm_expand_neg_assumptions       false
% 7.34/1.49  --bmc1_ucm_layered_model                none
% 7.34/1.49  --bmc1_ucm_max_lemma_size               10
% 7.34/1.49  
% 7.34/1.49  ------ AIG Options
% 7.34/1.49  
% 7.34/1.49  --aig_mode                              false
% 7.34/1.49  
% 7.34/1.49  ------ Instantiation Options
% 7.34/1.49  
% 7.34/1.49  --instantiation_flag                    true
% 7.34/1.49  --inst_sos_flag                         false
% 7.34/1.49  --inst_sos_phase                        true
% 7.34/1.49  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.34/1.49  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.34/1.49  --inst_lit_sel_side                     none
% 7.34/1.49  --inst_solver_per_active                1400
% 7.34/1.49  --inst_solver_calls_frac                1.
% 7.34/1.49  --inst_passive_queue_type               priority_queues
% 7.34/1.49  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.34/1.49  --inst_passive_queues_freq              [25;2]
% 7.34/1.49  --inst_dismatching                      true
% 7.34/1.49  --inst_eager_unprocessed_to_passive     true
% 7.34/1.49  --inst_prop_sim_given                   true
% 7.34/1.49  --inst_prop_sim_new                     false
% 7.34/1.49  --inst_subs_new                         false
% 7.34/1.49  --inst_eq_res_simp                      false
% 7.34/1.49  --inst_subs_given                       false
% 7.34/1.49  --inst_orphan_elimination               true
% 7.34/1.49  --inst_learning_loop_flag               true
% 7.34/1.49  --inst_learning_start                   3000
% 7.34/1.49  --inst_learning_factor                  2
% 7.34/1.49  --inst_start_prop_sim_after_learn       3
% 7.34/1.49  --inst_sel_renew                        solver
% 7.34/1.49  --inst_lit_activity_flag                true
% 7.34/1.49  --inst_restr_to_given                   false
% 7.34/1.49  --inst_activity_threshold               500
% 7.34/1.49  --inst_out_proof                        true
% 7.34/1.49  
% 7.34/1.49  ------ Resolution Options
% 7.34/1.49  
% 7.34/1.49  --resolution_flag                       false
% 7.34/1.49  --res_lit_sel                           adaptive
% 7.34/1.49  --res_lit_sel_side                      none
% 7.34/1.49  --res_ordering                          kbo
% 7.34/1.49  --res_to_prop_solver                    active
% 7.34/1.49  --res_prop_simpl_new                    false
% 7.34/1.49  --res_prop_simpl_given                  true
% 7.34/1.49  --res_passive_queue_type                priority_queues
% 7.34/1.49  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.34/1.49  --res_passive_queues_freq               [15;5]
% 7.34/1.49  --res_forward_subs                      full
% 7.34/1.49  --res_backward_subs                     full
% 7.34/1.49  --res_forward_subs_resolution           true
% 7.34/1.49  --res_backward_subs_resolution          true
% 7.34/1.49  --res_orphan_elimination                true
% 7.34/1.49  --res_time_limit                        2.
% 7.34/1.49  --res_out_proof                         true
% 7.34/1.49  
% 7.34/1.49  ------ Superposition Options
% 7.34/1.49  
% 7.34/1.49  --superposition_flag                    true
% 7.34/1.49  --sup_passive_queue_type                priority_queues
% 7.34/1.49  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.34/1.49  --sup_passive_queues_freq               [8;1;4]
% 7.34/1.49  --demod_completeness_check              fast
% 7.34/1.49  --demod_use_ground                      true
% 7.34/1.49  --sup_to_prop_solver                    passive
% 7.34/1.49  --sup_prop_simpl_new                    true
% 7.34/1.49  --sup_prop_simpl_given                  true
% 7.34/1.49  --sup_fun_splitting                     false
% 7.34/1.49  --sup_smt_interval                      50000
% 7.34/1.49  
% 7.34/1.49  ------ Superposition Simplification Setup
% 7.34/1.49  
% 7.34/1.49  --sup_indices_passive                   []
% 7.34/1.49  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.34/1.49  --sup_full_triv                         [TrivRules;PropSubs]
% 7.34/1.49  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_full_bw                           [BwDemod]
% 7.34/1.49  --sup_immed_triv                        [TrivRules]
% 7.34/1.49  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.34/1.49  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_immed_bw_main                     []
% 7.34/1.49  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.34/1.49  --sup_input_triv                        [Unflattening;TrivRules]
% 7.34/1.49  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.34/1.49  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.34/1.49  
% 7.34/1.49  ------ Combination Options
% 7.34/1.49  
% 7.34/1.49  --comb_res_mult                         3
% 7.34/1.49  --comb_sup_mult                         2
% 7.34/1.49  --comb_inst_mult                        10
% 7.34/1.49  
% 7.34/1.49  ------ Debug Options
% 7.34/1.49  
% 7.34/1.49  --dbg_backtrace                         false
% 7.34/1.49  --dbg_dump_prop_clauses                 false
% 7.34/1.49  --dbg_dump_prop_clauses_file            -
% 7.34/1.49  --dbg_out_stat                          false
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  ------ Proving...
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  % SZS status Theorem for theBenchmark.p
% 7.34/1.49  
% 7.34/1.49  % SZS output start CNFRefutation for theBenchmark.p
% 7.34/1.49  
% 7.34/1.49  fof(f12,conjecture,(
% 7.34/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1))))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f13,negated_conjecture,(
% 7.34/1.49    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1))))),
% 7.34/1.49    inference(negated_conjecture,[],[f12])).
% 7.34/1.49  
% 7.34/1.49  fof(f28,plain,(
% 7.34/1.49    ? [X0] : (? [X1] : (~r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 7.34/1.49    inference(ennf_transformation,[],[f13])).
% 7.34/1.49  
% 7.34/1.49  fof(f31,plain,(
% 7.34/1.49    ( ! [X0] : (? [X1] : (~r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_xboole_0(k1_tops_1(X0,sK1),k2_tops_1(X0,sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 7.34/1.49    introduced(choice_axiom,[])).
% 7.34/1.49  
% 7.34/1.49  fof(f30,plain,(
% 7.34/1.49    ? [X0] : (? [X1] : (~r1_xboole_0(k1_tops_1(X0,X1),k2_tops_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (~r1_xboole_0(k1_tops_1(sK0,X1),k2_tops_1(sK0,X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 7.34/1.49    introduced(choice_axiom,[])).
% 7.34/1.49  
% 7.34/1.49  fof(f32,plain,(
% 7.34/1.49    (~r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 7.34/1.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f28,f31,f30])).
% 7.34/1.49  
% 7.34/1.49  fof(f46,plain,(
% 7.34/1.49    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 7.34/1.49    inference(cnf_transformation,[],[f32])).
% 7.34/1.49  
% 7.34/1.49  fof(f1,axiom,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f14,plain,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(ennf_transformation,[],[f1])).
% 7.34/1.49  
% 7.34/1.49  fof(f33,plain,(
% 7.34/1.49    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 7.34/1.49    inference(cnf_transformation,[],[f14])).
% 7.34/1.49  
% 7.34/1.49  fof(f7,axiom,(
% 7.34/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f21,plain,(
% 7.34/1.49    ! [X0] : (! [X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 7.34/1.49    inference(ennf_transformation,[],[f7])).
% 7.34/1.49  
% 7.34/1.49  fof(f40,plain,(
% 7.34/1.49    ( ! [X0,X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.34/1.49    inference(cnf_transformation,[],[f21])).
% 7.34/1.49  
% 7.34/1.49  fof(f45,plain,(
% 7.34/1.49    l1_pre_topc(sK0)),
% 7.34/1.49    inference(cnf_transformation,[],[f32])).
% 7.34/1.49  
% 7.34/1.49  fof(f10,axiom,(
% 7.34/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f26,plain,(
% 7.34/1.49    ! [X0] : (! [X1] : (k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 7.34/1.49    inference(ennf_transformation,[],[f10])).
% 7.34/1.49  
% 7.34/1.49  fof(f43,plain,(
% 7.34/1.49    ( ! [X0,X1] : (k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.34/1.49    inference(cnf_transformation,[],[f26])).
% 7.34/1.49  
% 7.34/1.49  fof(f3,axiom,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f17,plain,(
% 7.34/1.49    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(ennf_transformation,[],[f3])).
% 7.34/1.49  
% 7.34/1.49  fof(f35,plain,(
% 7.34/1.49    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 7.34/1.49    inference(cnf_transformation,[],[f17])).
% 7.34/1.49  
% 7.34/1.49  fof(f4,axiom,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2)))))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f18,plain,(
% 7.34/1.49    ! [X0,X1] : (! [X2] : (r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(ennf_transformation,[],[f4])).
% 7.34/1.49  
% 7.34/1.49  fof(f36,plain,(
% 7.34/1.49    ( ! [X2,X0,X1] : (r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 7.34/1.49    inference(cnf_transformation,[],[f18])).
% 7.34/1.49  
% 7.34/1.49  fof(f5,axiom,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2)))))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f19,plain,(
% 7.34/1.49    ! [X0,X1] : (! [X2] : ((r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(ennf_transformation,[],[f5])).
% 7.34/1.49  
% 7.34/1.49  fof(f29,plain,(
% 7.34/1.49    ! [X0,X1] : (! [X2] : (((r1_xboole_0(X1,X2) | ~r1_tarski(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,k3_subset_1(X0,X2)) | ~r1_xboole_0(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(nnf_transformation,[],[f19])).
% 7.34/1.49  
% 7.34/1.49  fof(f38,plain,(
% 7.34/1.49    ( ! [X2,X0,X1] : (r1_xboole_0(X1,X2) | ~r1_tarski(X1,k3_subset_1(X0,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 7.34/1.49    inference(cnf_transformation,[],[f29])).
% 7.34/1.49  
% 7.34/1.49  fof(f6,axiom,(
% 7.34/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f20,plain,(
% 7.34/1.49    ! [X0] : (! [X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 7.34/1.49    inference(ennf_transformation,[],[f6])).
% 7.34/1.49  
% 7.34/1.49  fof(f39,plain,(
% 7.34/1.49    ( ! [X0,X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.34/1.49    inference(cnf_transformation,[],[f20])).
% 7.34/1.49  
% 7.34/1.49  fof(f11,axiom,(
% 7.34/1.49    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1)))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f27,plain,(
% 7.34/1.49    ! [X0] : (! [X1] : (k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 7.34/1.49    inference(ennf_transformation,[],[f11])).
% 7.34/1.49  
% 7.34/1.49  fof(f44,plain,(
% 7.34/1.49    ( ! [X0,X1] : (k4_subset_1(u1_struct_0(X0),X1,k2_tops_1(X0,X1)) = k2_pre_topc(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.34/1.49    inference(cnf_transformation,[],[f27])).
% 7.34/1.49  
% 7.34/1.49  fof(f2,axiom,(
% 7.34/1.49    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f15,plain,(
% 7.34/1.49    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 7.34/1.49    inference(ennf_transformation,[],[f2])).
% 7.34/1.49  
% 7.34/1.49  fof(f16,plain,(
% 7.34/1.49    ! [X0,X1,X2] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 7.34/1.49    inference(flattening,[],[f15])).
% 7.34/1.49  
% 7.34/1.49  fof(f34,plain,(
% 7.34/1.49    ( ! [X2,X0,X1] : (m1_subset_1(k4_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 7.34/1.49    inference(cnf_transformation,[],[f16])).
% 7.34/1.49  
% 7.34/1.49  fof(f9,axiom,(
% 7.34/1.49    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 7.34/1.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.34/1.49  
% 7.34/1.49  fof(f24,plain,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 7.34/1.49    inference(ennf_transformation,[],[f9])).
% 7.34/1.49  
% 7.34/1.49  fof(f25,plain,(
% 7.34/1.49    ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 7.34/1.49    inference(flattening,[],[f24])).
% 7.34/1.49  
% 7.34/1.49  fof(f42,plain,(
% 7.34/1.49    ( ! [X0,X1] : (m1_subset_1(k2_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 7.34/1.49    inference(cnf_transformation,[],[f25])).
% 7.34/1.49  
% 7.34/1.49  fof(f47,plain,(
% 7.34/1.49    ~r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1))),
% 7.34/1.49    inference(cnf_transformation,[],[f32])).
% 7.34/1.49  
% 7.34/1.49  cnf(c_13,negated_conjecture,
% 7.34/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.34/1.49      inference(cnf_transformation,[],[f46]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_526,negated_conjecture,
% 7.34/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_13]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_839,plain,
% 7.34/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_526]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_0,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 7.34/1.49      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 7.34/1.49      inference(cnf_transformation,[],[f33]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_533,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_0]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_832,plain,
% 7.34/1.49      ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_533]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_7,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | ~ l1_pre_topc(X1)
% 7.34/1.49      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
% 7.34/1.49      inference(cnf_transformation,[],[f40]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_14,negated_conjecture,
% 7.34/1.49      ( l1_pre_topc(sK0) ),
% 7.34/1.49      inference(cnf_transformation,[],[f45]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_300,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
% 7.34/1.49      | sK0 != X1 ),
% 7.34/1.49      inference(resolution_lifted,[status(thm)],[c_7,c_14]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_301,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0) ),
% 7.34/1.49      inference(unflattening,[status(thm)],[c_300]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_521,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_42),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_tops_1(sK0,X0_42) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_301]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_844,plain,
% 7.34/1.49      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_42),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_tops_1(sK0,X0_42)
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_521]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1768,plain,
% 7.34/1.49      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0_42)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_832,c_844]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_26158,plain,
% 7.34/1.49      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_1768]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_10,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | ~ l1_pre_topc(X1)
% 7.34/1.49      | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0) ),
% 7.34/1.49      inference(cnf_transformation,[],[f43]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_264,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0)
% 7.34/1.49      | sK0 != X1 ),
% 7.34/1.49      inference(resolution_lifted,[status(thm)],[c_10,c_14]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_265,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0) ),
% 7.34/1.49      inference(unflattening,[status(thm)],[c_264]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_524,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)) = k2_tops_1(sK0,X0_42) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_265]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_841,plain,
% 7.34/1.49      ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42)) = k2_tops_1(sK0,X0_42)
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_524]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1094,plain,
% 7.34/1.49      ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k2_tops_1(sK0,sK1) ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_841]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_2,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 7.34/1.49      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 7.34/1.49      inference(cnf_transformation,[],[f35]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_531,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | k3_subset_1(X0_44,k3_subset_1(X0_44,X0_42)) = X0_42 ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_2]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_834,plain,
% 7.34/1.49      ( k3_subset_1(X0_44,k3_subset_1(X0_44,X0_42)) = X0_42
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_531]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1248,plain,
% 7.34/1.49      ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_834]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_26226,plain,
% 7.34/1.49      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 7.34/1.49      inference(light_normalisation,
% 7.34/1.49                [status(thm)],
% 7.34/1.49                [c_26158,c_1094,c_1248]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_3,plain,
% 7.34/1.49      ( r1_tarski(k3_subset_1(X0,X1),k3_subset_1(X0,k9_subset_1(X0,X1,X2)))
% 7.34/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
% 7.34/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ),
% 7.34/1.49      inference(cnf_transformation,[],[f36]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_530,plain,
% 7.34/1.49      ( r1_tarski(k3_subset_1(X0_44,X0_42),k3_subset_1(X0_44,k9_subset_1(X0_44,X0_42,X1_42)))
% 7.34/1.49      | ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_3]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_835,plain,
% 7.34/1.49      ( r1_tarski(k3_subset_1(X0_44,X0_42),k3_subset_1(X0_44,k9_subset_1(X0_44,X0_42,X1_42))) = iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_530]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_4,plain,
% 7.34/1.49      ( r1_xboole_0(X0,X1)
% 7.34/1.49      | ~ r1_tarski(X0,k3_subset_1(X2,X1))
% 7.34/1.49      | ~ m1_subset_1(X0,k1_zfmisc_1(X2))
% 7.34/1.49      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 7.34/1.49      inference(cnf_transformation,[],[f38]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_529,plain,
% 7.34/1.49      ( r1_xboole_0(X0_42,X1_42)
% 7.34/1.49      | ~ r1_tarski(X0_42,k3_subset_1(X0_44,X1_42))
% 7.34/1.49      | ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_4]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_836,plain,
% 7.34/1.49      ( r1_xboole_0(X0_42,X1_42) = iProver_top
% 7.34/1.49      | r1_tarski(X0_42,k3_subset_1(X0_44,X1_42)) != iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_529]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1525,plain,
% 7.34/1.49      ( r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_835,c_836]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_557,plain,
% 7.34/1.49      ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k3_subset_1(X0_44,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_533]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_9712,plain,
% 7.34/1.49      ( m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top ),
% 7.34/1.49      inference(global_propositional_subsumption,
% 7.34/1.49                [status(thm)],
% 7.34/1.49                [c_1525,c_557]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_9713,plain,
% 7.34/1.49      ( r1_xboole_0(k3_subset_1(X0_44,X0_42),k9_subset_1(X0_44,X0_42,X1_42)) = iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k9_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) != iProver_top ),
% 7.34/1.49      inference(renaming,[status(thm)],[c_9712]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_26799,plain,
% 7.34/1.49      ( r1_xboole_0(k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))),k2_tops_1(sK0,sK1)) = iProver_top
% 7.34/1.49      | m1_subset_1(k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_26226,c_9713]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_6,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | ~ l1_pre_topc(X1)
% 7.34/1.49      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
% 7.34/1.49      inference(cnf_transformation,[],[f39]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_312,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
% 7.34/1.49      | sK0 != X1 ),
% 7.34/1.49      inference(resolution_lifted,[status(thm)],[c_6,c_14]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_313,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
% 7.34/1.49      inference(unflattening,[status(thm)],[c_312]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_520,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k1_tops_1(sK0,X0_42) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_313]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_845,plain,
% 7.34/1.49      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k1_tops_1(sK0,X0_42)
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_520]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1623,plain,
% 7.34/1.49      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_845]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_26817,plain,
% 7.34/1.49      ( r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top
% 7.34/1.49      | m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(light_normalisation,
% 7.34/1.49                [status(thm)],
% 7.34/1.49                [c_26799,c_1623,c_26226]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_11,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | ~ l1_pre_topc(X1)
% 7.34/1.49      | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0) ),
% 7.34/1.49      inference(cnf_transformation,[],[f44]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_252,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | k4_subset_1(u1_struct_0(X1),X0,k2_tops_1(X1,X0)) = k2_pre_topc(X1,X0)
% 7.34/1.49      | sK0 != X1 ),
% 7.34/1.49      inference(resolution_lifted,[status(thm)],[c_11,c_14]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_253,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k4_subset_1(u1_struct_0(sK0),X0,k2_tops_1(sK0,X0)) = k2_pre_topc(sK0,X0) ),
% 7.34/1.49      inference(unflattening,[status(thm)],[c_252]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_525,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | k4_subset_1(u1_struct_0(sK0),X0_42,k2_tops_1(sK0,X0_42)) = k2_pre_topc(sK0,X0_42) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_253]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_840,plain,
% 7.34/1.49      ( k4_subset_1(u1_struct_0(sK0),X0_42,k2_tops_1(sK0,X0_42)) = k2_pre_topc(sK0,X0_42)
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1229,plain,
% 7.34/1.49      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0_42),k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_42))
% 7.34/1.49      | m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_832,c_840]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_5165,plain,
% 7.34/1.49      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_1229]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_5207,plain,
% 7.34/1.49      ( k4_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1),k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
% 7.34/1.49      inference(light_normalisation,[status(thm)],[c_5165,c_1094]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 7.34/1.49      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 7.34/1.49      | m1_subset_1(k4_subset_1(X1,X0,X2),k1_zfmisc_1(X1)) ),
% 7.34/1.49      inference(cnf_transformation,[],[f34]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_532,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | ~ m1_subset_1(X1_42,k1_zfmisc_1(X0_44))
% 7.34/1.49      | m1_subset_1(k4_subset_1(X0_44,X0_42,X1_42),k1_zfmisc_1(X0_44)) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_1]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_833,plain,
% 7.34/1.49      ( m1_subset_1(X0_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(X1_42,k1_zfmisc_1(X0_44)) != iProver_top
% 7.34/1.49      | m1_subset_1(k4_subset_1(X0_44,X1_42,X0_42),k1_zfmisc_1(X0_44)) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_532]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_5925,plain,
% 7.34/1.49      ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.34/1.49      | m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_5207,c_833]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1165,plain,
% 7.34/1.49      ( k4_subset_1(u1_struct_0(sK0),sK1,k2_tops_1(sK0,sK1)) = k2_pre_topc(sK0,sK1) ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_839,c_840]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_1346,plain,
% 7.34/1.49      ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_pre_topc(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.34/1.49      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(superposition,[status(thm)],[c_1165,c_833]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_941,plain,
% 7.34/1.49      ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.34/1.49      inference(instantiation,[status(thm)],[c_533]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_942,plain,
% 7.34/1.49      ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.34/1.49      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_941]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_9,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | m1_subset_1(k2_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | ~ l1_pre_topc(X1) ),
% 7.34/1.49      inference(cnf_transformation,[],[f42]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_276,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | m1_subset_1(k2_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 7.34/1.49      | sK0 != X1 ),
% 7.34/1.49      inference(resolution_lifted,[status(thm)],[c_9,c_14]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_277,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | m1_subset_1(k2_tops_1(sK0,X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.34/1.49      inference(unflattening,[status(thm)],[c_276]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_523,plain,
% 7.34/1.49      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0)))
% 7.34/1.49      | m1_subset_1(k2_tops_1(sK0,X0_42),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 7.34/1.49      inference(subtyping,[status(esa)],[c_277]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_583,plain,
% 7.34/1.49      ( m1_subset_1(X0_42,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 7.34/1.49      | m1_subset_1(k2_tops_1(sK0,X0_42),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_523]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_585,plain,
% 7.34/1.49      ( m1_subset_1(k2_tops_1(sK0,sK1),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 7.34/1.49      | m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 7.34/1.49      inference(instantiation,[status(thm)],[c_583]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_12,negated_conjecture,
% 7.34/1.49      ( ~ r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) ),
% 7.34/1.49      inference(cnf_transformation,[],[f47]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_17,plain,
% 7.34/1.49      ( r1_xboole_0(k1_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) != iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(c_16,plain,
% 7.34/1.49      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 7.34/1.49      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 7.34/1.49  
% 7.34/1.49  cnf(contradiction,plain,
% 7.34/1.49      ( $false ),
% 7.34/1.49      inference(minisat,
% 7.34/1.49                [status(thm)],
% 7.34/1.49                [c_26817,c_5925,c_1346,c_942,c_585,c_17,c_16]) ).
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  % SZS output end CNFRefutation for theBenchmark.p
% 7.34/1.49  
% 7.34/1.49  ------                               Statistics
% 7.34/1.49  
% 7.34/1.49  ------ General
% 7.34/1.49  
% 7.34/1.49  abstr_ref_over_cycles:                  0
% 7.34/1.49  abstr_ref_under_cycles:                 0
% 7.34/1.49  gc_basic_clause_elim:                   0
% 7.34/1.49  forced_gc_time:                         0
% 7.34/1.49  parsing_time:                           0.01
% 7.34/1.49  unif_index_cands_time:                  0.
% 7.34/1.49  unif_index_add_time:                    0.
% 7.34/1.49  orderings_time:                         0.
% 7.34/1.49  out_proof_time:                         0.008
% 7.34/1.49  total_time:                             0.86
% 7.34/1.49  num_of_symbols:                         46
% 7.34/1.49  num_of_terms:                           19924
% 7.34/1.49  
% 7.34/1.49  ------ Preprocessing
% 7.34/1.49  
% 7.34/1.49  num_of_splits:                          0
% 7.34/1.49  num_of_split_atoms:                     0
% 7.34/1.49  num_of_reused_defs:                     0
% 7.34/1.49  num_eq_ax_congr_red:                    13
% 7.34/1.49  num_of_sem_filtered_clauses:            1
% 7.34/1.49  num_of_subtypes:                        4
% 7.34/1.49  monotx_restored_types:                  0
% 7.34/1.49  sat_num_of_epr_types:                   0
% 7.34/1.49  sat_num_of_non_cyclic_types:            0
% 7.34/1.49  sat_guarded_non_collapsed_types:        1
% 7.34/1.49  num_pure_diseq_elim:                    0
% 7.34/1.49  simp_replaced_by:                       0
% 7.34/1.49  res_preprocessed:                       80
% 7.34/1.49  prep_upred:                             0
% 7.34/1.49  prep_unflattend:                        12
% 7.34/1.49  smt_new_axioms:                         0
% 7.34/1.49  pred_elim_cands:                        3
% 7.34/1.49  pred_elim:                              1
% 7.34/1.49  pred_elim_cl:                           1
% 7.34/1.49  pred_elim_cycles:                       6
% 7.34/1.49  merged_defs:                            0
% 7.34/1.49  merged_defs_ncl:                        0
% 7.34/1.49  bin_hyper_res:                          0
% 7.34/1.49  prep_cycles:                            4
% 7.34/1.49  pred_elim_time:                         0.005
% 7.34/1.49  splitting_time:                         0.
% 7.34/1.49  sem_filter_time:                        0.
% 7.34/1.49  monotx_time:                            0.
% 7.34/1.49  subtype_inf_time:                       0.
% 7.34/1.49  
% 7.34/1.49  ------ Problem properties
% 7.34/1.49  
% 7.34/1.49  clauses:                                14
% 7.34/1.49  conjectures:                            2
% 7.34/1.49  epr:                                    0
% 7.34/1.49  horn:                                   14
% 7.34/1.49  ground:                                 2
% 7.34/1.49  unary:                                  2
% 7.34/1.49  binary:                                 8
% 7.34/1.49  lits:                                   32
% 7.34/1.49  lits_eq:                                5
% 7.34/1.49  fd_pure:                                0
% 7.34/1.49  fd_pseudo:                              0
% 7.34/1.49  fd_cond:                                0
% 7.34/1.49  fd_pseudo_cond:                         0
% 7.34/1.49  ac_symbols:                             0
% 7.34/1.49  
% 7.34/1.49  ------ Propositional Solver
% 7.34/1.49  
% 7.34/1.49  prop_solver_calls:                      30
% 7.34/1.49  prop_fast_solver_calls:                 800
% 7.34/1.49  smt_solver_calls:                       0
% 7.34/1.49  smt_fast_solver_calls:                  0
% 7.34/1.49  prop_num_of_clauses:                    6731
% 7.34/1.49  prop_preprocess_simplified:             9012
% 7.34/1.49  prop_fo_subsumed:                       19
% 7.34/1.49  prop_solver_time:                       0.
% 7.34/1.49  smt_solver_time:                        0.
% 7.34/1.49  smt_fast_solver_time:                   0.
% 7.34/1.49  prop_fast_solver_time:                  0.
% 7.34/1.49  prop_unsat_core_time:                   0.
% 7.34/1.49  
% 7.34/1.49  ------ QBF
% 7.34/1.49  
% 7.34/1.49  qbf_q_res:                              0
% 7.34/1.49  qbf_num_tautologies:                    0
% 7.34/1.49  qbf_prep_cycles:                        0
% 7.34/1.49  
% 7.34/1.49  ------ BMC1
% 7.34/1.49  
% 7.34/1.49  bmc1_current_bound:                     -1
% 7.34/1.49  bmc1_last_solved_bound:                 -1
% 7.34/1.49  bmc1_unsat_core_size:                   -1
% 7.34/1.49  bmc1_unsat_core_parents_size:           -1
% 7.34/1.49  bmc1_merge_next_fun:                    0
% 7.34/1.49  bmc1_unsat_core_clauses_time:           0.
% 7.34/1.49  
% 7.34/1.49  ------ Instantiation
% 7.34/1.49  
% 7.34/1.49  inst_num_of_clauses:                    1939
% 7.34/1.49  inst_num_in_passive:                    9
% 7.34/1.49  inst_num_in_active:                     1000
% 7.34/1.49  inst_num_in_unprocessed:                930
% 7.34/1.49  inst_num_of_loops:                      1020
% 7.34/1.49  inst_num_of_learning_restarts:          0
% 7.34/1.49  inst_num_moves_active_passive:          13
% 7.34/1.49  inst_lit_activity:                      0
% 7.34/1.49  inst_lit_activity_moves:                0
% 7.34/1.49  inst_num_tautologies:                   0
% 7.34/1.49  inst_num_prop_implied:                  0
% 7.34/1.49  inst_num_existing_simplified:           0
% 7.34/1.49  inst_num_eq_res_simplified:             0
% 7.34/1.49  inst_num_child_elim:                    0
% 7.34/1.49  inst_num_of_dismatching_blockings:      4550
% 7.34/1.49  inst_num_of_non_proper_insts:           3713
% 7.34/1.49  inst_num_of_duplicates:                 0
% 7.34/1.49  inst_inst_num_from_inst_to_res:         0
% 7.34/1.49  inst_dismatching_checking_time:         0.
% 7.34/1.49  
% 7.34/1.49  ------ Resolution
% 7.34/1.49  
% 7.34/1.49  res_num_of_clauses:                     0
% 7.34/1.49  res_num_in_passive:                     0
% 7.34/1.49  res_num_in_active:                      0
% 7.34/1.49  res_num_of_loops:                       84
% 7.34/1.49  res_forward_subset_subsumed:            213
% 7.34/1.49  res_backward_subset_subsumed:           2
% 7.34/1.49  res_forward_subsumed:                   0
% 7.34/1.49  res_backward_subsumed:                  0
% 7.34/1.49  res_forward_subsumption_resolution:     0
% 7.34/1.49  res_backward_subsumption_resolution:    0
% 7.34/1.49  res_clause_to_clause_subsumption:       3322
% 7.34/1.49  res_orphan_elimination:                 0
% 7.34/1.49  res_tautology_del:                      720
% 7.34/1.49  res_num_eq_res_simplified:              0
% 7.34/1.49  res_num_sel_changes:                    0
% 7.34/1.49  res_moves_from_active_to_pass:          0
% 7.34/1.49  
% 7.34/1.49  ------ Superposition
% 7.34/1.49  
% 7.34/1.49  sup_time_total:                         0.
% 7.34/1.49  sup_time_generating:                    0.
% 7.34/1.49  sup_time_sim_full:                      0.
% 7.34/1.49  sup_time_sim_immed:                     0.
% 7.34/1.49  
% 7.34/1.49  sup_num_of_clauses:                     1382
% 7.34/1.49  sup_num_in_active:                      200
% 7.34/1.49  sup_num_in_passive:                     1182
% 7.34/1.49  sup_num_of_loops:                       203
% 7.34/1.49  sup_fw_superposition:                   1123
% 7.34/1.49  sup_bw_superposition:                   599
% 7.34/1.49  sup_immediate_simplified:               261
% 7.34/1.49  sup_given_eliminated:                   0
% 7.34/1.49  comparisons_done:                       0
% 7.34/1.49  comparisons_avoided:                    0
% 7.34/1.49  
% 7.34/1.49  ------ Simplifications
% 7.34/1.49  
% 7.34/1.49  
% 7.34/1.49  sim_fw_subset_subsumed:                 4
% 7.34/1.49  sim_bw_subset_subsumed:                 2
% 7.34/1.49  sim_fw_subsumed:                        2
% 7.34/1.49  sim_bw_subsumed:                        0
% 7.34/1.49  sim_fw_subsumption_res:                 0
% 7.34/1.49  sim_bw_subsumption_res:                 0
% 7.34/1.49  sim_tautology_del:                      3
% 7.34/1.49  sim_eq_tautology_del:                   107
% 7.34/1.49  sim_eq_res_simp:                        0
% 7.34/1.49  sim_fw_demodulated:                     0
% 7.34/1.49  sim_bw_demodulated:                     4
% 7.34/1.49  sim_light_normalised:                   259
% 7.34/1.49  sim_joinable_taut:                      0
% 7.34/1.49  sim_joinable_simp:                      0
% 7.34/1.49  sim_ac_normalised:                      0
% 7.34/1.49  sim_smt_subsumption:                    0
% 7.34/1.49  
%------------------------------------------------------------------------------
