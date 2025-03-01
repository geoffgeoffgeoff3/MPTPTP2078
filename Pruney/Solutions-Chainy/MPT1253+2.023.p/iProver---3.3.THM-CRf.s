%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:14:10 EST 2020

% Result     : Theorem 3.26s
% Output     : CNFRefutation 3.26s
% Verified   : 
% Statistics : Number of formulae       :   96 ( 229 expanded)
%              Number of clauses        :   53 (  86 expanded)
%              Number of leaves         :   12 (  49 expanded)
%              Depth                    :   15
%              Number of atoms          :  225 ( 677 expanded)
%              Number of equality atoms :   77 ( 101 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => r1_tarski(k2_tops_1(X0,X1),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
             => r1_tarski(k2_tops_1(X0,X1),X1) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),X1)
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),X1)
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),X1)
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_tarski(k2_tops_1(X0,sK1),sK1)
        & v4_pre_topc(sK1,X0)
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_tarski(k2_tops_1(X0,X1),X1)
            & v4_pre_topc(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(sK0,X1),X1)
          & v4_pre_topc(X1,sK0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ~ r1_tarski(k2_tops_1(sK0,sK1),sK1)
    & v4_pre_topc(sK1,sK0)
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f22,f27,f26])).

fof(f42,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f32,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f41,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v4_pre_topc(X1,X0)
           => k2_pre_topc(X0,X1) = X1 ) ) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,X1) = X1
          | ~ v4_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f17])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f43,plain,(
    v4_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f23])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f46,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f29])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f44,plain,(
    ~ r1_tarski(k2_tops_1(sK0,sK1),sK1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1018,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1020,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1403,plain,
    ( r1_tarski(sK1,u1_struct_0(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1018,c_1020])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_7,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_125,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_7])).

cnf(c_126,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_125])).

cnf(c_148,plain,
    ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
    | ~ r1_tarski(X1,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_3,c_126])).

cnf(c_1017,plain,
    ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) = iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_148])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_15,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_241,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_15])).

cnf(c_242,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_241])).

cnf(c_1012,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_242])).

cnf(c_2129,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0))
    | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1017,c_1012])).

cnf(c_2741,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
    inference(superposition,[status(thm)],[c_1403,c_2129])).

cnf(c_9,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_13,negated_conjecture,
    ( v4_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_220,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0
    | sK1 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_13])).

cnf(c_221,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k2_pre_topc(sK0,sK1) = sK1 ),
    inference(unflattening,[status(thm)],[c_220])).

cnf(c_223,plain,
    ( k2_pre_topc(sK0,sK1) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_221,c_15,c_14])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_229,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_15])).

cnf(c_230,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_229])).

cnf(c_1013,plain,
    ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_230])).

cnf(c_1165,plain,
    ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_1018,c_1013])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_150,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_126])).

cnf(c_1015,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_150])).

cnf(c_2028,plain,
    ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
    inference(superposition,[status(thm)],[c_1403,c_1015])).

cnf(c_2743,plain,
    ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),sK1) = k2_tops_1(sK0,sK1) ),
    inference(light_normalisation,[status(thm)],[c_2741,c_223,c_1165,c_2028])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_151,plain,
    ( ~ r1_tarski(X0,X1)
    | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_6,c_126])).

cnf(c_1014,plain,
    ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
    | r1_tarski(X2,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_151])).

cnf(c_1644,plain,
    ( k9_subset_1(u1_struct_0(sK0),X0,sK1) = k3_xboole_0(X0,sK1) ),
    inference(superposition,[status(thm)],[c_1403,c_1014])).

cnf(c_2839,plain,
    ( k3_xboole_0(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),sK1) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_2743,c_1644])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1022,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1398,plain,
    ( k9_subset_1(X0,X1,X0) = k3_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_1022,c_1014])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_149,plain,
    ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
    | ~ r1_tarski(X2,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_4,c_126])).

cnf(c_1016,plain,
    ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) = iProver_top
    | r1_tarski(X2,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_149])).

cnf(c_2401,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k9_subset_1(X1,X2,X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1016,c_1020])).

cnf(c_3246,plain,
    ( r1_tarski(X0,X0) != iProver_top
    | r1_tarski(k3_xboole_0(X1,X0),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1398,c_2401])).

cnf(c_47,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_6228,plain,
    ( r1_tarski(k3_xboole_0(X1,X0),X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3246,c_47])).

cnf(c_6229,plain,
    ( r1_tarski(k3_xboole_0(X0,X1),X1) = iProver_top ),
    inference(renaming,[status(thm)],[c_6228])).

cnf(c_6235,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2839,c_6229])).

cnf(c_12,negated_conjecture,
    ( ~ r1_tarski(k2_tops_1(sK0,sK1),sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_19,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6235,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.32  % Computer   : n013.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % WCLimit    : 600
% 0.12/0.32  % DateTime   : Tue Dec  1 14:01:39 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.26/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.26/1.00  
% 3.26/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.26/1.00  
% 3.26/1.00  ------  iProver source info
% 3.26/1.00  
% 3.26/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.26/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.26/1.00  git: non_committed_changes: false
% 3.26/1.00  git: last_make_outside_of_git: false
% 3.26/1.00  
% 3.26/1.00  ------ 
% 3.26/1.00  
% 3.26/1.00  ------ Input Options
% 3.26/1.00  
% 3.26/1.00  --out_options                           all
% 3.26/1.00  --tptp_safe_out                         true
% 3.26/1.00  --problem_path                          ""
% 3.26/1.00  --include_path                          ""
% 3.26/1.00  --clausifier                            res/vclausify_rel
% 3.26/1.00  --clausifier_options                    --mode clausify
% 3.26/1.00  --stdin                                 false
% 3.26/1.00  --stats_out                             all
% 3.26/1.00  
% 3.26/1.00  ------ General Options
% 3.26/1.00  
% 3.26/1.00  --fof                                   false
% 3.26/1.00  --time_out_real                         305.
% 3.26/1.00  --time_out_virtual                      -1.
% 3.26/1.00  --symbol_type_check                     false
% 3.26/1.00  --clausify_out                          false
% 3.26/1.00  --sig_cnt_out                           false
% 3.26/1.00  --trig_cnt_out                          false
% 3.26/1.00  --trig_cnt_out_tolerance                1.
% 3.26/1.00  --trig_cnt_out_sk_spl                   false
% 3.26/1.00  --abstr_cl_out                          false
% 3.26/1.00  
% 3.26/1.00  ------ Global Options
% 3.26/1.00  
% 3.26/1.00  --schedule                              default
% 3.26/1.00  --add_important_lit                     false
% 3.26/1.00  --prop_solver_per_cl                    1000
% 3.26/1.00  --min_unsat_core                        false
% 3.26/1.00  --soft_assumptions                      false
% 3.26/1.00  --soft_lemma_size                       3
% 3.26/1.00  --prop_impl_unit_size                   0
% 3.26/1.00  --prop_impl_unit                        []
% 3.26/1.00  --share_sel_clauses                     true
% 3.26/1.00  --reset_solvers                         false
% 3.26/1.00  --bc_imp_inh                            [conj_cone]
% 3.26/1.00  --conj_cone_tolerance                   3.
% 3.26/1.00  --extra_neg_conj                        none
% 3.26/1.00  --large_theory_mode                     true
% 3.26/1.00  --prolific_symb_bound                   200
% 3.26/1.00  --lt_threshold                          2000
% 3.26/1.00  --clause_weak_htbl                      true
% 3.26/1.00  --gc_record_bc_elim                     false
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing Options
% 3.26/1.00  
% 3.26/1.00  --preprocessing_flag                    true
% 3.26/1.00  --time_out_prep_mult                    0.1
% 3.26/1.00  --splitting_mode                        input
% 3.26/1.00  --splitting_grd                         true
% 3.26/1.00  --splitting_cvd                         false
% 3.26/1.00  --splitting_cvd_svl                     false
% 3.26/1.00  --splitting_nvd                         32
% 3.26/1.00  --sub_typing                            true
% 3.26/1.00  --prep_gs_sim                           true
% 3.26/1.00  --prep_unflatten                        true
% 3.26/1.00  --prep_res_sim                          true
% 3.26/1.00  --prep_upred                            true
% 3.26/1.00  --prep_sem_filter                       exhaustive
% 3.26/1.00  --prep_sem_filter_out                   false
% 3.26/1.00  --pred_elim                             true
% 3.26/1.00  --res_sim_input                         true
% 3.26/1.00  --eq_ax_congr_red                       true
% 3.26/1.00  --pure_diseq_elim                       true
% 3.26/1.00  --brand_transform                       false
% 3.26/1.00  --non_eq_to_eq                          false
% 3.26/1.00  --prep_def_merge                        true
% 3.26/1.00  --prep_def_merge_prop_impl              false
% 3.26/1.00  --prep_def_merge_mbd                    true
% 3.26/1.00  --prep_def_merge_tr_red                 false
% 3.26/1.00  --prep_def_merge_tr_cl                  false
% 3.26/1.00  --smt_preprocessing                     true
% 3.26/1.00  --smt_ac_axioms                         fast
% 3.26/1.00  --preprocessed_out                      false
% 3.26/1.00  --preprocessed_stats                    false
% 3.26/1.00  
% 3.26/1.00  ------ Abstraction refinement Options
% 3.26/1.00  
% 3.26/1.00  --abstr_ref                             []
% 3.26/1.00  --abstr_ref_prep                        false
% 3.26/1.00  --abstr_ref_until_sat                   false
% 3.26/1.00  --abstr_ref_sig_restrict                funpre
% 3.26/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.26/1.00  --abstr_ref_under                       []
% 3.26/1.00  
% 3.26/1.00  ------ SAT Options
% 3.26/1.00  
% 3.26/1.00  --sat_mode                              false
% 3.26/1.00  --sat_fm_restart_options                ""
% 3.26/1.00  --sat_gr_def                            false
% 3.26/1.00  --sat_epr_types                         true
% 3.26/1.00  --sat_non_cyclic_types                  false
% 3.26/1.00  --sat_finite_models                     false
% 3.26/1.00  --sat_fm_lemmas                         false
% 3.26/1.00  --sat_fm_prep                           false
% 3.26/1.00  --sat_fm_uc_incr                        true
% 3.26/1.00  --sat_out_model                         small
% 3.26/1.00  --sat_out_clauses                       false
% 3.26/1.00  
% 3.26/1.00  ------ QBF Options
% 3.26/1.00  
% 3.26/1.00  --qbf_mode                              false
% 3.26/1.00  --qbf_elim_univ                         false
% 3.26/1.00  --qbf_dom_inst                          none
% 3.26/1.00  --qbf_dom_pre_inst                      false
% 3.26/1.00  --qbf_sk_in                             false
% 3.26/1.00  --qbf_pred_elim                         true
% 3.26/1.00  --qbf_split                             512
% 3.26/1.00  
% 3.26/1.00  ------ BMC1 Options
% 3.26/1.00  
% 3.26/1.00  --bmc1_incremental                      false
% 3.26/1.00  --bmc1_axioms                           reachable_all
% 3.26/1.00  --bmc1_min_bound                        0
% 3.26/1.00  --bmc1_max_bound                        -1
% 3.26/1.00  --bmc1_max_bound_default                -1
% 3.26/1.00  --bmc1_symbol_reachability              true
% 3.26/1.00  --bmc1_property_lemmas                  false
% 3.26/1.00  --bmc1_k_induction                      false
% 3.26/1.00  --bmc1_non_equiv_states                 false
% 3.26/1.00  --bmc1_deadlock                         false
% 3.26/1.00  --bmc1_ucm                              false
% 3.26/1.00  --bmc1_add_unsat_core                   none
% 3.26/1.00  --bmc1_unsat_core_children              false
% 3.26/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.26/1.00  --bmc1_out_stat                         full
% 3.26/1.00  --bmc1_ground_init                      false
% 3.26/1.00  --bmc1_pre_inst_next_state              false
% 3.26/1.00  --bmc1_pre_inst_state                   false
% 3.26/1.00  --bmc1_pre_inst_reach_state             false
% 3.26/1.00  --bmc1_out_unsat_core                   false
% 3.26/1.00  --bmc1_aig_witness_out                  false
% 3.26/1.00  --bmc1_verbose                          false
% 3.26/1.00  --bmc1_dump_clauses_tptp                false
% 3.26/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.26/1.00  --bmc1_dump_file                        -
% 3.26/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.26/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.26/1.00  --bmc1_ucm_extend_mode                  1
% 3.26/1.00  --bmc1_ucm_init_mode                    2
% 3.26/1.00  --bmc1_ucm_cone_mode                    none
% 3.26/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.26/1.00  --bmc1_ucm_relax_model                  4
% 3.26/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.26/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.26/1.00  --bmc1_ucm_layered_model                none
% 3.26/1.00  --bmc1_ucm_max_lemma_size               10
% 3.26/1.00  
% 3.26/1.00  ------ AIG Options
% 3.26/1.00  
% 3.26/1.00  --aig_mode                              false
% 3.26/1.00  
% 3.26/1.00  ------ Instantiation Options
% 3.26/1.00  
% 3.26/1.00  --instantiation_flag                    true
% 3.26/1.00  --inst_sos_flag                         false
% 3.26/1.00  --inst_sos_phase                        true
% 3.26/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.26/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.26/1.00  --inst_lit_sel_side                     num_symb
% 3.26/1.00  --inst_solver_per_active                1400
% 3.26/1.00  --inst_solver_calls_frac                1.
% 3.26/1.00  --inst_passive_queue_type               priority_queues
% 3.26/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.26/1.00  --inst_passive_queues_freq              [25;2]
% 3.26/1.00  --inst_dismatching                      true
% 3.26/1.00  --inst_eager_unprocessed_to_passive     true
% 3.26/1.00  --inst_prop_sim_given                   true
% 3.26/1.00  --inst_prop_sim_new                     false
% 3.26/1.00  --inst_subs_new                         false
% 3.26/1.00  --inst_eq_res_simp                      false
% 3.26/1.00  --inst_subs_given                       false
% 3.26/1.00  --inst_orphan_elimination               true
% 3.26/1.00  --inst_learning_loop_flag               true
% 3.26/1.00  --inst_learning_start                   3000
% 3.26/1.00  --inst_learning_factor                  2
% 3.26/1.00  --inst_start_prop_sim_after_learn       3
% 3.26/1.00  --inst_sel_renew                        solver
% 3.26/1.00  --inst_lit_activity_flag                true
% 3.26/1.00  --inst_restr_to_given                   false
% 3.26/1.00  --inst_activity_threshold               500
% 3.26/1.00  --inst_out_proof                        true
% 3.26/1.00  
% 3.26/1.00  ------ Resolution Options
% 3.26/1.00  
% 3.26/1.00  --resolution_flag                       true
% 3.26/1.00  --res_lit_sel                           adaptive
% 3.26/1.00  --res_lit_sel_side                      none
% 3.26/1.00  --res_ordering                          kbo
% 3.26/1.00  --res_to_prop_solver                    active
% 3.26/1.00  --res_prop_simpl_new                    false
% 3.26/1.00  --res_prop_simpl_given                  true
% 3.26/1.00  --res_passive_queue_type                priority_queues
% 3.26/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.26/1.00  --res_passive_queues_freq               [15;5]
% 3.26/1.00  --res_forward_subs                      full
% 3.26/1.00  --res_backward_subs                     full
% 3.26/1.00  --res_forward_subs_resolution           true
% 3.26/1.00  --res_backward_subs_resolution          true
% 3.26/1.00  --res_orphan_elimination                true
% 3.26/1.00  --res_time_limit                        2.
% 3.26/1.00  --res_out_proof                         true
% 3.26/1.00  
% 3.26/1.00  ------ Superposition Options
% 3.26/1.00  
% 3.26/1.00  --superposition_flag                    true
% 3.26/1.00  --sup_passive_queue_type                priority_queues
% 3.26/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.26/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.26/1.00  --demod_completeness_check              fast
% 3.26/1.00  --demod_use_ground                      true
% 3.26/1.00  --sup_to_prop_solver                    passive
% 3.26/1.00  --sup_prop_simpl_new                    true
% 3.26/1.00  --sup_prop_simpl_given                  true
% 3.26/1.00  --sup_fun_splitting                     false
% 3.26/1.00  --sup_smt_interval                      50000
% 3.26/1.00  
% 3.26/1.00  ------ Superposition Simplification Setup
% 3.26/1.00  
% 3.26/1.00  --sup_indices_passive                   []
% 3.26/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.26/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_full_bw                           [BwDemod]
% 3.26/1.00  --sup_immed_triv                        [TrivRules]
% 3.26/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.26/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_immed_bw_main                     []
% 3.26/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.26/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.26/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.26/1.00  
% 3.26/1.00  ------ Combination Options
% 3.26/1.00  
% 3.26/1.00  --comb_res_mult                         3
% 3.26/1.00  --comb_sup_mult                         2
% 3.26/1.00  --comb_inst_mult                        10
% 3.26/1.00  
% 3.26/1.00  ------ Debug Options
% 3.26/1.00  
% 3.26/1.00  --dbg_backtrace                         false
% 3.26/1.00  --dbg_dump_prop_clauses                 false
% 3.26/1.00  --dbg_dump_prop_clauses_file            -
% 3.26/1.00  --dbg_out_stat                          false
% 3.26/1.00  ------ Parsing...
% 3.26/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.26/1.00  ------ Proving...
% 3.26/1.00  ------ Problem Properties 
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  clauses                                 13
% 3.26/1.00  conjectures                             2
% 3.26/1.00  EPR                                     2
% 3.26/1.00  Horn                                    13
% 3.26/1.00  unary                                   4
% 3.26/1.00  binary                                  8
% 3.26/1.00  lits                                    23
% 3.26/1.00  lits eq                                 6
% 3.26/1.00  fd_pure                                 0
% 3.26/1.00  fd_pseudo                               0
% 3.26/1.00  fd_cond                                 0
% 3.26/1.00  fd_pseudo_cond                          1
% 3.26/1.00  AC symbols                              0
% 3.26/1.00  
% 3.26/1.00  ------ Schedule dynamic 5 is on 
% 3.26/1.00  
% 3.26/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  ------ 
% 3.26/1.00  Current options:
% 3.26/1.00  ------ 
% 3.26/1.00  
% 3.26/1.00  ------ Input Options
% 3.26/1.00  
% 3.26/1.00  --out_options                           all
% 3.26/1.00  --tptp_safe_out                         true
% 3.26/1.00  --problem_path                          ""
% 3.26/1.00  --include_path                          ""
% 3.26/1.00  --clausifier                            res/vclausify_rel
% 3.26/1.00  --clausifier_options                    --mode clausify
% 3.26/1.00  --stdin                                 false
% 3.26/1.00  --stats_out                             all
% 3.26/1.00  
% 3.26/1.00  ------ General Options
% 3.26/1.00  
% 3.26/1.00  --fof                                   false
% 3.26/1.00  --time_out_real                         305.
% 3.26/1.00  --time_out_virtual                      -1.
% 3.26/1.00  --symbol_type_check                     false
% 3.26/1.00  --clausify_out                          false
% 3.26/1.00  --sig_cnt_out                           false
% 3.26/1.00  --trig_cnt_out                          false
% 3.26/1.00  --trig_cnt_out_tolerance                1.
% 3.26/1.00  --trig_cnt_out_sk_spl                   false
% 3.26/1.00  --abstr_cl_out                          false
% 3.26/1.00  
% 3.26/1.00  ------ Global Options
% 3.26/1.00  
% 3.26/1.00  --schedule                              default
% 3.26/1.00  --add_important_lit                     false
% 3.26/1.00  --prop_solver_per_cl                    1000
% 3.26/1.00  --min_unsat_core                        false
% 3.26/1.00  --soft_assumptions                      false
% 3.26/1.00  --soft_lemma_size                       3
% 3.26/1.00  --prop_impl_unit_size                   0
% 3.26/1.00  --prop_impl_unit                        []
% 3.26/1.00  --share_sel_clauses                     true
% 3.26/1.00  --reset_solvers                         false
% 3.26/1.00  --bc_imp_inh                            [conj_cone]
% 3.26/1.00  --conj_cone_tolerance                   3.
% 3.26/1.00  --extra_neg_conj                        none
% 3.26/1.00  --large_theory_mode                     true
% 3.26/1.00  --prolific_symb_bound                   200
% 3.26/1.00  --lt_threshold                          2000
% 3.26/1.00  --clause_weak_htbl                      true
% 3.26/1.00  --gc_record_bc_elim                     false
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing Options
% 3.26/1.00  
% 3.26/1.00  --preprocessing_flag                    true
% 3.26/1.00  --time_out_prep_mult                    0.1
% 3.26/1.00  --splitting_mode                        input
% 3.26/1.00  --splitting_grd                         true
% 3.26/1.00  --splitting_cvd                         false
% 3.26/1.00  --splitting_cvd_svl                     false
% 3.26/1.00  --splitting_nvd                         32
% 3.26/1.00  --sub_typing                            true
% 3.26/1.00  --prep_gs_sim                           true
% 3.26/1.00  --prep_unflatten                        true
% 3.26/1.00  --prep_res_sim                          true
% 3.26/1.00  --prep_upred                            true
% 3.26/1.00  --prep_sem_filter                       exhaustive
% 3.26/1.00  --prep_sem_filter_out                   false
% 3.26/1.00  --pred_elim                             true
% 3.26/1.00  --res_sim_input                         true
% 3.26/1.00  --eq_ax_congr_red                       true
% 3.26/1.00  --pure_diseq_elim                       true
% 3.26/1.00  --brand_transform                       false
% 3.26/1.00  --non_eq_to_eq                          false
% 3.26/1.00  --prep_def_merge                        true
% 3.26/1.00  --prep_def_merge_prop_impl              false
% 3.26/1.00  --prep_def_merge_mbd                    true
% 3.26/1.00  --prep_def_merge_tr_red                 false
% 3.26/1.00  --prep_def_merge_tr_cl                  false
% 3.26/1.00  --smt_preprocessing                     true
% 3.26/1.00  --smt_ac_axioms                         fast
% 3.26/1.00  --preprocessed_out                      false
% 3.26/1.00  --preprocessed_stats                    false
% 3.26/1.00  
% 3.26/1.00  ------ Abstraction refinement Options
% 3.26/1.00  
% 3.26/1.00  --abstr_ref                             []
% 3.26/1.00  --abstr_ref_prep                        false
% 3.26/1.00  --abstr_ref_until_sat                   false
% 3.26/1.00  --abstr_ref_sig_restrict                funpre
% 3.26/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.26/1.00  --abstr_ref_under                       []
% 3.26/1.00  
% 3.26/1.00  ------ SAT Options
% 3.26/1.00  
% 3.26/1.00  --sat_mode                              false
% 3.26/1.00  --sat_fm_restart_options                ""
% 3.26/1.00  --sat_gr_def                            false
% 3.26/1.00  --sat_epr_types                         true
% 3.26/1.00  --sat_non_cyclic_types                  false
% 3.26/1.00  --sat_finite_models                     false
% 3.26/1.00  --sat_fm_lemmas                         false
% 3.26/1.00  --sat_fm_prep                           false
% 3.26/1.00  --sat_fm_uc_incr                        true
% 3.26/1.00  --sat_out_model                         small
% 3.26/1.00  --sat_out_clauses                       false
% 3.26/1.00  
% 3.26/1.00  ------ QBF Options
% 3.26/1.00  
% 3.26/1.00  --qbf_mode                              false
% 3.26/1.00  --qbf_elim_univ                         false
% 3.26/1.00  --qbf_dom_inst                          none
% 3.26/1.00  --qbf_dom_pre_inst                      false
% 3.26/1.00  --qbf_sk_in                             false
% 3.26/1.00  --qbf_pred_elim                         true
% 3.26/1.00  --qbf_split                             512
% 3.26/1.00  
% 3.26/1.00  ------ BMC1 Options
% 3.26/1.00  
% 3.26/1.00  --bmc1_incremental                      false
% 3.26/1.00  --bmc1_axioms                           reachable_all
% 3.26/1.00  --bmc1_min_bound                        0
% 3.26/1.00  --bmc1_max_bound                        -1
% 3.26/1.00  --bmc1_max_bound_default                -1
% 3.26/1.00  --bmc1_symbol_reachability              true
% 3.26/1.00  --bmc1_property_lemmas                  false
% 3.26/1.00  --bmc1_k_induction                      false
% 3.26/1.00  --bmc1_non_equiv_states                 false
% 3.26/1.00  --bmc1_deadlock                         false
% 3.26/1.00  --bmc1_ucm                              false
% 3.26/1.00  --bmc1_add_unsat_core                   none
% 3.26/1.00  --bmc1_unsat_core_children              false
% 3.26/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.26/1.00  --bmc1_out_stat                         full
% 3.26/1.00  --bmc1_ground_init                      false
% 3.26/1.00  --bmc1_pre_inst_next_state              false
% 3.26/1.00  --bmc1_pre_inst_state                   false
% 3.26/1.00  --bmc1_pre_inst_reach_state             false
% 3.26/1.00  --bmc1_out_unsat_core                   false
% 3.26/1.00  --bmc1_aig_witness_out                  false
% 3.26/1.00  --bmc1_verbose                          false
% 3.26/1.00  --bmc1_dump_clauses_tptp                false
% 3.26/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.26/1.00  --bmc1_dump_file                        -
% 3.26/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.26/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.26/1.00  --bmc1_ucm_extend_mode                  1
% 3.26/1.00  --bmc1_ucm_init_mode                    2
% 3.26/1.00  --bmc1_ucm_cone_mode                    none
% 3.26/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.26/1.00  --bmc1_ucm_relax_model                  4
% 3.26/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.26/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.26/1.00  --bmc1_ucm_layered_model                none
% 3.26/1.00  --bmc1_ucm_max_lemma_size               10
% 3.26/1.00  
% 3.26/1.00  ------ AIG Options
% 3.26/1.00  
% 3.26/1.00  --aig_mode                              false
% 3.26/1.00  
% 3.26/1.00  ------ Instantiation Options
% 3.26/1.00  
% 3.26/1.00  --instantiation_flag                    true
% 3.26/1.00  --inst_sos_flag                         false
% 3.26/1.00  --inst_sos_phase                        true
% 3.26/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.26/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.26/1.00  --inst_lit_sel_side                     none
% 3.26/1.00  --inst_solver_per_active                1400
% 3.26/1.00  --inst_solver_calls_frac                1.
% 3.26/1.00  --inst_passive_queue_type               priority_queues
% 3.26/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.26/1.00  --inst_passive_queues_freq              [25;2]
% 3.26/1.00  --inst_dismatching                      true
% 3.26/1.00  --inst_eager_unprocessed_to_passive     true
% 3.26/1.00  --inst_prop_sim_given                   true
% 3.26/1.00  --inst_prop_sim_new                     false
% 3.26/1.00  --inst_subs_new                         false
% 3.26/1.00  --inst_eq_res_simp                      false
% 3.26/1.00  --inst_subs_given                       false
% 3.26/1.00  --inst_orphan_elimination               true
% 3.26/1.00  --inst_learning_loop_flag               true
% 3.26/1.00  --inst_learning_start                   3000
% 3.26/1.00  --inst_learning_factor                  2
% 3.26/1.00  --inst_start_prop_sim_after_learn       3
% 3.26/1.00  --inst_sel_renew                        solver
% 3.26/1.00  --inst_lit_activity_flag                true
% 3.26/1.00  --inst_restr_to_given                   false
% 3.26/1.00  --inst_activity_threshold               500
% 3.26/1.00  --inst_out_proof                        true
% 3.26/1.00  
% 3.26/1.00  ------ Resolution Options
% 3.26/1.00  
% 3.26/1.00  --resolution_flag                       false
% 3.26/1.00  --res_lit_sel                           adaptive
% 3.26/1.00  --res_lit_sel_side                      none
% 3.26/1.00  --res_ordering                          kbo
% 3.26/1.00  --res_to_prop_solver                    active
% 3.26/1.00  --res_prop_simpl_new                    false
% 3.26/1.00  --res_prop_simpl_given                  true
% 3.26/1.00  --res_passive_queue_type                priority_queues
% 3.26/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.26/1.00  --res_passive_queues_freq               [15;5]
% 3.26/1.00  --res_forward_subs                      full
% 3.26/1.00  --res_backward_subs                     full
% 3.26/1.00  --res_forward_subs_resolution           true
% 3.26/1.00  --res_backward_subs_resolution          true
% 3.26/1.00  --res_orphan_elimination                true
% 3.26/1.00  --res_time_limit                        2.
% 3.26/1.00  --res_out_proof                         true
% 3.26/1.00  
% 3.26/1.00  ------ Superposition Options
% 3.26/1.00  
% 3.26/1.00  --superposition_flag                    true
% 3.26/1.00  --sup_passive_queue_type                priority_queues
% 3.26/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.26/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.26/1.00  --demod_completeness_check              fast
% 3.26/1.00  --demod_use_ground                      true
% 3.26/1.00  --sup_to_prop_solver                    passive
% 3.26/1.00  --sup_prop_simpl_new                    true
% 3.26/1.00  --sup_prop_simpl_given                  true
% 3.26/1.00  --sup_fun_splitting                     false
% 3.26/1.00  --sup_smt_interval                      50000
% 3.26/1.00  
% 3.26/1.00  ------ Superposition Simplification Setup
% 3.26/1.00  
% 3.26/1.00  --sup_indices_passive                   []
% 3.26/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.26/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.26/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_full_bw                           [BwDemod]
% 3.26/1.00  --sup_immed_triv                        [TrivRules]
% 3.26/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.26/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_immed_bw_main                     []
% 3.26/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.26/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.26/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.26/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.26/1.00  
% 3.26/1.00  ------ Combination Options
% 3.26/1.00  
% 3.26/1.00  --comb_res_mult                         3
% 3.26/1.00  --comb_sup_mult                         2
% 3.26/1.00  --comb_inst_mult                        10
% 3.26/1.00  
% 3.26/1.00  ------ Debug Options
% 3.26/1.00  
% 3.26/1.00  --dbg_backtrace                         false
% 3.26/1.00  --dbg_dump_prop_clauses                 false
% 3.26/1.00  --dbg_dump_prop_clauses_file            -
% 3.26/1.00  --dbg_out_stat                          false
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  ------ Proving...
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  % SZS status Theorem for theBenchmark.p
% 3.26/1.00  
% 3.26/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.26/1.00  
% 3.26/1.00  fof(f10,conjecture,(
% 3.26/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => r1_tarski(k2_tops_1(X0,X1),X1))))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f11,negated_conjecture,(
% 3.26/1.00    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => r1_tarski(k2_tops_1(X0,X1),X1))))),
% 3.26/1.00    inference(negated_conjecture,[],[f10])).
% 3.26/1.00  
% 3.26/1.00  fof(f21,plain,(
% 3.26/1.00    ? [X0] : (? [X1] : ((~r1_tarski(k2_tops_1(X0,X1),X1) & v4_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.26/1.00    inference(ennf_transformation,[],[f11])).
% 3.26/1.00  
% 3.26/1.00  fof(f22,plain,(
% 3.26/1.00    ? [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),X1) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.26/1.00    inference(flattening,[],[f21])).
% 3.26/1.00  
% 3.26/1.00  fof(f27,plain,(
% 3.26/1.00    ( ! [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),X1) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_tarski(k2_tops_1(X0,sK1),sK1) & v4_pre_topc(sK1,X0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.26/1.00    introduced(choice_axiom,[])).
% 3.26/1.00  
% 3.26/1.00  fof(f26,plain,(
% 3.26/1.00    ? [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),X1) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (~r1_tarski(k2_tops_1(sK0,X1),X1) & v4_pre_topc(X1,sK0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 3.26/1.00    introduced(choice_axiom,[])).
% 3.26/1.00  
% 3.26/1.00  fof(f28,plain,(
% 3.26/1.00    (~r1_tarski(k2_tops_1(sK0,sK1),sK1) & v4_pre_topc(sK1,sK0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 3.26/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f22,f27,f26])).
% 3.26/1.00  
% 3.26/1.00  fof(f42,plain,(
% 3.26/1.00    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.26/1.00    inference(cnf_transformation,[],[f28])).
% 3.26/1.00  
% 3.26/1.00  fof(f6,axiom,(
% 3.26/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f25,plain,(
% 3.26/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.26/1.00    inference(nnf_transformation,[],[f6])).
% 3.26/1.00  
% 3.26/1.00  fof(f36,plain,(
% 3.26/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.26/1.00    inference(cnf_transformation,[],[f25])).
% 3.26/1.00  
% 3.26/1.00  fof(f2,axiom,(
% 3.26/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f13,plain,(
% 3.26/1.00    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.26/1.00    inference(ennf_transformation,[],[f2])).
% 3.26/1.00  
% 3.26/1.00  fof(f32,plain,(
% 3.26/1.00    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.26/1.00    inference(cnf_transformation,[],[f13])).
% 3.26/1.00  
% 3.26/1.00  fof(f37,plain,(
% 3.26/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.26/1.00    inference(cnf_transformation,[],[f25])).
% 3.26/1.00  
% 3.26/1.00  fof(f8,axiom,(
% 3.26/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1)))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f19,plain,(
% 3.26/1.00    ! [X0] : (! [X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.26/1.00    inference(ennf_transformation,[],[f8])).
% 3.26/1.00  
% 3.26/1.00  fof(f39,plain,(
% 3.26/1.00    ( ! [X0,X1] : (k9_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.26/1.00    inference(cnf_transformation,[],[f19])).
% 3.26/1.00  
% 3.26/1.00  fof(f41,plain,(
% 3.26/1.00    l1_pre_topc(sK0)),
% 3.26/1.00    inference(cnf_transformation,[],[f28])).
% 3.26/1.00  
% 3.26/1.00  fof(f7,axiom,(
% 3.26/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f12,plain,(
% 3.26/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1)))),
% 3.26/1.00    inference(pure_predicate_removal,[],[f7])).
% 3.26/1.00  
% 3.26/1.00  fof(f17,plain,(
% 3.26/1.00    ! [X0] : (! [X1] : ((k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.26/1.00    inference(ennf_transformation,[],[f12])).
% 3.26/1.00  
% 3.26/1.00  fof(f18,plain,(
% 3.26/1.00    ! [X0] : (! [X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.26/1.00    inference(flattening,[],[f17])).
% 3.26/1.00  
% 3.26/1.00  fof(f38,plain,(
% 3.26/1.00    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.26/1.00    inference(cnf_transformation,[],[f18])).
% 3.26/1.00  
% 3.26/1.00  fof(f43,plain,(
% 3.26/1.00    v4_pre_topc(sK1,sK0)),
% 3.26/1.00    inference(cnf_transformation,[],[f28])).
% 3.26/1.00  
% 3.26/1.00  fof(f9,axiom,(
% 3.26/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1))))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f20,plain,(
% 3.26/1.00    ! [X0] : (! [X1] : (k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.26/1.00    inference(ennf_transformation,[],[f9])).
% 3.26/1.00  
% 3.26/1.00  fof(f40,plain,(
% 3.26/1.00    ( ! [X0,X1] : (k2_tops_1(X0,X1) = k2_tops_1(X0,k3_subset_1(u1_struct_0(X0),X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.26/1.00    inference(cnf_transformation,[],[f20])).
% 3.26/1.00  
% 3.26/1.00  fof(f4,axiom,(
% 3.26/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f15,plain,(
% 3.26/1.00    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.26/1.00    inference(ennf_transformation,[],[f4])).
% 3.26/1.00  
% 3.26/1.00  fof(f34,plain,(
% 3.26/1.00    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.26/1.00    inference(cnf_transformation,[],[f15])).
% 3.26/1.00  
% 3.26/1.00  fof(f5,axiom,(
% 3.26/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f16,plain,(
% 3.26/1.00    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.26/1.00    inference(ennf_transformation,[],[f5])).
% 3.26/1.00  
% 3.26/1.00  fof(f35,plain,(
% 3.26/1.00    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.26/1.00    inference(cnf_transformation,[],[f16])).
% 3.26/1.00  
% 3.26/1.00  fof(f1,axiom,(
% 3.26/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f23,plain,(
% 3.26/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.26/1.00    inference(nnf_transformation,[],[f1])).
% 3.26/1.00  
% 3.26/1.00  fof(f24,plain,(
% 3.26/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.26/1.00    inference(flattening,[],[f23])).
% 3.26/1.00  
% 3.26/1.00  fof(f29,plain,(
% 3.26/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.26/1.00    inference(cnf_transformation,[],[f24])).
% 3.26/1.00  
% 3.26/1.00  fof(f46,plain,(
% 3.26/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.26/1.00    inference(equality_resolution,[],[f29])).
% 3.26/1.00  
% 3.26/1.00  fof(f3,axiom,(
% 3.26/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 3.26/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.26/1.00  
% 3.26/1.00  fof(f14,plain,(
% 3.26/1.00    ! [X0,X1,X2] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.26/1.00    inference(ennf_transformation,[],[f3])).
% 3.26/1.00  
% 3.26/1.00  fof(f33,plain,(
% 3.26/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.26/1.00    inference(cnf_transformation,[],[f14])).
% 3.26/1.00  
% 3.26/1.00  fof(f44,plain,(
% 3.26/1.00    ~r1_tarski(k2_tops_1(sK0,sK1),sK1)),
% 3.26/1.00    inference(cnf_transformation,[],[f28])).
% 3.26/1.00  
% 3.26/1.00  cnf(c_14,negated_conjecture,
% 3.26/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.26/1.00      inference(cnf_transformation,[],[f42]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1018,plain,
% 3.26/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_8,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.26/1.00      inference(cnf_transformation,[],[f36]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1020,plain,
% 3.26/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.26/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1403,plain,
% 3.26/1.00      ( r1_tarski(sK1,u1_struct_0(sK0)) = iProver_top ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1018,c_1020]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_3,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.26/1.00      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 3.26/1.00      inference(cnf_transformation,[],[f32]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_7,plain,
% 3.26/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.26/1.00      inference(cnf_transformation,[],[f37]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_125,plain,
% 3.26/1.00      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 3.26/1.00      inference(prop_impl,[status(thm)],[c_7]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_126,plain,
% 3.26/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.26/1.00      inference(renaming,[status(thm)],[c_125]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_148,plain,
% 3.26/1.00      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
% 3.26/1.00      | ~ r1_tarski(X1,X0) ),
% 3.26/1.00      inference(bin_hyper_res,[status(thm)],[c_3,c_126]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1017,plain,
% 3.26/1.00      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) = iProver_top
% 3.26/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_148]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_10,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | ~ l1_pre_topc(X1)
% 3.26/1.00      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_15,negated_conjecture,
% 3.26/1.00      ( l1_pre_topc(sK0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_241,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | k9_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k2_tops_1(X1,X0)
% 3.26/1.00      | sK0 != X1 ),
% 3.26/1.00      inference(resolution_lifted,[status(thm)],[c_10,c_15]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_242,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.26/1.00      | k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0) ),
% 3.26/1.00      inference(unflattening,[status(thm)],[c_241]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1012,plain,
% 3.26/1.00      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k2_tops_1(sK0,X0)
% 3.26/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_242]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2129,plain,
% 3.26/1.00      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),X0)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0))
% 3.26/1.00      | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1017,c_1012]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2741,plain,
% 3.26/1.00      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)))) = k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1403,c_2129]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_9,plain,
% 3.26/1.00      ( ~ v4_pre_topc(X0,X1)
% 3.26/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | ~ l1_pre_topc(X1)
% 3.26/1.00      | k2_pre_topc(X1,X0) = X0 ),
% 3.26/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_13,negated_conjecture,
% 3.26/1.00      ( v4_pre_topc(sK1,sK0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f43]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_220,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | ~ l1_pre_topc(X1)
% 3.26/1.00      | k2_pre_topc(X1,X0) = X0
% 3.26/1.00      | sK1 != X0
% 3.26/1.00      | sK0 != X1 ),
% 3.26/1.00      inference(resolution_lifted,[status(thm)],[c_9,c_13]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_221,plain,
% 3.26/1.00      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.26/1.00      | ~ l1_pre_topc(sK0)
% 3.26/1.00      | k2_pre_topc(sK0,sK1) = sK1 ),
% 3.26/1.00      inference(unflattening,[status(thm)],[c_220]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_223,plain,
% 3.26/1.00      ( k2_pre_topc(sK0,sK1) = sK1 ),
% 3.26/1.00      inference(global_propositional_subsumption,
% 3.26/1.00                [status(thm)],
% 3.26/1.00                [c_221,c_15,c_14]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_11,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | ~ l1_pre_topc(X1)
% 3.26/1.00      | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_229,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.26/1.00      | k2_tops_1(X1,k3_subset_1(u1_struct_0(X1),X0)) = k2_tops_1(X1,X0)
% 3.26/1.00      | sK0 != X1 ),
% 3.26/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_15]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_230,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.26/1.00      | k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0) ),
% 3.26/1.00      inference(unflattening,[status(thm)],[c_229]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1013,plain,
% 3.26/1.00      ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),X0)) = k2_tops_1(sK0,X0)
% 3.26/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_230]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1165,plain,
% 3.26/1.00      ( k2_tops_1(sK0,k3_subset_1(u1_struct_0(sK0),sK1)) = k2_tops_1(sK0,sK1) ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1018,c_1013]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_5,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.26/1.00      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 3.26/1.00      inference(cnf_transformation,[],[f34]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_150,plain,
% 3.26/1.00      ( ~ r1_tarski(X0,X1) | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 3.26/1.00      inference(bin_hyper_res,[status(thm)],[c_5,c_126]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1015,plain,
% 3.26/1.00      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 3.26/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_150]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2028,plain,
% 3.26/1.00      ( k3_subset_1(u1_struct_0(sK0),k3_subset_1(u1_struct_0(sK0),sK1)) = sK1 ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1403,c_1015]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2743,plain,
% 3.26/1.00      ( k9_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),sK1) = k2_tops_1(sK0,sK1) ),
% 3.26/1.00      inference(light_normalisation,
% 3.26/1.00                [status(thm)],
% 3.26/1.00                [c_2741,c_223,c_1165,c_2028]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_6,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.26/1.00      | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f35]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_151,plain,
% 3.26/1.00      ( ~ r1_tarski(X0,X1) | k9_subset_1(X1,X2,X0) = k3_xboole_0(X2,X0) ),
% 3.26/1.00      inference(bin_hyper_res,[status(thm)],[c_6,c_126]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1014,plain,
% 3.26/1.00      ( k9_subset_1(X0,X1,X2) = k3_xboole_0(X1,X2)
% 3.26/1.00      | r1_tarski(X2,X0) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_151]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1644,plain,
% 3.26/1.00      ( k9_subset_1(u1_struct_0(sK0),X0,sK1) = k3_xboole_0(X0,sK1) ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1403,c_1014]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2839,plain,
% 3.26/1.00      ( k3_xboole_0(k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1)),sK1) = k2_tops_1(sK0,sK1) ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_2743,c_1644]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2,plain,
% 3.26/1.00      ( r1_tarski(X0,X0) ),
% 3.26/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1022,plain,
% 3.26/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1398,plain,
% 3.26/1.00      ( k9_subset_1(X0,X1,X0) = k3_xboole_0(X1,X0) ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1022,c_1014]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_4,plain,
% 3.26/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.26/1.00      | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 3.26/1.00      inference(cnf_transformation,[],[f33]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_149,plain,
% 3.26/1.00      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
% 3.26/1.00      | ~ r1_tarski(X2,X0) ),
% 3.26/1.00      inference(bin_hyper_res,[status(thm)],[c_4,c_126]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_1016,plain,
% 3.26/1.00      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) = iProver_top
% 3.26/1.00      | r1_tarski(X2,X0) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_149]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_2401,plain,
% 3.26/1.00      ( r1_tarski(X0,X1) != iProver_top
% 3.26/1.00      | r1_tarski(k9_subset_1(X1,X2,X0),X1) = iProver_top ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1016,c_1020]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_3246,plain,
% 3.26/1.00      ( r1_tarski(X0,X0) != iProver_top
% 3.26/1.00      | r1_tarski(k3_xboole_0(X1,X0),X0) = iProver_top ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_1398,c_2401]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_47,plain,
% 3.26/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_6228,plain,
% 3.26/1.00      ( r1_tarski(k3_xboole_0(X1,X0),X0) = iProver_top ),
% 3.26/1.00      inference(global_propositional_subsumption,
% 3.26/1.00                [status(thm)],
% 3.26/1.00                [c_3246,c_47]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_6229,plain,
% 3.26/1.00      ( r1_tarski(k3_xboole_0(X0,X1),X1) = iProver_top ),
% 3.26/1.00      inference(renaming,[status(thm)],[c_6228]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_6235,plain,
% 3.26/1.00      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
% 3.26/1.00      inference(superposition,[status(thm)],[c_2839,c_6229]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_12,negated_conjecture,
% 3.26/1.00      ( ~ r1_tarski(k2_tops_1(sK0,sK1),sK1) ),
% 3.26/1.00      inference(cnf_transformation,[],[f44]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(c_19,plain,
% 3.26/1.00      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) != iProver_top ),
% 3.26/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.26/1.00  
% 3.26/1.00  cnf(contradiction,plain,
% 3.26/1.00      ( $false ),
% 3.26/1.00      inference(minisat,[status(thm)],[c_6235,c_19]) ).
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.26/1.00  
% 3.26/1.00  ------                               Statistics
% 3.26/1.00  
% 3.26/1.00  ------ General
% 3.26/1.00  
% 3.26/1.00  abstr_ref_over_cycles:                  0
% 3.26/1.00  abstr_ref_under_cycles:                 0
% 3.26/1.00  gc_basic_clause_elim:                   0
% 3.26/1.00  forced_gc_time:                         0
% 3.26/1.00  parsing_time:                           0.008
% 3.26/1.00  unif_index_cands_time:                  0.
% 3.26/1.00  unif_index_add_time:                    0.
% 3.26/1.00  orderings_time:                         0.
% 3.26/1.00  out_proof_time:                         0.009
% 3.26/1.00  total_time:                             0.237
% 3.26/1.00  num_of_symbols:                         44
% 3.26/1.00  num_of_terms:                           6648
% 3.26/1.00  
% 3.26/1.00  ------ Preprocessing
% 3.26/1.00  
% 3.26/1.00  num_of_splits:                          0
% 3.26/1.00  num_of_split_atoms:                     0
% 3.26/1.00  num_of_reused_defs:                     0
% 3.26/1.00  num_eq_ax_congr_red:                    7
% 3.26/1.00  num_of_sem_filtered_clauses:            1
% 3.26/1.00  num_of_subtypes:                        0
% 3.26/1.00  monotx_restored_types:                  0
% 3.26/1.00  sat_num_of_epr_types:                   0
% 3.26/1.00  sat_num_of_non_cyclic_types:            0
% 3.26/1.00  sat_guarded_non_collapsed_types:        0
% 3.26/1.00  num_pure_diseq_elim:                    0
% 3.26/1.00  simp_replaced_by:                       0
% 3.26/1.00  res_preprocessed:                       75
% 3.26/1.00  prep_upred:                             0
% 3.26/1.00  prep_unflattend:                        26
% 3.26/1.00  smt_new_axioms:                         0
% 3.26/1.00  pred_elim_cands:                        2
% 3.26/1.00  pred_elim:                              2
% 3.26/1.00  pred_elim_cl:                           2
% 3.26/1.00  pred_elim_cycles:                       4
% 3.26/1.00  merged_defs:                            8
% 3.26/1.00  merged_defs_ncl:                        0
% 3.26/1.00  bin_hyper_res:                          12
% 3.26/1.00  prep_cycles:                            4
% 3.26/1.00  pred_elim_time:                         0.006
% 3.26/1.00  splitting_time:                         0.
% 3.26/1.00  sem_filter_time:                        0.
% 3.26/1.00  monotx_time:                            0.
% 3.26/1.00  subtype_inf_time:                       0.
% 3.26/1.00  
% 3.26/1.00  ------ Problem properties
% 3.26/1.00  
% 3.26/1.00  clauses:                                13
% 3.26/1.00  conjectures:                            2
% 3.26/1.00  epr:                                    2
% 3.26/1.00  horn:                                   13
% 3.26/1.00  ground:                                 3
% 3.26/1.00  unary:                                  4
% 3.26/1.00  binary:                                 8
% 3.26/1.00  lits:                                   23
% 3.26/1.00  lits_eq:                                6
% 3.26/1.00  fd_pure:                                0
% 3.26/1.00  fd_pseudo:                              0
% 3.26/1.00  fd_cond:                                0
% 3.26/1.00  fd_pseudo_cond:                         1
% 3.26/1.00  ac_symbols:                             0
% 3.26/1.00  
% 3.26/1.00  ------ Propositional Solver
% 3.26/1.00  
% 3.26/1.00  prop_solver_calls:                      29
% 3.26/1.00  prop_fast_solver_calls:                 515
% 3.26/1.00  smt_solver_calls:                       0
% 3.26/1.00  smt_fast_solver_calls:                  0
% 3.26/1.00  prop_num_of_clauses:                    2636
% 3.26/1.00  prop_preprocess_simplified:             5011
% 3.26/1.00  prop_fo_subsumed:                       9
% 3.26/1.00  prop_solver_time:                       0.
% 3.26/1.00  smt_solver_time:                        0.
% 3.26/1.00  smt_fast_solver_time:                   0.
% 3.26/1.00  prop_fast_solver_time:                  0.
% 3.26/1.00  prop_unsat_core_time:                   0.
% 3.26/1.00  
% 3.26/1.00  ------ QBF
% 3.26/1.00  
% 3.26/1.00  qbf_q_res:                              0
% 3.26/1.00  qbf_num_tautologies:                    0
% 3.26/1.00  qbf_prep_cycles:                        0
% 3.26/1.00  
% 3.26/1.00  ------ BMC1
% 3.26/1.00  
% 3.26/1.00  bmc1_current_bound:                     -1
% 3.26/1.00  bmc1_last_solved_bound:                 -1
% 3.26/1.00  bmc1_unsat_core_size:                   -1
% 3.26/1.00  bmc1_unsat_core_parents_size:           -1
% 3.26/1.00  bmc1_merge_next_fun:                    0
% 3.26/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.26/1.00  
% 3.26/1.00  ------ Instantiation
% 3.26/1.00  
% 3.26/1.00  inst_num_of_clauses:                    740
% 3.26/1.00  inst_num_in_passive:                    82
% 3.26/1.00  inst_num_in_active:                     359
% 3.26/1.00  inst_num_in_unprocessed:                299
% 3.26/1.00  inst_num_of_loops:                      370
% 3.26/1.00  inst_num_of_learning_restarts:          0
% 3.26/1.00  inst_num_moves_active_passive:          7
% 3.26/1.00  inst_lit_activity:                      0
% 3.26/1.00  inst_lit_activity_moves:                0
% 3.26/1.00  inst_num_tautologies:                   0
% 3.26/1.00  inst_num_prop_implied:                  0
% 3.26/1.00  inst_num_existing_simplified:           0
% 3.26/1.00  inst_num_eq_res_simplified:             0
% 3.26/1.00  inst_num_child_elim:                    0
% 3.26/1.00  inst_num_of_dismatching_blockings:      295
% 3.26/1.00  inst_num_of_non_proper_insts:           987
% 3.26/1.00  inst_num_of_duplicates:                 0
% 3.26/1.00  inst_inst_num_from_inst_to_res:         0
% 3.26/1.00  inst_dismatching_checking_time:         0.
% 3.26/1.00  
% 3.26/1.00  ------ Resolution
% 3.26/1.00  
% 3.26/1.00  res_num_of_clauses:                     0
% 3.26/1.00  res_num_in_passive:                     0
% 3.26/1.00  res_num_in_active:                      0
% 3.26/1.00  res_num_of_loops:                       79
% 3.26/1.00  res_forward_subset_subsumed:            75
% 3.26/1.00  res_backward_subset_subsumed:           2
% 3.26/1.00  res_forward_subsumed:                   0
% 3.26/1.00  res_backward_subsumed:                  0
% 3.26/1.00  res_forward_subsumption_resolution:     0
% 3.26/1.00  res_backward_subsumption_resolution:    0
% 3.26/1.00  res_clause_to_clause_subsumption:       557
% 3.26/1.00  res_orphan_elimination:                 0
% 3.26/1.00  res_tautology_del:                      95
% 3.26/1.00  res_num_eq_res_simplified:              0
% 3.26/1.00  res_num_sel_changes:                    0
% 3.26/1.00  res_moves_from_active_to_pass:          0
% 3.26/1.00  
% 3.26/1.00  ------ Superposition
% 3.26/1.00  
% 3.26/1.00  sup_time_total:                         0.
% 3.26/1.00  sup_time_generating:                    0.
% 3.26/1.00  sup_time_sim_full:                      0.
% 3.26/1.00  sup_time_sim_immed:                     0.
% 3.26/1.00  
% 3.26/1.00  sup_num_of_clauses:                     151
% 3.26/1.00  sup_num_in_active:                      72
% 3.26/1.00  sup_num_in_passive:                     79
% 3.26/1.00  sup_num_of_loops:                       73
% 3.26/1.00  sup_fw_superposition:                   106
% 3.26/1.00  sup_bw_superposition:                   114
% 3.26/1.00  sup_immediate_simplified:               83
% 3.26/1.00  sup_given_eliminated:                   0
% 3.26/1.00  comparisons_done:                       0
% 3.26/1.00  comparisons_avoided:                    0
% 3.26/1.00  
% 3.26/1.00  ------ Simplifications
% 3.26/1.00  
% 3.26/1.00  
% 3.26/1.00  sim_fw_subset_subsumed:                 10
% 3.26/1.00  sim_bw_subset_subsumed:                 1
% 3.26/1.00  sim_fw_subsumed:                        7
% 3.26/1.00  sim_bw_subsumed:                        0
% 3.26/1.00  sim_fw_subsumption_res:                 0
% 3.26/1.00  sim_bw_subsumption_res:                 0
% 3.26/1.00  sim_tautology_del:                      1
% 3.26/1.00  sim_eq_tautology_del:                   20
% 3.26/1.00  sim_eq_res_simp:                        0
% 3.26/1.00  sim_fw_demodulated:                     28
% 3.26/1.00  sim_bw_demodulated:                     23
% 3.26/1.00  sim_light_normalised:                   33
% 3.26/1.00  sim_joinable_taut:                      0
% 3.26/1.00  sim_joinable_simp:                      0
% 3.26/1.00  sim_ac_normalised:                      0
% 3.26/1.00  sim_smt_subsumption:                    0
% 3.26/1.00  
%------------------------------------------------------------------------------
