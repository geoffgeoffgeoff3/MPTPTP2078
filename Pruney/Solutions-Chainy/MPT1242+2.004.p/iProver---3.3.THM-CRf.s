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
% DateTime   : Thu Dec  3 12:14:03 EST 2020

% Result     : Theorem 1.76s
% Output     : CNFRefutation 1.76s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 266 expanded)
%              Number of clauses        :   54 (  85 expanded)
%              Number of leaves         :   13 (  78 expanded)
%              Depth                    :   20
%              Number of atoms          :  286 (1315 expanded)
%              Number of equality atoms :   74 ( 112 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( r1_tarski(X1,X2)
                  & v3_pre_topc(X1,X0) )
               => r1_tarski(X1,k1_tops_1(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( ( r1_tarski(X1,X2)
                    & v3_pre_topc(X1,X0) )
                 => r1_tarski(X1,k1_tops_1(X0,X2)) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f18,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(X1,k1_tops_1(X0,X2))
              & r1_tarski(X1,X2)
              & v3_pre_topc(X1,X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(X1,k1_tops_1(X0,X2))
              & r1_tarski(X1,X2)
              & v3_pre_topc(X1,X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(X1,k1_tops_1(X0,X2))
          & r1_tarski(X1,X2)
          & v3_pre_topc(X1,X0)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_tarski(X1,k1_tops_1(X0,sK2))
        & r1_tarski(X1,sK2)
        & v3_pre_topc(X1,X0)
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(X1,k1_tops_1(X0,X2))
              & r1_tarski(X1,X2)
              & v3_pre_topc(X1,X0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( ~ r1_tarski(sK1,k1_tops_1(X0,X2))
            & r1_tarski(sK1,X2)
            & v3_pre_topc(sK1,X0)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(X1,k1_tops_1(X0,X2))
                & r1_tarski(X1,X2)
                & v3_pre_topc(X1,X0)
                & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(X1,k1_tops_1(sK0,X2))
              & r1_tarski(X1,X2)
              & v3_pre_topc(X1,sK0)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ~ r1_tarski(sK1,k1_tops_1(sK0,sK2))
    & r1_tarski(sK1,sK2)
    & v3_pre_topc(sK1,sK0)
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f19,f23,f22,f21])).

fof(f33,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f24])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => k2_pre_topc(X0,X1) = X1 ) ) ) ),
    inference(pure_predicate_removal,[],[f3])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f12])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
          <=> v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v4_pre_topc(X1,X0)
          <=> v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | ~ v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0) )
            & ( v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f30,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | ~ v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f35,plain,(
    v3_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f24])).

fof(f32,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( r1_tarski(X1,X2)
               => r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2))
              | ~ r1_tarski(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2))
              | ~ r1_tarski(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2))
      | ~ r1_tarski(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f37,plain,(
    ~ r1_tarski(sK1,k1_tops_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f24])).

fof(f36,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f34,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_304,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_498,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_304])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_308,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X0_44))
    | k3_subset_1(X0_44,k3_subset_1(X0_44,X0_41)) = X0_41 ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_494,plain,
    ( k3_subset_1(X0_44,k3_subset_1(X0_44,X0_41)) = X0_41
    | m1_subset_1(X0_41,k1_zfmisc_1(X0_44)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_308])).

cnf(c_847,plain,
    ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_498,c_494])).

cnf(c_2,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_4,plain,
    ( ~ v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)
    | v4_pre_topc(X1,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_9,negated_conjecture,
    ( v3_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_146,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),X0) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_9])).

cnf(c_147,plain,
    ( v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
    inference(unflattening,[status(thm)],[c_146])).

cnf(c_12,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_151,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v4_pre_topc(X0,sK0)
    | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_147,c_12])).

cnf(c_152,plain,
    ( v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
    inference(renaming,[status(thm)],[c_151])).

cnf(c_171,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(X1)
    | X2 != X0
    | k2_pre_topc(X1,X0) = X0
    | k3_subset_1(u1_struct_0(sK0),X2) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_152])).

cnf(c_172,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k2_pre_topc(sK0,X0) = X0
    | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
    inference(unflattening,[status(thm)],[c_171])).

cnf(c_176,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0) = X0
    | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_172,c_12])).

cnf(c_303,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0_41) = X0_41
    | k3_subset_1(u1_struct_0(sK0),X0_41) != sK1 ),
    inference(subtyping,[status(esa)],[c_176])).

cnf(c_499,plain,
    ( k2_pre_topc(sK0,X0_41) = X0_41
    | k3_subset_1(u1_struct_0(sK0),X0_41) != sK1
    | m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_303])).

cnf(c_1015,plain,
    ( k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1)
    | m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_847,c_499])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_309,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X0_44))
    | m1_subset_1(k3_subset_1(X0_44,X0_41),k1_zfmisc_1(X0_44)) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_562,plain,
    ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_309])).

cnf(c_568,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(instantiation,[status(thm)],[c_308])).

cnf(c_617,plain,
    ( ~ m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1)
    | k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) != sK1 ),
    inference(instantiation,[status(thm)],[c_303])).

cnf(c_1238,plain,
    ( k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1015,c_11,c_562,c_568,c_617])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_196,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_12])).

cnf(c_197,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_196])).

cnf(c_302,plain,
    ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_41))) = k1_tops_1(sK0,X0_41) ),
    inference(subtyping,[status(esa)],[c_197])).

cnf(c_500,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_41))) = k1_tops_1(sK0,X0_41)
    | m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_302])).

cnf(c_668,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_498,c_500])).

cnf(c_1242,plain,
    ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = k1_tops_1(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_1238,c_668])).

cnf(c_1244,plain,
    ( k1_tops_1(sK0,sK1) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1242,c_847])).

cnf(c_312,plain,
    ( X0_41 != X1_41
    | X2_41 != X1_41
    | X2_41 = X0_41 ),
    theory(equality)).

cnf(c_763,plain,
    ( X0_41 != X1_41
    | X0_41 = k1_tops_1(sK0,sK1)
    | k1_tops_1(sK0,sK1) != X1_41 ),
    inference(instantiation,[status(thm)],[c_312])).

cnf(c_764,plain,
    ( k1_tops_1(sK0,sK1) != sK1
    | sK1 = k1_tops_1(sK0,sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_763])).

cnf(c_311,plain,
    ( X0_41 = X0_41 ),
    theory(equality)).

cnf(c_695,plain,
    ( k1_tops_1(sK0,sK2) = k1_tops_1(sK0,sK2) ),
    inference(instantiation,[status(thm)],[c_311])).

cnf(c_317,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | r1_tarski(X2_41,X3_41)
    | X2_41 != X0_41
    | X3_41 != X1_41 ),
    theory(equality)).

cnf(c_587,plain,
    ( r1_tarski(X0_41,X1_41)
    | ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
    | X1_41 != k1_tops_1(sK0,sK2)
    | X0_41 != k1_tops_1(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_317])).

cnf(c_694,plain,
    ( r1_tarski(X0_41,k1_tops_1(sK0,sK2))
    | ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
    | X0_41 != k1_tops_1(sK0,sK1)
    | k1_tops_1(sK0,sK2) != k1_tops_1(sK0,sK2) ),
    inference(instantiation,[status(thm)],[c_587])).

cnf(c_697,plain,
    ( ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
    | r1_tarski(sK1,k1_tops_1(sK0,sK2))
    | k1_tops_1(sK0,sK2) != k1_tops_1(sK0,sK2)
    | sK1 != k1_tops_1(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_694])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_tops_1(X2,X0),k1_tops_1(X2,X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_208,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_tops_1(X2,X0),k1_tops_1(X2,X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_12])).

cnf(c_209,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_tops_1(sK0,X0),k1_tops_1(sK0,X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_208])).

cnf(c_301,plain,
    ( ~ r1_tarski(X0_41,X1_41)
    | r1_tarski(k1_tops_1(sK0,X0_41),k1_tops_1(sK0,X1_41))
    | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1_41,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_209])).

cnf(c_556,plain,
    ( r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
    | ~ r1_tarski(sK1,sK2)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_301])).

cnf(c_324,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_311])).

cnf(c_7,negated_conjecture,
    ( ~ r1_tarski(sK1,k1_tops_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_8,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_10,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f34])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1244,c_764,c_695,c_697,c_556,c_324,c_7,c_8,c_10,c_11])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:53:57 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 1.76/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.76/0.99  
% 1.76/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.76/0.99  
% 1.76/0.99  ------  iProver source info
% 1.76/0.99  
% 1.76/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.76/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.76/0.99  git: non_committed_changes: false
% 1.76/0.99  git: last_make_outside_of_git: false
% 1.76/0.99  
% 1.76/0.99  ------ 
% 1.76/0.99  
% 1.76/0.99  ------ Input Options
% 1.76/0.99  
% 1.76/0.99  --out_options                           all
% 1.76/0.99  --tptp_safe_out                         true
% 1.76/0.99  --problem_path                          ""
% 1.76/0.99  --include_path                          ""
% 1.76/0.99  --clausifier                            res/vclausify_rel
% 1.76/0.99  --clausifier_options                    --mode clausify
% 1.76/0.99  --stdin                                 false
% 1.76/0.99  --stats_out                             all
% 1.76/0.99  
% 1.76/0.99  ------ General Options
% 1.76/0.99  
% 1.76/0.99  --fof                                   false
% 1.76/0.99  --time_out_real                         305.
% 1.76/0.99  --time_out_virtual                      -1.
% 1.76/0.99  --symbol_type_check                     false
% 1.76/0.99  --clausify_out                          false
% 1.76/0.99  --sig_cnt_out                           false
% 1.76/0.99  --trig_cnt_out                          false
% 1.76/0.99  --trig_cnt_out_tolerance                1.
% 1.76/0.99  --trig_cnt_out_sk_spl                   false
% 1.76/0.99  --abstr_cl_out                          false
% 1.76/0.99  
% 1.76/0.99  ------ Global Options
% 1.76/0.99  
% 1.76/0.99  --schedule                              default
% 1.76/0.99  --add_important_lit                     false
% 1.76/0.99  --prop_solver_per_cl                    1000
% 1.76/0.99  --min_unsat_core                        false
% 1.76/0.99  --soft_assumptions                      false
% 1.76/0.99  --soft_lemma_size                       3
% 1.76/0.99  --prop_impl_unit_size                   0
% 1.76/0.99  --prop_impl_unit                        []
% 1.76/0.99  --share_sel_clauses                     true
% 1.76/0.99  --reset_solvers                         false
% 1.76/0.99  --bc_imp_inh                            [conj_cone]
% 1.76/0.99  --conj_cone_tolerance                   3.
% 1.76/0.99  --extra_neg_conj                        none
% 1.76/0.99  --large_theory_mode                     true
% 1.76/0.99  --prolific_symb_bound                   200
% 1.76/0.99  --lt_threshold                          2000
% 1.76/0.99  --clause_weak_htbl                      true
% 1.76/0.99  --gc_record_bc_elim                     false
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing Options
% 1.76/0.99  
% 1.76/0.99  --preprocessing_flag                    true
% 1.76/0.99  --time_out_prep_mult                    0.1
% 1.76/0.99  --splitting_mode                        input
% 1.76/0.99  --splitting_grd                         true
% 1.76/0.99  --splitting_cvd                         false
% 1.76/0.99  --splitting_cvd_svl                     false
% 1.76/0.99  --splitting_nvd                         32
% 1.76/0.99  --sub_typing                            true
% 1.76/0.99  --prep_gs_sim                           true
% 1.76/0.99  --prep_unflatten                        true
% 1.76/0.99  --prep_res_sim                          true
% 1.76/0.99  --prep_upred                            true
% 1.76/0.99  --prep_sem_filter                       exhaustive
% 1.76/0.99  --prep_sem_filter_out                   false
% 1.76/0.99  --pred_elim                             true
% 1.76/0.99  --res_sim_input                         true
% 1.76/0.99  --eq_ax_congr_red                       true
% 1.76/0.99  --pure_diseq_elim                       true
% 1.76/0.99  --brand_transform                       false
% 1.76/0.99  --non_eq_to_eq                          false
% 1.76/0.99  --prep_def_merge                        true
% 1.76/0.99  --prep_def_merge_prop_impl              false
% 1.76/0.99  --prep_def_merge_mbd                    true
% 1.76/0.99  --prep_def_merge_tr_red                 false
% 1.76/0.99  --prep_def_merge_tr_cl                  false
% 1.76/0.99  --smt_preprocessing                     true
% 1.76/0.99  --smt_ac_axioms                         fast
% 1.76/0.99  --preprocessed_out                      false
% 1.76/0.99  --preprocessed_stats                    false
% 1.76/0.99  
% 1.76/0.99  ------ Abstraction refinement Options
% 1.76/0.99  
% 1.76/0.99  --abstr_ref                             []
% 1.76/0.99  --abstr_ref_prep                        false
% 1.76/0.99  --abstr_ref_until_sat                   false
% 1.76/0.99  --abstr_ref_sig_restrict                funpre
% 1.76/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.76/0.99  --abstr_ref_under                       []
% 1.76/0.99  
% 1.76/0.99  ------ SAT Options
% 1.76/0.99  
% 1.76/0.99  --sat_mode                              false
% 1.76/0.99  --sat_fm_restart_options                ""
% 1.76/0.99  --sat_gr_def                            false
% 1.76/0.99  --sat_epr_types                         true
% 1.76/0.99  --sat_non_cyclic_types                  false
% 1.76/0.99  --sat_finite_models                     false
% 1.76/0.99  --sat_fm_lemmas                         false
% 1.76/0.99  --sat_fm_prep                           false
% 1.76/0.99  --sat_fm_uc_incr                        true
% 1.76/0.99  --sat_out_model                         small
% 1.76/0.99  --sat_out_clauses                       false
% 1.76/0.99  
% 1.76/0.99  ------ QBF Options
% 1.76/0.99  
% 1.76/0.99  --qbf_mode                              false
% 1.76/0.99  --qbf_elim_univ                         false
% 1.76/0.99  --qbf_dom_inst                          none
% 1.76/0.99  --qbf_dom_pre_inst                      false
% 1.76/0.99  --qbf_sk_in                             false
% 1.76/0.99  --qbf_pred_elim                         true
% 1.76/0.99  --qbf_split                             512
% 1.76/0.99  
% 1.76/0.99  ------ BMC1 Options
% 1.76/0.99  
% 1.76/0.99  --bmc1_incremental                      false
% 1.76/0.99  --bmc1_axioms                           reachable_all
% 1.76/0.99  --bmc1_min_bound                        0
% 1.76/0.99  --bmc1_max_bound                        -1
% 1.76/0.99  --bmc1_max_bound_default                -1
% 1.76/0.99  --bmc1_symbol_reachability              true
% 1.76/0.99  --bmc1_property_lemmas                  false
% 1.76/0.99  --bmc1_k_induction                      false
% 1.76/0.99  --bmc1_non_equiv_states                 false
% 1.76/0.99  --bmc1_deadlock                         false
% 1.76/0.99  --bmc1_ucm                              false
% 1.76/0.99  --bmc1_add_unsat_core                   none
% 1.76/0.99  --bmc1_unsat_core_children              false
% 1.76/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.76/0.99  --bmc1_out_stat                         full
% 1.76/0.99  --bmc1_ground_init                      false
% 1.76/0.99  --bmc1_pre_inst_next_state              false
% 1.76/0.99  --bmc1_pre_inst_state                   false
% 1.76/0.99  --bmc1_pre_inst_reach_state             false
% 1.76/0.99  --bmc1_out_unsat_core                   false
% 1.76/0.99  --bmc1_aig_witness_out                  false
% 1.76/0.99  --bmc1_verbose                          false
% 1.76/0.99  --bmc1_dump_clauses_tptp                false
% 1.76/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.76/0.99  --bmc1_dump_file                        -
% 1.76/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.76/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.76/0.99  --bmc1_ucm_extend_mode                  1
% 1.76/0.99  --bmc1_ucm_init_mode                    2
% 1.76/0.99  --bmc1_ucm_cone_mode                    none
% 1.76/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.76/0.99  --bmc1_ucm_relax_model                  4
% 1.76/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.76/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.76/0.99  --bmc1_ucm_layered_model                none
% 1.76/0.99  --bmc1_ucm_max_lemma_size               10
% 1.76/0.99  
% 1.76/0.99  ------ AIG Options
% 1.76/0.99  
% 1.76/0.99  --aig_mode                              false
% 1.76/0.99  
% 1.76/0.99  ------ Instantiation Options
% 1.76/0.99  
% 1.76/0.99  --instantiation_flag                    true
% 1.76/0.99  --inst_sos_flag                         false
% 1.76/0.99  --inst_sos_phase                        true
% 1.76/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.76/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.76/0.99  --inst_lit_sel_side                     num_symb
% 1.76/0.99  --inst_solver_per_active                1400
% 1.76/0.99  --inst_solver_calls_frac                1.
% 1.76/0.99  --inst_passive_queue_type               priority_queues
% 1.76/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.76/0.99  --inst_passive_queues_freq              [25;2]
% 1.76/0.99  --inst_dismatching                      true
% 1.76/0.99  --inst_eager_unprocessed_to_passive     true
% 1.76/0.99  --inst_prop_sim_given                   true
% 1.76/0.99  --inst_prop_sim_new                     false
% 1.76/0.99  --inst_subs_new                         false
% 1.76/0.99  --inst_eq_res_simp                      false
% 1.76/0.99  --inst_subs_given                       false
% 1.76/0.99  --inst_orphan_elimination               true
% 1.76/0.99  --inst_learning_loop_flag               true
% 1.76/0.99  --inst_learning_start                   3000
% 1.76/0.99  --inst_learning_factor                  2
% 1.76/0.99  --inst_start_prop_sim_after_learn       3
% 1.76/0.99  --inst_sel_renew                        solver
% 1.76/0.99  --inst_lit_activity_flag                true
% 1.76/0.99  --inst_restr_to_given                   false
% 1.76/0.99  --inst_activity_threshold               500
% 1.76/0.99  --inst_out_proof                        true
% 1.76/0.99  
% 1.76/0.99  ------ Resolution Options
% 1.76/0.99  
% 1.76/0.99  --resolution_flag                       true
% 1.76/0.99  --res_lit_sel                           adaptive
% 1.76/0.99  --res_lit_sel_side                      none
% 1.76/0.99  --res_ordering                          kbo
% 1.76/0.99  --res_to_prop_solver                    active
% 1.76/0.99  --res_prop_simpl_new                    false
% 1.76/0.99  --res_prop_simpl_given                  true
% 1.76/0.99  --res_passive_queue_type                priority_queues
% 1.76/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.76/0.99  --res_passive_queues_freq               [15;5]
% 1.76/0.99  --res_forward_subs                      full
% 1.76/0.99  --res_backward_subs                     full
% 1.76/0.99  --res_forward_subs_resolution           true
% 1.76/0.99  --res_backward_subs_resolution          true
% 1.76/0.99  --res_orphan_elimination                true
% 1.76/0.99  --res_time_limit                        2.
% 1.76/0.99  --res_out_proof                         true
% 1.76/0.99  
% 1.76/0.99  ------ Superposition Options
% 1.76/0.99  
% 1.76/0.99  --superposition_flag                    true
% 1.76/0.99  --sup_passive_queue_type                priority_queues
% 1.76/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.76/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.76/0.99  --demod_completeness_check              fast
% 1.76/0.99  --demod_use_ground                      true
% 1.76/0.99  --sup_to_prop_solver                    passive
% 1.76/0.99  --sup_prop_simpl_new                    true
% 1.76/0.99  --sup_prop_simpl_given                  true
% 1.76/0.99  --sup_fun_splitting                     false
% 1.76/0.99  --sup_smt_interval                      50000
% 1.76/0.99  
% 1.76/0.99  ------ Superposition Simplification Setup
% 1.76/0.99  
% 1.76/0.99  --sup_indices_passive                   []
% 1.76/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.76/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_full_bw                           [BwDemod]
% 1.76/0.99  --sup_immed_triv                        [TrivRules]
% 1.76/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.76/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_immed_bw_main                     []
% 1.76/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.76/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.76/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.76/0.99  
% 1.76/0.99  ------ Combination Options
% 1.76/0.99  
% 1.76/0.99  --comb_res_mult                         3
% 1.76/0.99  --comb_sup_mult                         2
% 1.76/0.99  --comb_inst_mult                        10
% 1.76/0.99  
% 1.76/0.99  ------ Debug Options
% 1.76/0.99  
% 1.76/0.99  --dbg_backtrace                         false
% 1.76/0.99  --dbg_dump_prop_clauses                 false
% 1.76/0.99  --dbg_dump_prop_clauses_file            -
% 1.76/0.99  --dbg_out_stat                          false
% 1.76/0.99  ------ Parsing...
% 1.76/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.76/0.99  ------ Proving...
% 1.76/0.99  ------ Problem Properties 
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  clauses                                 9
% 1.76/0.99  conjectures                             4
% 1.76/0.99  EPR                                     1
% 1.76/0.99  Horn                                    9
% 1.76/0.99  unary                                   4
% 1.76/0.99  binary                                  3
% 1.76/0.99  lits                                    17
% 1.76/0.99  lits eq                                 4
% 1.76/0.99  fd_pure                                 0
% 1.76/0.99  fd_pseudo                               0
% 1.76/0.99  fd_cond                                 0
% 1.76/0.99  fd_pseudo_cond                          0
% 1.76/0.99  AC symbols                              0
% 1.76/0.99  
% 1.76/0.99  ------ Schedule dynamic 5 is on 
% 1.76/0.99  
% 1.76/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  ------ 
% 1.76/0.99  Current options:
% 1.76/0.99  ------ 
% 1.76/0.99  
% 1.76/0.99  ------ Input Options
% 1.76/0.99  
% 1.76/0.99  --out_options                           all
% 1.76/0.99  --tptp_safe_out                         true
% 1.76/0.99  --problem_path                          ""
% 1.76/0.99  --include_path                          ""
% 1.76/0.99  --clausifier                            res/vclausify_rel
% 1.76/0.99  --clausifier_options                    --mode clausify
% 1.76/0.99  --stdin                                 false
% 1.76/0.99  --stats_out                             all
% 1.76/0.99  
% 1.76/0.99  ------ General Options
% 1.76/0.99  
% 1.76/0.99  --fof                                   false
% 1.76/0.99  --time_out_real                         305.
% 1.76/0.99  --time_out_virtual                      -1.
% 1.76/0.99  --symbol_type_check                     false
% 1.76/0.99  --clausify_out                          false
% 1.76/0.99  --sig_cnt_out                           false
% 1.76/0.99  --trig_cnt_out                          false
% 1.76/0.99  --trig_cnt_out_tolerance                1.
% 1.76/0.99  --trig_cnt_out_sk_spl                   false
% 1.76/0.99  --abstr_cl_out                          false
% 1.76/0.99  
% 1.76/0.99  ------ Global Options
% 1.76/0.99  
% 1.76/0.99  --schedule                              default
% 1.76/0.99  --add_important_lit                     false
% 1.76/0.99  --prop_solver_per_cl                    1000
% 1.76/0.99  --min_unsat_core                        false
% 1.76/0.99  --soft_assumptions                      false
% 1.76/0.99  --soft_lemma_size                       3
% 1.76/0.99  --prop_impl_unit_size                   0
% 1.76/0.99  --prop_impl_unit                        []
% 1.76/0.99  --share_sel_clauses                     true
% 1.76/0.99  --reset_solvers                         false
% 1.76/0.99  --bc_imp_inh                            [conj_cone]
% 1.76/0.99  --conj_cone_tolerance                   3.
% 1.76/0.99  --extra_neg_conj                        none
% 1.76/0.99  --large_theory_mode                     true
% 1.76/0.99  --prolific_symb_bound                   200
% 1.76/0.99  --lt_threshold                          2000
% 1.76/0.99  --clause_weak_htbl                      true
% 1.76/0.99  --gc_record_bc_elim                     false
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing Options
% 1.76/0.99  
% 1.76/0.99  --preprocessing_flag                    true
% 1.76/0.99  --time_out_prep_mult                    0.1
% 1.76/0.99  --splitting_mode                        input
% 1.76/0.99  --splitting_grd                         true
% 1.76/0.99  --splitting_cvd                         false
% 1.76/0.99  --splitting_cvd_svl                     false
% 1.76/0.99  --splitting_nvd                         32
% 1.76/0.99  --sub_typing                            true
% 1.76/0.99  --prep_gs_sim                           true
% 1.76/0.99  --prep_unflatten                        true
% 1.76/0.99  --prep_res_sim                          true
% 1.76/0.99  --prep_upred                            true
% 1.76/0.99  --prep_sem_filter                       exhaustive
% 1.76/0.99  --prep_sem_filter_out                   false
% 1.76/0.99  --pred_elim                             true
% 1.76/0.99  --res_sim_input                         true
% 1.76/0.99  --eq_ax_congr_red                       true
% 1.76/0.99  --pure_diseq_elim                       true
% 1.76/0.99  --brand_transform                       false
% 1.76/0.99  --non_eq_to_eq                          false
% 1.76/0.99  --prep_def_merge                        true
% 1.76/0.99  --prep_def_merge_prop_impl              false
% 1.76/0.99  --prep_def_merge_mbd                    true
% 1.76/0.99  --prep_def_merge_tr_red                 false
% 1.76/0.99  --prep_def_merge_tr_cl                  false
% 1.76/0.99  --smt_preprocessing                     true
% 1.76/0.99  --smt_ac_axioms                         fast
% 1.76/0.99  --preprocessed_out                      false
% 1.76/0.99  --preprocessed_stats                    false
% 1.76/0.99  
% 1.76/0.99  ------ Abstraction refinement Options
% 1.76/0.99  
% 1.76/0.99  --abstr_ref                             []
% 1.76/0.99  --abstr_ref_prep                        false
% 1.76/0.99  --abstr_ref_until_sat                   false
% 1.76/0.99  --abstr_ref_sig_restrict                funpre
% 1.76/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.76/0.99  --abstr_ref_under                       []
% 1.76/0.99  
% 1.76/0.99  ------ SAT Options
% 1.76/0.99  
% 1.76/0.99  --sat_mode                              false
% 1.76/0.99  --sat_fm_restart_options                ""
% 1.76/0.99  --sat_gr_def                            false
% 1.76/0.99  --sat_epr_types                         true
% 1.76/0.99  --sat_non_cyclic_types                  false
% 1.76/0.99  --sat_finite_models                     false
% 1.76/0.99  --sat_fm_lemmas                         false
% 1.76/0.99  --sat_fm_prep                           false
% 1.76/0.99  --sat_fm_uc_incr                        true
% 1.76/0.99  --sat_out_model                         small
% 1.76/0.99  --sat_out_clauses                       false
% 1.76/0.99  
% 1.76/0.99  ------ QBF Options
% 1.76/0.99  
% 1.76/0.99  --qbf_mode                              false
% 1.76/0.99  --qbf_elim_univ                         false
% 1.76/0.99  --qbf_dom_inst                          none
% 1.76/0.99  --qbf_dom_pre_inst                      false
% 1.76/0.99  --qbf_sk_in                             false
% 1.76/0.99  --qbf_pred_elim                         true
% 1.76/0.99  --qbf_split                             512
% 1.76/0.99  
% 1.76/0.99  ------ BMC1 Options
% 1.76/0.99  
% 1.76/0.99  --bmc1_incremental                      false
% 1.76/0.99  --bmc1_axioms                           reachable_all
% 1.76/0.99  --bmc1_min_bound                        0
% 1.76/0.99  --bmc1_max_bound                        -1
% 1.76/0.99  --bmc1_max_bound_default                -1
% 1.76/0.99  --bmc1_symbol_reachability              true
% 1.76/0.99  --bmc1_property_lemmas                  false
% 1.76/0.99  --bmc1_k_induction                      false
% 1.76/0.99  --bmc1_non_equiv_states                 false
% 1.76/0.99  --bmc1_deadlock                         false
% 1.76/0.99  --bmc1_ucm                              false
% 1.76/0.99  --bmc1_add_unsat_core                   none
% 1.76/0.99  --bmc1_unsat_core_children              false
% 1.76/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.76/0.99  --bmc1_out_stat                         full
% 1.76/0.99  --bmc1_ground_init                      false
% 1.76/0.99  --bmc1_pre_inst_next_state              false
% 1.76/0.99  --bmc1_pre_inst_state                   false
% 1.76/0.99  --bmc1_pre_inst_reach_state             false
% 1.76/0.99  --bmc1_out_unsat_core                   false
% 1.76/0.99  --bmc1_aig_witness_out                  false
% 1.76/0.99  --bmc1_verbose                          false
% 1.76/0.99  --bmc1_dump_clauses_tptp                false
% 1.76/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.76/0.99  --bmc1_dump_file                        -
% 1.76/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.76/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.76/0.99  --bmc1_ucm_extend_mode                  1
% 1.76/0.99  --bmc1_ucm_init_mode                    2
% 1.76/0.99  --bmc1_ucm_cone_mode                    none
% 1.76/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.76/0.99  --bmc1_ucm_relax_model                  4
% 1.76/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.76/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.76/0.99  --bmc1_ucm_layered_model                none
% 1.76/0.99  --bmc1_ucm_max_lemma_size               10
% 1.76/0.99  
% 1.76/0.99  ------ AIG Options
% 1.76/0.99  
% 1.76/0.99  --aig_mode                              false
% 1.76/0.99  
% 1.76/0.99  ------ Instantiation Options
% 1.76/0.99  
% 1.76/0.99  --instantiation_flag                    true
% 1.76/0.99  --inst_sos_flag                         false
% 1.76/0.99  --inst_sos_phase                        true
% 1.76/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.76/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.76/0.99  --inst_lit_sel_side                     none
% 1.76/0.99  --inst_solver_per_active                1400
% 1.76/0.99  --inst_solver_calls_frac                1.
% 1.76/0.99  --inst_passive_queue_type               priority_queues
% 1.76/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.76/0.99  --inst_passive_queues_freq              [25;2]
% 1.76/0.99  --inst_dismatching                      true
% 1.76/0.99  --inst_eager_unprocessed_to_passive     true
% 1.76/0.99  --inst_prop_sim_given                   true
% 1.76/0.99  --inst_prop_sim_new                     false
% 1.76/0.99  --inst_subs_new                         false
% 1.76/0.99  --inst_eq_res_simp                      false
% 1.76/0.99  --inst_subs_given                       false
% 1.76/0.99  --inst_orphan_elimination               true
% 1.76/0.99  --inst_learning_loop_flag               true
% 1.76/0.99  --inst_learning_start                   3000
% 1.76/0.99  --inst_learning_factor                  2
% 1.76/0.99  --inst_start_prop_sim_after_learn       3
% 1.76/0.99  --inst_sel_renew                        solver
% 1.76/0.99  --inst_lit_activity_flag                true
% 1.76/0.99  --inst_restr_to_given                   false
% 1.76/0.99  --inst_activity_threshold               500
% 1.76/0.99  --inst_out_proof                        true
% 1.76/0.99  
% 1.76/0.99  ------ Resolution Options
% 1.76/0.99  
% 1.76/0.99  --resolution_flag                       false
% 1.76/0.99  --res_lit_sel                           adaptive
% 1.76/0.99  --res_lit_sel_side                      none
% 1.76/0.99  --res_ordering                          kbo
% 1.76/0.99  --res_to_prop_solver                    active
% 1.76/0.99  --res_prop_simpl_new                    false
% 1.76/0.99  --res_prop_simpl_given                  true
% 1.76/0.99  --res_passive_queue_type                priority_queues
% 1.76/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.76/0.99  --res_passive_queues_freq               [15;5]
% 1.76/0.99  --res_forward_subs                      full
% 1.76/0.99  --res_backward_subs                     full
% 1.76/0.99  --res_forward_subs_resolution           true
% 1.76/0.99  --res_backward_subs_resolution          true
% 1.76/0.99  --res_orphan_elimination                true
% 1.76/0.99  --res_time_limit                        2.
% 1.76/0.99  --res_out_proof                         true
% 1.76/0.99  
% 1.76/0.99  ------ Superposition Options
% 1.76/0.99  
% 1.76/0.99  --superposition_flag                    true
% 1.76/0.99  --sup_passive_queue_type                priority_queues
% 1.76/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.76/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.76/0.99  --demod_completeness_check              fast
% 1.76/0.99  --demod_use_ground                      true
% 1.76/0.99  --sup_to_prop_solver                    passive
% 1.76/0.99  --sup_prop_simpl_new                    true
% 1.76/0.99  --sup_prop_simpl_given                  true
% 1.76/0.99  --sup_fun_splitting                     false
% 1.76/0.99  --sup_smt_interval                      50000
% 1.76/0.99  
% 1.76/0.99  ------ Superposition Simplification Setup
% 1.76/0.99  
% 1.76/0.99  --sup_indices_passive                   []
% 1.76/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.76/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.76/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_full_bw                           [BwDemod]
% 1.76/0.99  --sup_immed_triv                        [TrivRules]
% 1.76/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.76/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_immed_bw_main                     []
% 1.76/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.76/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.76/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.76/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.76/0.99  
% 1.76/0.99  ------ Combination Options
% 1.76/0.99  
% 1.76/0.99  --comb_res_mult                         3
% 1.76/0.99  --comb_sup_mult                         2
% 1.76/0.99  --comb_inst_mult                        10
% 1.76/0.99  
% 1.76/0.99  ------ Debug Options
% 1.76/0.99  
% 1.76/0.99  --dbg_backtrace                         false
% 1.76/0.99  --dbg_dump_prop_clauses                 false
% 1.76/0.99  --dbg_dump_prop_clauses_file            -
% 1.76/0.99  --dbg_out_stat                          false
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  ------ Proving...
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  % SZS status Theorem for theBenchmark.p
% 1.76/0.99  
% 1.76/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.76/0.99  
% 1.76/0.99  fof(f7,conjecture,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X2) & v3_pre_topc(X1,X0)) => r1_tarski(X1,k1_tops_1(X0,X2))))))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f8,negated_conjecture,(
% 1.76/0.99    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X2) & v3_pre_topc(X1,X0)) => r1_tarski(X1,k1_tops_1(X0,X2))))))),
% 1.76/0.99    inference(negated_conjecture,[],[f7])).
% 1.76/0.99  
% 1.76/0.99  fof(f18,plain,(
% 1.76/0.99    ? [X0] : (? [X1] : (? [X2] : ((~r1_tarski(X1,k1_tops_1(X0,X2)) & (r1_tarski(X1,X2) & v3_pre_topc(X1,X0))) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.76/0.99    inference(ennf_transformation,[],[f8])).
% 1.76/0.99  
% 1.76/0.99  fof(f19,plain,(
% 1.76/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(X1,k1_tops_1(X0,X2)) & r1_tarski(X1,X2) & v3_pre_topc(X1,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.76/0.99    inference(flattening,[],[f18])).
% 1.76/0.99  
% 1.76/0.99  fof(f23,plain,(
% 1.76/0.99    ( ! [X0,X1] : (? [X2] : (~r1_tarski(X1,k1_tops_1(X0,X2)) & r1_tarski(X1,X2) & v3_pre_topc(X1,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_tarski(X1,k1_tops_1(X0,sK2)) & r1_tarski(X1,sK2) & v3_pre_topc(X1,X0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.76/0.99    introduced(choice_axiom,[])).
% 1.76/0.99  
% 1.76/0.99  fof(f22,plain,(
% 1.76/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(X1,k1_tops_1(X0,X2)) & r1_tarski(X1,X2) & v3_pre_topc(X1,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (~r1_tarski(sK1,k1_tops_1(X0,X2)) & r1_tarski(sK1,X2) & v3_pre_topc(sK1,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.76/0.99    introduced(choice_axiom,[])).
% 1.76/0.99  
% 1.76/0.99  fof(f21,plain,(
% 1.76/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(X1,k1_tops_1(X0,X2)) & r1_tarski(X1,X2) & v3_pre_topc(X1,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (~r1_tarski(X1,k1_tops_1(sK0,X2)) & r1_tarski(X1,X2) & v3_pre_topc(X1,sK0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 1.76/0.99    introduced(choice_axiom,[])).
% 1.76/0.99  
% 1.76/0.99  fof(f24,plain,(
% 1.76/0.99    ((~r1_tarski(sK1,k1_tops_1(sK0,sK2)) & r1_tarski(sK1,sK2) & v3_pre_topc(sK1,sK0) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 1.76/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f19,f23,f22,f21])).
% 1.76/0.99  
% 1.76/0.99  fof(f33,plain,(
% 1.76/0.99    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  fof(f2,axiom,(
% 1.76/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f11,plain,(
% 1.76/0.99    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.76/0.99    inference(ennf_transformation,[],[f2])).
% 1.76/0.99  
% 1.76/0.99  fof(f26,plain,(
% 1.76/0.99    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.76/0.99    inference(cnf_transformation,[],[f11])).
% 1.76/0.99  
% 1.76/0.99  fof(f3,axiom,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f9,plain,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1)))),
% 1.76/0.99    inference(pure_predicate_removal,[],[f3])).
% 1.76/0.99  
% 1.76/0.99  fof(f12,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : ((k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(ennf_transformation,[],[f9])).
% 1.76/0.99  
% 1.76/0.99  fof(f13,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(flattening,[],[f12])).
% 1.76/0.99  
% 1.76/0.99  fof(f27,plain,(
% 1.76/0.99    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.76/0.99    inference(cnf_transformation,[],[f13])).
% 1.76/0.99  
% 1.76/0.99  fof(f5,axiom,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) <=> v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0))))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f15,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) <=> v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(ennf_transformation,[],[f5])).
% 1.76/0.99  
% 1.76/0.99  fof(f20,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | ~v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)) & (v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0) | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(nnf_transformation,[],[f15])).
% 1.76/0.99  
% 1.76/0.99  fof(f30,plain,(
% 1.76/0.99    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | ~v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.76/0.99    inference(cnf_transformation,[],[f20])).
% 1.76/0.99  
% 1.76/0.99  fof(f35,plain,(
% 1.76/0.99    v3_pre_topc(sK1,sK0)),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  fof(f32,plain,(
% 1.76/0.99    l1_pre_topc(sK0)),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  fof(f1,axiom,(
% 1.76/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f10,plain,(
% 1.76/0.99    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.76/0.99    inference(ennf_transformation,[],[f1])).
% 1.76/0.99  
% 1.76/0.99  fof(f25,plain,(
% 1.76/0.99    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.76/0.99    inference(cnf_transformation,[],[f10])).
% 1.76/0.99  
% 1.76/0.99  fof(f4,axiom,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f14,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(ennf_transformation,[],[f4])).
% 1.76/0.99  
% 1.76/0.99  fof(f28,plain,(
% 1.76/0.99    ( ! [X0,X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.76/0.99    inference(cnf_transformation,[],[f14])).
% 1.76/0.99  
% 1.76/0.99  fof(f6,axiom,(
% 1.76/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (r1_tarski(X1,X2) => r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2))))))),
% 1.76/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.76/0.99  
% 1.76/0.99  fof(f16,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2)) | ~r1_tarski(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(ennf_transformation,[],[f6])).
% 1.76/0.99  
% 1.76/0.99  fof(f17,plain,(
% 1.76/0.99    ! [X0] : (! [X1] : (! [X2] : (r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2)) | ~r1_tarski(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.76/0.99    inference(flattening,[],[f16])).
% 1.76/0.99  
% 1.76/0.99  fof(f31,plain,(
% 1.76/0.99    ( ! [X2,X0,X1] : (r1_tarski(k1_tops_1(X0,X1),k1_tops_1(X0,X2)) | ~r1_tarski(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.76/0.99    inference(cnf_transformation,[],[f17])).
% 1.76/0.99  
% 1.76/0.99  fof(f37,plain,(
% 1.76/0.99    ~r1_tarski(sK1,k1_tops_1(sK0,sK2))),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  fof(f36,plain,(
% 1.76/0.99    r1_tarski(sK1,sK2)),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  fof(f34,plain,(
% 1.76/0.99    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.76/0.99    inference(cnf_transformation,[],[f24])).
% 1.76/0.99  
% 1.76/0.99  cnf(c_11,negated_conjecture,
% 1.76/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_304,negated_conjecture,
% 1.76/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_498,plain,
% 1.76/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.76/0.99      inference(predicate_to_equality,[status(thm)],[c_304]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_1,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.76/0.99      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 1.76/0.99      inference(cnf_transformation,[],[f26]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_308,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X0_44))
% 1.76/0.99      | k3_subset_1(X0_44,k3_subset_1(X0_44,X0_41)) = X0_41 ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_494,plain,
% 1.76/0.99      ( k3_subset_1(X0_44,k3_subset_1(X0_44,X0_41)) = X0_41
% 1.76/0.99      | m1_subset_1(X0_41,k1_zfmisc_1(X0_44)) != iProver_top ),
% 1.76/0.99      inference(predicate_to_equality,[status(thm)],[c_308]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_847,plain,
% 1.76/0.99      ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
% 1.76/0.99      inference(superposition,[status(thm)],[c_498,c_494]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_2,plain,
% 1.76/0.99      ( ~ v4_pre_topc(X0,X1)
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.76/0.99      | ~ l1_pre_topc(X1)
% 1.76/0.99      | k2_pre_topc(X1,X0) = X0 ),
% 1.76/0.99      inference(cnf_transformation,[],[f27]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_4,plain,
% 1.76/0.99      ( ~ v3_pre_topc(k3_subset_1(u1_struct_0(X0),X1),X0)
% 1.76/0.99      | v4_pre_topc(X1,X0)
% 1.76/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 1.76/0.99      | ~ l1_pre_topc(X0) ),
% 1.76/0.99      inference(cnf_transformation,[],[f30]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_9,negated_conjecture,
% 1.76/0.99      ( v3_pre_topc(sK1,sK0) ),
% 1.76/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_146,plain,
% 1.76/0.99      ( v4_pre_topc(X0,X1)
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.76/0.99      | ~ l1_pre_topc(X1)
% 1.76/0.99      | k3_subset_1(u1_struct_0(X1),X0) != sK1
% 1.76/0.99      | sK0 != X1 ),
% 1.76/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_9]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_147,plain,
% 1.76/0.99      ( v4_pre_topc(X0,sK0)
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ l1_pre_topc(sK0)
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
% 1.76/0.99      inference(unflattening,[status(thm)],[c_146]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_12,negated_conjecture,
% 1.76/0.99      ( l1_pre_topc(sK0) ),
% 1.76/0.99      inference(cnf_transformation,[],[f32]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_151,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | v4_pre_topc(X0,sK0)
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
% 1.76/0.99      inference(global_propositional_subsumption,
% 1.76/0.99                [status(thm)],
% 1.76/0.99                [c_147,c_12]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_152,plain,
% 1.76/0.99      ( v4_pre_topc(X0,sK0)
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
% 1.76/0.99      inference(renaming,[status(thm)],[c_151]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_171,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.76/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ l1_pre_topc(X1)
% 1.76/0.99      | X2 != X0
% 1.76/0.99      | k2_pre_topc(X1,X0) = X0
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X2) != sK1
% 1.76/0.99      | sK0 != X1 ),
% 1.76/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_152]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_172,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ l1_pre_topc(sK0)
% 1.76/0.99      | k2_pre_topc(sK0,X0) = X0
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
% 1.76/0.99      inference(unflattening,[status(thm)],[c_171]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_176,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k2_pre_topc(sK0,X0) = X0
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0) != sK1 ),
% 1.76/0.99      inference(global_propositional_subsumption,
% 1.76/0.99                [status(thm)],
% 1.76/0.99                [c_172,c_12]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_303,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k2_pre_topc(sK0,X0_41) = X0_41
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0_41) != sK1 ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_176]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_499,plain,
% 1.76/0.99      ( k2_pre_topc(sK0,X0_41) = X0_41
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),X0_41) != sK1
% 1.76/0.99      | m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.76/0.99      inference(predicate_to_equality,[status(thm)],[c_303]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_1015,plain,
% 1.76/0.99      ( k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1)
% 1.76/0.99      | m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.76/0.99      inference(superposition,[status(thm)],[c_847,c_499]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_0,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.76/0.99      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 1.76/0.99      inference(cnf_transformation,[],[f25]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_309,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(X0_44))
% 1.76/0.99      | m1_subset_1(k3_subset_1(X0_44,X0_41),k1_zfmisc_1(X0_44)) ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_0]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_562,plain,
% 1.76/0.99      ( m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_309]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_568,plain,
% 1.76/0.99      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_308]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_617,plain,
% 1.76/0.99      ( ~ m1_subset_1(k3_subset_1(u1_struct_0(sK0),sK1),k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1)
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) != sK1 ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_303]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_1238,plain,
% 1.76/0.99      ( k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k3_subset_1(u1_struct_0(sK0),sK1) ),
% 1.76/0.99      inference(global_propositional_subsumption,
% 1.76/0.99                [status(thm)],
% 1.76/0.99                [c_1015,c_11,c_562,c_568,c_617]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_3,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.76/0.99      | ~ l1_pre_topc(X1)
% 1.76/0.99      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
% 1.76/0.99      inference(cnf_transformation,[],[f28]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_196,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.76/0.99      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
% 1.76/0.99      | sK0 != X1 ),
% 1.76/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_12]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_197,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
% 1.76/0.99      inference(unflattening,[status(thm)],[c_196]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_302,plain,
% 1.76/0.99      ( ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_41))) = k1_tops_1(sK0,X0_41) ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_197]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_500,plain,
% 1.76/0.99      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0_41))) = k1_tops_1(sK0,X0_41)
% 1.76/0.99      | m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.76/0.99      inference(predicate_to_equality,[status(thm)],[c_302]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_668,plain,
% 1.76/0.99      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
% 1.76/0.99      inference(superposition,[status(thm)],[c_498,c_500]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_1242,plain,
% 1.76/0.99      ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = k1_tops_1(sK0,sK1) ),
% 1.76/0.99      inference(demodulation,[status(thm)],[c_1238,c_668]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_1244,plain,
% 1.76/0.99      ( k1_tops_1(sK0,sK1) = sK1 ),
% 1.76/0.99      inference(light_normalisation,[status(thm)],[c_1242,c_847]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_312,plain,
% 1.76/0.99      ( X0_41 != X1_41 | X2_41 != X1_41 | X2_41 = X0_41 ),
% 1.76/0.99      theory(equality) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_763,plain,
% 1.76/0.99      ( X0_41 != X1_41
% 1.76/0.99      | X0_41 = k1_tops_1(sK0,sK1)
% 1.76/0.99      | k1_tops_1(sK0,sK1) != X1_41 ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_312]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_764,plain,
% 1.76/0.99      ( k1_tops_1(sK0,sK1) != sK1
% 1.76/0.99      | sK1 = k1_tops_1(sK0,sK1)
% 1.76/0.99      | sK1 != sK1 ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_763]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_311,plain,( X0_41 = X0_41 ),theory(equality) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_695,plain,
% 1.76/0.99      ( k1_tops_1(sK0,sK2) = k1_tops_1(sK0,sK2) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_311]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_317,plain,
% 1.76/0.99      ( ~ r1_tarski(X0_41,X1_41)
% 1.76/0.99      | r1_tarski(X2_41,X3_41)
% 1.76/0.99      | X2_41 != X0_41
% 1.76/0.99      | X3_41 != X1_41 ),
% 1.76/0.99      theory(equality) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_587,plain,
% 1.76/0.99      ( r1_tarski(X0_41,X1_41)
% 1.76/0.99      | ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
% 1.76/0.99      | X1_41 != k1_tops_1(sK0,sK2)
% 1.76/0.99      | X0_41 != k1_tops_1(sK0,sK1) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_317]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_694,plain,
% 1.76/0.99      ( r1_tarski(X0_41,k1_tops_1(sK0,sK2))
% 1.76/0.99      | ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
% 1.76/0.99      | X0_41 != k1_tops_1(sK0,sK1)
% 1.76/0.99      | k1_tops_1(sK0,sK2) != k1_tops_1(sK0,sK2) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_587]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_697,plain,
% 1.76/0.99      ( ~ r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
% 1.76/0.99      | r1_tarski(sK1,k1_tops_1(sK0,sK2))
% 1.76/0.99      | k1_tops_1(sK0,sK2) != k1_tops_1(sK0,sK2)
% 1.76/0.99      | sK1 != k1_tops_1(sK0,sK1) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_694]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_6,plain,
% 1.76/0.99      ( ~ r1_tarski(X0,X1)
% 1.76/0.99      | r1_tarski(k1_tops_1(X2,X0),k1_tops_1(X2,X1))
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
% 1.76/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
% 1.76/0.99      | ~ l1_pre_topc(X2) ),
% 1.76/0.99      inference(cnf_transformation,[],[f31]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_208,plain,
% 1.76/0.99      ( ~ r1_tarski(X0,X1)
% 1.76/0.99      | r1_tarski(k1_tops_1(X2,X0),k1_tops_1(X2,X1))
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X2)))
% 1.76/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
% 1.76/0.99      | sK0 != X2 ),
% 1.76/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_12]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_209,plain,
% 1.76/0.99      ( ~ r1_tarski(X0,X1)
% 1.76/0.99      | r1_tarski(k1_tops_1(sK0,X0),k1_tops_1(sK0,X1))
% 1.76/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(unflattening,[status(thm)],[c_208]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_301,plain,
% 1.76/0.99      ( ~ r1_tarski(X0_41,X1_41)
% 1.76/0.99      | r1_tarski(k1_tops_1(sK0,X0_41),k1_tops_1(sK0,X1_41))
% 1.76/0.99      | ~ m1_subset_1(X0_41,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ m1_subset_1(X1_41,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(subtyping,[status(esa)],[c_209]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_556,plain,
% 1.76/0.99      ( r1_tarski(k1_tops_1(sK0,sK1),k1_tops_1(sK0,sK2))
% 1.76/0.99      | ~ r1_tarski(sK1,sK2)
% 1.76/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.76/0.99      | ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_301]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_324,plain,
% 1.76/0.99      ( sK1 = sK1 ),
% 1.76/0.99      inference(instantiation,[status(thm)],[c_311]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_7,negated_conjecture,
% 1.76/0.99      ( ~ r1_tarski(sK1,k1_tops_1(sK0,sK2)) ),
% 1.76/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_8,negated_conjecture,
% 1.76/0.99      ( r1_tarski(sK1,sK2) ),
% 1.76/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(c_10,negated_conjecture,
% 1.76/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.76/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.76/0.99  
% 1.76/0.99  cnf(contradiction,plain,
% 1.76/0.99      ( $false ),
% 1.76/0.99      inference(minisat,
% 1.76/0.99                [status(thm)],
% 1.76/0.99                [c_1244,c_764,c_695,c_697,c_556,c_324,c_7,c_8,c_10,c_11]) ).
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.76/0.99  
% 1.76/0.99  ------                               Statistics
% 1.76/0.99  
% 1.76/0.99  ------ General
% 1.76/0.99  
% 1.76/0.99  abstr_ref_over_cycles:                  0
% 1.76/0.99  abstr_ref_under_cycles:                 0
% 1.76/0.99  gc_basic_clause_elim:                   0
% 1.76/0.99  forced_gc_time:                         0
% 1.76/0.99  parsing_time:                           0.007
% 1.76/0.99  unif_index_cands_time:                  0.
% 1.76/0.99  unif_index_add_time:                    0.
% 1.76/0.99  orderings_time:                         0.
% 1.76/0.99  out_proof_time:                         0.008
% 1.76/0.99  total_time:                             0.078
% 1.76/0.99  num_of_symbols:                         45
% 1.76/0.99  num_of_terms:                           1241
% 1.76/0.99  
% 1.76/0.99  ------ Preprocessing
% 1.76/0.99  
% 1.76/0.99  num_of_splits:                          0
% 1.76/0.99  num_of_split_atoms:                     0
% 1.76/0.99  num_of_reused_defs:                     0
% 1.76/0.99  num_eq_ax_congr_red:                    9
% 1.76/0.99  num_of_sem_filtered_clauses:            1
% 1.76/0.99  num_of_subtypes:                        4
% 1.76/0.99  monotx_restored_types:                  0
% 1.76/0.99  sat_num_of_epr_types:                   0
% 1.76/0.99  sat_num_of_non_cyclic_types:            0
% 1.76/0.99  sat_guarded_non_collapsed_types:        1
% 1.76/0.99  num_pure_diseq_elim:                    0
% 1.76/0.99  simp_replaced_by:                       0
% 1.76/0.99  res_preprocessed:                       55
% 1.76/0.99  prep_upred:                             0
% 1.76/0.99  prep_unflattend:                        5
% 1.76/0.99  smt_new_axioms:                         0
% 1.76/0.99  pred_elim_cands:                        2
% 1.76/0.99  pred_elim:                              3
% 1.76/0.99  pred_elim_cl:                           4
% 1.76/0.99  pred_elim_cycles:                       5
% 1.76/0.99  merged_defs:                            0
% 1.76/0.99  merged_defs_ncl:                        0
% 1.76/0.99  bin_hyper_res:                          0
% 1.76/0.99  prep_cycles:                            4
% 1.76/0.99  pred_elim_time:                         0.002
% 1.76/0.99  splitting_time:                         0.
% 1.76/0.99  sem_filter_time:                        0.
% 1.76/0.99  monotx_time:                            0.
% 1.76/0.99  subtype_inf_time:                       0.
% 1.76/0.99  
% 1.76/0.99  ------ Problem properties
% 1.76/0.99  
% 1.76/0.99  clauses:                                9
% 1.76/0.99  conjectures:                            4
% 1.76/0.99  epr:                                    1
% 1.76/0.99  horn:                                   9
% 1.76/0.99  ground:                                 4
% 1.76/0.99  unary:                                  4
% 1.76/0.99  binary:                                 3
% 1.76/0.99  lits:                                   17
% 1.76/0.99  lits_eq:                                4
% 1.76/0.99  fd_pure:                                0
% 1.76/0.99  fd_pseudo:                              0
% 1.76/0.99  fd_cond:                                0
% 1.76/0.99  fd_pseudo_cond:                         0
% 1.76/0.99  ac_symbols:                             0
% 1.76/0.99  
% 1.76/0.99  ------ Propositional Solver
% 1.76/0.99  
% 1.76/0.99  prop_solver_calls:                      26
% 1.76/0.99  prop_fast_solver_calls:                 282
% 1.76/0.99  smt_solver_calls:                       0
% 1.76/0.99  smt_fast_solver_calls:                  0
% 1.76/0.99  prop_num_of_clauses:                    431
% 1.76/0.99  prop_preprocess_simplified:             1881
% 1.76/0.99  prop_fo_subsumed:                       3
% 1.76/0.99  prop_solver_time:                       0.
% 1.76/0.99  smt_solver_time:                        0.
% 1.76/0.99  smt_fast_solver_time:                   0.
% 1.76/0.99  prop_fast_solver_time:                  0.
% 1.76/0.99  prop_unsat_core_time:                   0.
% 1.76/0.99  
% 1.76/0.99  ------ QBF
% 1.76/0.99  
% 1.76/0.99  qbf_q_res:                              0
% 1.76/0.99  qbf_num_tautologies:                    0
% 1.76/0.99  qbf_prep_cycles:                        0
% 1.76/0.99  
% 1.76/0.99  ------ BMC1
% 1.76/0.99  
% 1.76/0.99  bmc1_current_bound:                     -1
% 1.76/0.99  bmc1_last_solved_bound:                 -1
% 1.76/0.99  bmc1_unsat_core_size:                   -1
% 1.76/0.99  bmc1_unsat_core_parents_size:           -1
% 1.76/0.99  bmc1_merge_next_fun:                    0
% 1.76/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.76/0.99  
% 1.76/0.99  ------ Instantiation
% 1.76/0.99  
% 1.76/0.99  inst_num_of_clauses:                    166
% 1.76/0.99  inst_num_in_passive:                    64
% 1.76/0.99  inst_num_in_active:                     87
% 1.76/0.99  inst_num_in_unprocessed:                15
% 1.76/0.99  inst_num_of_loops:                      90
% 1.76/0.99  inst_num_of_learning_restarts:          0
% 1.76/0.99  inst_num_moves_active_passive:          0
% 1.76/0.99  inst_lit_activity:                      0
% 1.76/0.99  inst_lit_activity_moves:                0
% 1.76/0.99  inst_num_tautologies:                   0
% 1.76/0.99  inst_num_prop_implied:                  0
% 1.76/0.99  inst_num_existing_simplified:           0
% 1.76/0.99  inst_num_eq_res_simplified:             0
% 1.76/0.99  inst_num_child_elim:                    0
% 1.76/0.99  inst_num_of_dismatching_blockings:      27
% 1.76/0.99  inst_num_of_non_proper_insts:           117
% 1.76/0.99  inst_num_of_duplicates:                 0
% 1.76/0.99  inst_inst_num_from_inst_to_res:         0
% 1.76/0.99  inst_dismatching_checking_time:         0.
% 1.76/0.99  
% 1.76/0.99  ------ Resolution
% 1.76/0.99  
% 1.76/0.99  res_num_of_clauses:                     0
% 1.76/0.99  res_num_in_passive:                     0
% 1.76/0.99  res_num_in_active:                      0
% 1.76/0.99  res_num_of_loops:                       59
% 1.76/0.99  res_forward_subset_subsumed:            4
% 1.76/0.99  res_backward_subset_subsumed:           0
% 1.76/0.99  res_forward_subsumed:                   0
% 1.76/0.99  res_backward_subsumed:                  0
% 1.76/0.99  res_forward_subsumption_resolution:     0
% 1.76/0.99  res_backward_subsumption_resolution:    0
% 1.76/0.99  res_clause_to_clause_subsumption:       33
% 1.76/0.99  res_orphan_elimination:                 0
% 1.76/0.99  res_tautology_del:                      17
% 1.76/0.99  res_num_eq_res_simplified:              0
% 1.76/0.99  res_num_sel_changes:                    0
% 1.76/0.99  res_moves_from_active_to_pass:          0
% 1.76/0.99  
% 1.76/0.99  ------ Superposition
% 1.76/0.99  
% 1.76/0.99  sup_time_total:                         0.
% 1.76/0.99  sup_time_generating:                    0.
% 1.76/0.99  sup_time_sim_full:                      0.
% 1.76/0.99  sup_time_sim_immed:                     0.
% 1.76/0.99  
% 1.76/0.99  sup_num_of_clauses:                     21
% 1.76/0.99  sup_num_in_active:                      14
% 1.76/0.99  sup_num_in_passive:                     7
% 1.76/0.99  sup_num_of_loops:                       16
% 1.76/0.99  sup_fw_superposition:                   14
% 1.76/0.99  sup_bw_superposition:                   3
% 1.76/0.99  sup_immediate_simplified:               7
% 1.76/0.99  sup_given_eliminated:                   0
% 1.76/0.99  comparisons_done:                       0
% 1.76/0.99  comparisons_avoided:                    0
% 1.76/0.99  
% 1.76/0.99  ------ Simplifications
% 1.76/0.99  
% 1.76/0.99  
% 1.76/0.99  sim_fw_subset_subsumed:                 2
% 1.76/0.99  sim_bw_subset_subsumed:                 0
% 1.76/0.99  sim_fw_subsumed:                        1
% 1.76/0.99  sim_bw_subsumed:                        0
% 1.76/0.99  sim_fw_subsumption_res:                 0
% 1.76/0.99  sim_bw_subsumption_res:                 0
% 1.76/0.99  sim_tautology_del:                      0
% 1.76/0.99  sim_eq_tautology_del:                   2
% 1.76/0.99  sim_eq_res_simp:                        0
% 1.76/0.99  sim_fw_demodulated:                     0
% 1.76/0.99  sim_bw_demodulated:                     2
% 1.76/0.99  sim_light_normalised:                   4
% 1.76/0.99  sim_joinable_taut:                      0
% 1.76/0.99  sim_joinable_simp:                      0
% 1.76/0.99  sim_ac_normalised:                      0
% 1.76/0.99  sim_smt_subsumption:                    0
% 1.76/0.99  
%------------------------------------------------------------------------------
