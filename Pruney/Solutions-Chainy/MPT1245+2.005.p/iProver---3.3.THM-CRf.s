%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:14:05 EST 2020

% Result     : Theorem 1.46s
% Output     : CNFRefutation 1.46s
% Verified   : 
% Statistics : Number of formulae       :  105 ( 286 expanded)
%              Number of clauses        :   65 ( 102 expanded)
%              Number of leaves         :   15 (  69 expanded)
%              Depth                    :   19
%              Number of atoms          :  236 ( 866 expanded)
%              Number of equality atoms :  123 ( 294 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f33,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f32,plain,(
    ! [X0] :
      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_pre_topc(X1,X0)
           => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v3_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1)))
          & v3_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1)))
          & v3_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1)))
          & v3_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( k2_pre_topc(X0,sK1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,sK1)))
        & v3_pre_topc(sK1,X0)
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1)))
            & v3_pre_topc(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( k2_pre_topc(sK0,X1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,X1)))
          & v3_pre_topc(X1,sK0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1)))
    & v3_pre_topc(sK1,sK0)
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f24,f26,f25])).

fof(f37,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f31,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
                & v2_pre_topc(X0) )
             => v3_pre_topc(X1,X0) )
            & ( v3_pre_topc(X1,X0)
             => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_pre_topc(X1,X0)
           => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) ) ) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
          | ~ v3_pre_topc(X1,X0)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f39,plain,(
    v3_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f38,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f27])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,X1) = k4_xboole_0(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f29,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1)))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1))))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1))))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f40,plain,(
    k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_5,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_4,plain,
    ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_154,plain,
    ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_5,c_4])).

cnf(c_12,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_187,plain,
    ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_154,c_12])).

cnf(c_188,plain,
    ( m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_187])).

cnf(c_254,plain,
    ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
    | k2_struct_0(sK0) != X1
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
    inference(resolution_lifted,[status(thm)],[c_2,c_188])).

cnf(c_255,plain,
    ( k7_subset_1(X0,k2_struct_0(sK0),X1) = k4_xboole_0(k2_struct_0(sK0),X1)
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_254])).

cnf(c_323,plain,
    ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k7_subset_1(X0_42,k2_struct_0(sK0),X1_42) = k4_xboole_0(k2_struct_0(sK0),X1_42) ),
    inference(subtyping,[status(esa)],[c_255])).

cnf(c_3,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_165,plain,
    ( ~ l1_pre_topc(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_5,c_3])).

cnf(c_182,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_165,c_12])).

cnf(c_183,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_182])).

cnf(c_327,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_183])).

cnf(c_396,plain,
    ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k7_subset_1(X0_42,k2_struct_0(sK0),X1_42) = k4_xboole_0(k2_struct_0(sK0),X1_42) ),
    inference(light_normalisation,[status(thm)],[c_323,c_327])).

cnf(c_602,plain,
    ( k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),X0_42) = k4_xboole_0(k2_struct_0(sK0),X0_42) ),
    inference(equality_resolution,[status(thm)],[c_396])).

cnf(c_6,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_10,negated_conjecture,
    ( v3_pre_topc(sK1,sK0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_145,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)
    | sK1 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_10])).

cnf(c_146,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(unflattening,[status(thm)],[c_145])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_148,plain,
    ( k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_146,c_12,c_11])).

cnf(c_328,plain,
    ( k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(subtyping,[status(esa)],[c_148])).

cnf(c_361,plain,
    ( k2_pre_topc(sK0,k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),sK1) ),
    inference(light_normalisation,[status(thm)],[c_328,c_327])).

cnf(c_768,plain,
    ( k2_pre_topc(sK0,k4_xboole_0(k2_struct_0(sK0),sK1)) = k4_xboole_0(k2_struct_0(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_602,c_361])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k4_xboole_0(X1,X0) = k3_subset_1(X1,X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_245,plain,
    ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_11])).

cnf(c_246,plain,
    ( k4_xboole_0(X0,sK1) = k3_subset_1(X0,sK1)
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_245])).

cnf(c_324,plain,
    ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k4_xboole_0(X0_42,sK1) = k3_subset_1(X0_42,sK1) ),
    inference(subtyping,[status(esa)],[c_246])).

cnf(c_369,plain,
    ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k4_xboole_0(X0_42,sK1) = k3_subset_1(X0_42,sK1) ),
    inference(light_normalisation,[status(thm)],[c_324,c_327])).

cnf(c_470,plain,
    ( k4_xboole_0(k2_struct_0(sK0),sK1) = k3_subset_1(k2_struct_0(sK0),sK1) ),
    inference(equality_resolution,[status(thm)],[c_369])).

cnf(c_769,plain,
    ( k2_pre_topc(sK0,k3_subset_1(k2_struct_0(sK0),sK1)) = k3_subset_1(k2_struct_0(sK0),sK1) ),
    inference(light_normalisation,[status(thm)],[c_768,c_470])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_206,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_12])).

cnf(c_207,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_206])).

cnf(c_281,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0)
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(u1_struct_0(sK0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_207])).

cnf(c_282,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
    inference(unflattening,[status(thm)],[c_281])).

cnf(c_320,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
    inference(subtyping,[status(esa)],[c_282])).

cnf(c_358,plain,
    ( k3_subset_1(k2_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(k2_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
    inference(light_normalisation,[status(thm)],[c_320,c_327])).

cnf(c_771,plain,
    ( k3_subset_1(k2_struct_0(sK0),k3_subset_1(k2_struct_0(sK0),sK1)) = k1_tops_1(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_769,c_358])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_236,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_11])).

cnf(c_237,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,sK1)) = sK1
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_236])).

cnf(c_325,plain,
    ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k3_subset_1(X0_42,k3_subset_1(X0_42,sK1)) = sK1 ),
    inference(subtyping,[status(esa)],[c_237])).

cnf(c_364,plain,
    ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
    | k3_subset_1(X0_42,k3_subset_1(X0_42,sK1)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_325,c_327])).

cnf(c_446,plain,
    ( k3_subset_1(k2_struct_0(sK0),k3_subset_1(k2_struct_0(sK0),sK1)) = sK1 ),
    inference(equality_resolution,[status(thm)],[c_364])).

cnf(c_772,plain,
    ( k1_tops_1(sK0,sK1) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_771,c_446])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k1_tops_1(X1,k2_pre_topc(X1,k1_tops_1(X1,X0)))) = k2_pre_topc(X1,k1_tops_1(X1,X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_194,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,k1_tops_1(X1,k2_pre_topc(X1,k1_tops_1(X1,X0)))) = k2_pre_topc(X1,k1_tops_1(X1,X0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_12])).

cnf(c_195,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0)))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0)) ),
    inference(unflattening,[status(thm)],[c_194])).

cnf(c_286,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0)))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0))
    | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(u1_struct_0(sK0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_195])).

cnf(c_287,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_286])).

cnf(c_319,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
    inference(subtyping,[status(esa)],[c_287])).

cnf(c_862,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) = k2_pre_topc(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_772,c_319])).

cnf(c_332,plain,
    ( X0_42 != X1_42
    | X2_42 != X1_42
    | X2_42 = X0_42 ),
    theory(equality)).

cnf(c_420,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) != X0_42
    | k2_pre_topc(sK0,sK1) != X0_42
    | k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
    inference(instantiation,[status(thm)],[c_332])).

cnf(c_429,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) != k2_pre_topc(sK0,sK1)
    | k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1)))
    | k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_420])).

cnf(c_9,negated_conjecture,
    ( k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_329,negated_conjecture,
    ( k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_330,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_346,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_330])).

cnf(c_338,plain,
    ( X0_42 != X1_42
    | k2_pre_topc(X0_43,X0_42) = k2_pre_topc(X0_43,X1_42) ),
    theory(equality)).

cnf(c_344,plain,
    ( k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_338])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_862,c_429,c_329,c_346,c_344])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:08:29 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.46/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.46/0.98  
% 1.46/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.46/0.98  
% 1.46/0.98  ------  iProver source info
% 1.46/0.98  
% 1.46/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.46/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.46/0.98  git: non_committed_changes: false
% 1.46/0.98  git: last_make_outside_of_git: false
% 1.46/0.98  
% 1.46/0.98  ------ 
% 1.46/0.98  
% 1.46/0.98  ------ Input Options
% 1.46/0.98  
% 1.46/0.98  --out_options                           all
% 1.46/0.98  --tptp_safe_out                         true
% 1.46/0.98  --problem_path                          ""
% 1.46/0.98  --include_path                          ""
% 1.46/0.98  --clausifier                            res/vclausify_rel
% 1.46/0.98  --clausifier_options                    --mode clausify
% 1.46/0.98  --stdin                                 false
% 1.46/0.98  --stats_out                             all
% 1.46/0.98  
% 1.46/0.98  ------ General Options
% 1.46/0.98  
% 1.46/0.98  --fof                                   false
% 1.46/0.98  --time_out_real                         305.
% 1.46/0.98  --time_out_virtual                      -1.
% 1.46/0.98  --symbol_type_check                     false
% 1.46/0.98  --clausify_out                          false
% 1.46/0.98  --sig_cnt_out                           false
% 1.46/0.98  --trig_cnt_out                          false
% 1.46/0.98  --trig_cnt_out_tolerance                1.
% 1.46/0.98  --trig_cnt_out_sk_spl                   false
% 1.46/0.98  --abstr_cl_out                          false
% 1.46/0.98  
% 1.46/0.98  ------ Global Options
% 1.46/0.98  
% 1.46/0.98  --schedule                              default
% 1.46/0.98  --add_important_lit                     false
% 1.46/0.98  --prop_solver_per_cl                    1000
% 1.46/0.98  --min_unsat_core                        false
% 1.46/0.98  --soft_assumptions                      false
% 1.46/0.98  --soft_lemma_size                       3
% 1.46/0.98  --prop_impl_unit_size                   0
% 1.46/0.98  --prop_impl_unit                        []
% 1.46/0.98  --share_sel_clauses                     true
% 1.46/0.98  --reset_solvers                         false
% 1.46/0.98  --bc_imp_inh                            [conj_cone]
% 1.46/0.98  --conj_cone_tolerance                   3.
% 1.46/0.98  --extra_neg_conj                        none
% 1.46/0.98  --large_theory_mode                     true
% 1.46/0.98  --prolific_symb_bound                   200
% 1.46/0.98  --lt_threshold                          2000
% 1.46/0.98  --clause_weak_htbl                      true
% 1.46/0.98  --gc_record_bc_elim                     false
% 1.46/0.98  
% 1.46/0.98  ------ Preprocessing Options
% 1.46/0.98  
% 1.46/0.98  --preprocessing_flag                    true
% 1.46/0.98  --time_out_prep_mult                    0.1
% 1.46/0.98  --splitting_mode                        input
% 1.46/0.98  --splitting_grd                         true
% 1.46/0.98  --splitting_cvd                         false
% 1.46/0.98  --splitting_cvd_svl                     false
% 1.46/0.98  --splitting_nvd                         32
% 1.46/0.98  --sub_typing                            true
% 1.46/0.98  --prep_gs_sim                           true
% 1.46/0.98  --prep_unflatten                        true
% 1.46/0.98  --prep_res_sim                          true
% 1.46/0.98  --prep_upred                            true
% 1.46/0.98  --prep_sem_filter                       exhaustive
% 1.46/0.98  --prep_sem_filter_out                   false
% 1.46/0.98  --pred_elim                             true
% 1.46/0.98  --res_sim_input                         true
% 1.46/0.98  --eq_ax_congr_red                       true
% 1.46/0.98  --pure_diseq_elim                       true
% 1.46/0.98  --brand_transform                       false
% 1.46/0.98  --non_eq_to_eq                          false
% 1.46/0.98  --prep_def_merge                        true
% 1.46/0.98  --prep_def_merge_prop_impl              false
% 1.46/0.99  --prep_def_merge_mbd                    true
% 1.46/0.99  --prep_def_merge_tr_red                 false
% 1.46/0.99  --prep_def_merge_tr_cl                  false
% 1.46/0.99  --smt_preprocessing                     true
% 1.46/0.99  --smt_ac_axioms                         fast
% 1.46/0.99  --preprocessed_out                      false
% 1.46/0.99  --preprocessed_stats                    false
% 1.46/0.99  
% 1.46/0.99  ------ Abstraction refinement Options
% 1.46/0.99  
% 1.46/0.99  --abstr_ref                             []
% 1.46/0.99  --abstr_ref_prep                        false
% 1.46/0.99  --abstr_ref_until_sat                   false
% 1.46/0.99  --abstr_ref_sig_restrict                funpre
% 1.46/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.46/0.99  --abstr_ref_under                       []
% 1.46/0.99  
% 1.46/0.99  ------ SAT Options
% 1.46/0.99  
% 1.46/0.99  --sat_mode                              false
% 1.46/0.99  --sat_fm_restart_options                ""
% 1.46/0.99  --sat_gr_def                            false
% 1.46/0.99  --sat_epr_types                         true
% 1.46/0.99  --sat_non_cyclic_types                  false
% 1.46/0.99  --sat_finite_models                     false
% 1.46/0.99  --sat_fm_lemmas                         false
% 1.46/0.99  --sat_fm_prep                           false
% 1.46/0.99  --sat_fm_uc_incr                        true
% 1.46/0.99  --sat_out_model                         small
% 1.46/0.99  --sat_out_clauses                       false
% 1.46/0.99  
% 1.46/0.99  ------ QBF Options
% 1.46/0.99  
% 1.46/0.99  --qbf_mode                              false
% 1.46/0.99  --qbf_elim_univ                         false
% 1.46/0.99  --qbf_dom_inst                          none
% 1.46/0.99  --qbf_dom_pre_inst                      false
% 1.46/0.99  --qbf_sk_in                             false
% 1.46/0.99  --qbf_pred_elim                         true
% 1.46/0.99  --qbf_split                             512
% 1.46/0.99  
% 1.46/0.99  ------ BMC1 Options
% 1.46/0.99  
% 1.46/0.99  --bmc1_incremental                      false
% 1.46/0.99  --bmc1_axioms                           reachable_all
% 1.46/0.99  --bmc1_min_bound                        0
% 1.46/0.99  --bmc1_max_bound                        -1
% 1.46/0.99  --bmc1_max_bound_default                -1
% 1.46/0.99  --bmc1_symbol_reachability              true
% 1.46/0.99  --bmc1_property_lemmas                  false
% 1.46/0.99  --bmc1_k_induction                      false
% 1.46/0.99  --bmc1_non_equiv_states                 false
% 1.46/0.99  --bmc1_deadlock                         false
% 1.46/0.99  --bmc1_ucm                              false
% 1.46/0.99  --bmc1_add_unsat_core                   none
% 1.46/0.99  --bmc1_unsat_core_children              false
% 1.46/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.46/0.99  --bmc1_out_stat                         full
% 1.46/0.99  --bmc1_ground_init                      false
% 1.46/0.99  --bmc1_pre_inst_next_state              false
% 1.46/0.99  --bmc1_pre_inst_state                   false
% 1.46/0.99  --bmc1_pre_inst_reach_state             false
% 1.46/0.99  --bmc1_out_unsat_core                   false
% 1.46/0.99  --bmc1_aig_witness_out                  false
% 1.46/0.99  --bmc1_verbose                          false
% 1.46/0.99  --bmc1_dump_clauses_tptp                false
% 1.46/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.46/0.99  --bmc1_dump_file                        -
% 1.46/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.46/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.46/0.99  --bmc1_ucm_extend_mode                  1
% 1.46/0.99  --bmc1_ucm_init_mode                    2
% 1.46/0.99  --bmc1_ucm_cone_mode                    none
% 1.46/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.46/0.99  --bmc1_ucm_relax_model                  4
% 1.46/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.46/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.46/0.99  --bmc1_ucm_layered_model                none
% 1.46/0.99  --bmc1_ucm_max_lemma_size               10
% 1.46/0.99  
% 1.46/0.99  ------ AIG Options
% 1.46/0.99  
% 1.46/0.99  --aig_mode                              false
% 1.46/0.99  
% 1.46/0.99  ------ Instantiation Options
% 1.46/0.99  
% 1.46/0.99  --instantiation_flag                    true
% 1.46/0.99  --inst_sos_flag                         false
% 1.46/0.99  --inst_sos_phase                        true
% 1.46/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.46/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.46/0.99  --inst_lit_sel_side                     num_symb
% 1.46/0.99  --inst_solver_per_active                1400
% 1.46/0.99  --inst_solver_calls_frac                1.
% 1.46/0.99  --inst_passive_queue_type               priority_queues
% 1.46/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.46/0.99  --inst_passive_queues_freq              [25;2]
% 1.46/0.99  --inst_dismatching                      true
% 1.46/0.99  --inst_eager_unprocessed_to_passive     true
% 1.46/0.99  --inst_prop_sim_given                   true
% 1.46/0.99  --inst_prop_sim_new                     false
% 1.46/0.99  --inst_subs_new                         false
% 1.46/0.99  --inst_eq_res_simp                      false
% 1.46/0.99  --inst_subs_given                       false
% 1.46/0.99  --inst_orphan_elimination               true
% 1.46/0.99  --inst_learning_loop_flag               true
% 1.46/0.99  --inst_learning_start                   3000
% 1.46/0.99  --inst_learning_factor                  2
% 1.46/0.99  --inst_start_prop_sim_after_learn       3
% 1.46/0.99  --inst_sel_renew                        solver
% 1.46/0.99  --inst_lit_activity_flag                true
% 1.46/0.99  --inst_restr_to_given                   false
% 1.46/0.99  --inst_activity_threshold               500
% 1.46/0.99  --inst_out_proof                        true
% 1.46/0.99  
% 1.46/0.99  ------ Resolution Options
% 1.46/0.99  
% 1.46/0.99  --resolution_flag                       true
% 1.46/0.99  --res_lit_sel                           adaptive
% 1.46/0.99  --res_lit_sel_side                      none
% 1.46/0.99  --res_ordering                          kbo
% 1.46/0.99  --res_to_prop_solver                    active
% 1.46/0.99  --res_prop_simpl_new                    false
% 1.46/0.99  --res_prop_simpl_given                  true
% 1.46/0.99  --res_passive_queue_type                priority_queues
% 1.46/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.46/0.99  --res_passive_queues_freq               [15;5]
% 1.46/0.99  --res_forward_subs                      full
% 1.46/0.99  --res_backward_subs                     full
% 1.46/0.99  --res_forward_subs_resolution           true
% 1.46/0.99  --res_backward_subs_resolution          true
% 1.46/0.99  --res_orphan_elimination                true
% 1.46/0.99  --res_time_limit                        2.
% 1.46/0.99  --res_out_proof                         true
% 1.46/0.99  
% 1.46/0.99  ------ Superposition Options
% 1.46/0.99  
% 1.46/0.99  --superposition_flag                    true
% 1.46/0.99  --sup_passive_queue_type                priority_queues
% 1.46/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.46/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.46/0.99  --demod_completeness_check              fast
% 1.46/0.99  --demod_use_ground                      true
% 1.46/0.99  --sup_to_prop_solver                    passive
% 1.46/0.99  --sup_prop_simpl_new                    true
% 1.46/0.99  --sup_prop_simpl_given                  true
% 1.46/0.99  --sup_fun_splitting                     false
% 1.46/0.99  --sup_smt_interval                      50000
% 1.46/0.99  
% 1.46/0.99  ------ Superposition Simplification Setup
% 1.46/0.99  
% 1.46/0.99  --sup_indices_passive                   []
% 1.46/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.46/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_full_bw                           [BwDemod]
% 1.46/0.99  --sup_immed_triv                        [TrivRules]
% 1.46/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.46/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_immed_bw_main                     []
% 1.46/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.46/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/0.99  
% 1.46/0.99  ------ Combination Options
% 1.46/0.99  
% 1.46/0.99  --comb_res_mult                         3
% 1.46/0.99  --comb_sup_mult                         2
% 1.46/0.99  --comb_inst_mult                        10
% 1.46/0.99  
% 1.46/0.99  ------ Debug Options
% 1.46/0.99  
% 1.46/0.99  --dbg_backtrace                         false
% 1.46/0.99  --dbg_dump_prop_clauses                 false
% 1.46/0.99  --dbg_dump_prop_clauses_file            -
% 1.46/0.99  --dbg_out_stat                          false
% 1.46/0.99  ------ Parsing...
% 1.46/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.46/0.99  
% 1.46/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e 
% 1.46/0.99  
% 1.46/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.46/0.99  
% 1.46/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 1.46/0.99  ------ Proving...
% 1.46/0.99  ------ Problem Properties 
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  clauses                                 13
% 1.46/0.99  conjectures                             1
% 1.46/0.99  EPR                                     0
% 1.46/0.99  Horn                                    13
% 1.46/0.99  unary                                   7
% 1.46/0.99  binary                                  6
% 1.46/0.99  lits                                    19
% 1.46/0.99  lits eq                                 19
% 1.46/0.99  fd_pure                                 0
% 1.46/0.99  fd_pseudo                               0
% 1.46/0.99  fd_cond                                 0
% 1.46/0.99  fd_pseudo_cond                          0
% 1.46/0.99  AC symbols                              0
% 1.46/0.99  
% 1.46/0.99  ------ Schedule dynamic 5 is on 
% 1.46/0.99  
% 1.46/0.99  ------ pure equality problem: resolution off 
% 1.46/0.99  
% 1.46/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  ------ 
% 1.46/0.99  Current options:
% 1.46/0.99  ------ 
% 1.46/0.99  
% 1.46/0.99  ------ Input Options
% 1.46/0.99  
% 1.46/0.99  --out_options                           all
% 1.46/0.99  --tptp_safe_out                         true
% 1.46/0.99  --problem_path                          ""
% 1.46/0.99  --include_path                          ""
% 1.46/0.99  --clausifier                            res/vclausify_rel
% 1.46/0.99  --clausifier_options                    --mode clausify
% 1.46/0.99  --stdin                                 false
% 1.46/0.99  --stats_out                             all
% 1.46/0.99  
% 1.46/0.99  ------ General Options
% 1.46/0.99  
% 1.46/0.99  --fof                                   false
% 1.46/0.99  --time_out_real                         305.
% 1.46/0.99  --time_out_virtual                      -1.
% 1.46/0.99  --symbol_type_check                     false
% 1.46/0.99  --clausify_out                          false
% 1.46/0.99  --sig_cnt_out                           false
% 1.46/0.99  --trig_cnt_out                          false
% 1.46/0.99  --trig_cnt_out_tolerance                1.
% 1.46/0.99  --trig_cnt_out_sk_spl                   false
% 1.46/0.99  --abstr_cl_out                          false
% 1.46/0.99  
% 1.46/0.99  ------ Global Options
% 1.46/0.99  
% 1.46/0.99  --schedule                              default
% 1.46/0.99  --add_important_lit                     false
% 1.46/0.99  --prop_solver_per_cl                    1000
% 1.46/0.99  --min_unsat_core                        false
% 1.46/0.99  --soft_assumptions                      false
% 1.46/0.99  --soft_lemma_size                       3
% 1.46/0.99  --prop_impl_unit_size                   0
% 1.46/0.99  --prop_impl_unit                        []
% 1.46/0.99  --share_sel_clauses                     true
% 1.46/0.99  --reset_solvers                         false
% 1.46/0.99  --bc_imp_inh                            [conj_cone]
% 1.46/0.99  --conj_cone_tolerance                   3.
% 1.46/0.99  --extra_neg_conj                        none
% 1.46/0.99  --large_theory_mode                     true
% 1.46/0.99  --prolific_symb_bound                   200
% 1.46/0.99  --lt_threshold                          2000
% 1.46/0.99  --clause_weak_htbl                      true
% 1.46/0.99  --gc_record_bc_elim                     false
% 1.46/0.99  
% 1.46/0.99  ------ Preprocessing Options
% 1.46/0.99  
% 1.46/0.99  --preprocessing_flag                    true
% 1.46/0.99  --time_out_prep_mult                    0.1
% 1.46/0.99  --splitting_mode                        input
% 1.46/0.99  --splitting_grd                         true
% 1.46/0.99  --splitting_cvd                         false
% 1.46/0.99  --splitting_cvd_svl                     false
% 1.46/0.99  --splitting_nvd                         32
% 1.46/0.99  --sub_typing                            true
% 1.46/0.99  --prep_gs_sim                           true
% 1.46/0.99  --prep_unflatten                        true
% 1.46/0.99  --prep_res_sim                          true
% 1.46/0.99  --prep_upred                            true
% 1.46/0.99  --prep_sem_filter                       exhaustive
% 1.46/0.99  --prep_sem_filter_out                   false
% 1.46/0.99  --pred_elim                             true
% 1.46/0.99  --res_sim_input                         true
% 1.46/0.99  --eq_ax_congr_red                       true
% 1.46/0.99  --pure_diseq_elim                       true
% 1.46/0.99  --brand_transform                       false
% 1.46/0.99  --non_eq_to_eq                          false
% 1.46/0.99  --prep_def_merge                        true
% 1.46/0.99  --prep_def_merge_prop_impl              false
% 1.46/0.99  --prep_def_merge_mbd                    true
% 1.46/0.99  --prep_def_merge_tr_red                 false
% 1.46/0.99  --prep_def_merge_tr_cl                  false
% 1.46/0.99  --smt_preprocessing                     true
% 1.46/0.99  --smt_ac_axioms                         fast
% 1.46/0.99  --preprocessed_out                      false
% 1.46/0.99  --preprocessed_stats                    false
% 1.46/0.99  
% 1.46/0.99  ------ Abstraction refinement Options
% 1.46/0.99  
% 1.46/0.99  --abstr_ref                             []
% 1.46/0.99  --abstr_ref_prep                        false
% 1.46/0.99  --abstr_ref_until_sat                   false
% 1.46/0.99  --abstr_ref_sig_restrict                funpre
% 1.46/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.46/0.99  --abstr_ref_under                       []
% 1.46/0.99  
% 1.46/0.99  ------ SAT Options
% 1.46/0.99  
% 1.46/0.99  --sat_mode                              false
% 1.46/0.99  --sat_fm_restart_options                ""
% 1.46/0.99  --sat_gr_def                            false
% 1.46/0.99  --sat_epr_types                         true
% 1.46/0.99  --sat_non_cyclic_types                  false
% 1.46/0.99  --sat_finite_models                     false
% 1.46/0.99  --sat_fm_lemmas                         false
% 1.46/0.99  --sat_fm_prep                           false
% 1.46/0.99  --sat_fm_uc_incr                        true
% 1.46/0.99  --sat_out_model                         small
% 1.46/0.99  --sat_out_clauses                       false
% 1.46/0.99  
% 1.46/0.99  ------ QBF Options
% 1.46/0.99  
% 1.46/0.99  --qbf_mode                              false
% 1.46/0.99  --qbf_elim_univ                         false
% 1.46/0.99  --qbf_dom_inst                          none
% 1.46/0.99  --qbf_dom_pre_inst                      false
% 1.46/0.99  --qbf_sk_in                             false
% 1.46/0.99  --qbf_pred_elim                         true
% 1.46/0.99  --qbf_split                             512
% 1.46/0.99  
% 1.46/0.99  ------ BMC1 Options
% 1.46/0.99  
% 1.46/0.99  --bmc1_incremental                      false
% 1.46/0.99  --bmc1_axioms                           reachable_all
% 1.46/0.99  --bmc1_min_bound                        0
% 1.46/0.99  --bmc1_max_bound                        -1
% 1.46/0.99  --bmc1_max_bound_default                -1
% 1.46/0.99  --bmc1_symbol_reachability              true
% 1.46/0.99  --bmc1_property_lemmas                  false
% 1.46/0.99  --bmc1_k_induction                      false
% 1.46/0.99  --bmc1_non_equiv_states                 false
% 1.46/0.99  --bmc1_deadlock                         false
% 1.46/0.99  --bmc1_ucm                              false
% 1.46/0.99  --bmc1_add_unsat_core                   none
% 1.46/0.99  --bmc1_unsat_core_children              false
% 1.46/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.46/0.99  --bmc1_out_stat                         full
% 1.46/0.99  --bmc1_ground_init                      false
% 1.46/0.99  --bmc1_pre_inst_next_state              false
% 1.46/0.99  --bmc1_pre_inst_state                   false
% 1.46/0.99  --bmc1_pre_inst_reach_state             false
% 1.46/0.99  --bmc1_out_unsat_core                   false
% 1.46/0.99  --bmc1_aig_witness_out                  false
% 1.46/0.99  --bmc1_verbose                          false
% 1.46/0.99  --bmc1_dump_clauses_tptp                false
% 1.46/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.46/0.99  --bmc1_dump_file                        -
% 1.46/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.46/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.46/0.99  --bmc1_ucm_extend_mode                  1
% 1.46/0.99  --bmc1_ucm_init_mode                    2
% 1.46/0.99  --bmc1_ucm_cone_mode                    none
% 1.46/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.46/0.99  --bmc1_ucm_relax_model                  4
% 1.46/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.46/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.46/0.99  --bmc1_ucm_layered_model                none
% 1.46/0.99  --bmc1_ucm_max_lemma_size               10
% 1.46/0.99  
% 1.46/0.99  ------ AIG Options
% 1.46/0.99  
% 1.46/0.99  --aig_mode                              false
% 1.46/0.99  
% 1.46/0.99  ------ Instantiation Options
% 1.46/0.99  
% 1.46/0.99  --instantiation_flag                    true
% 1.46/0.99  --inst_sos_flag                         false
% 1.46/0.99  --inst_sos_phase                        true
% 1.46/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.46/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.46/0.99  --inst_lit_sel_side                     none
% 1.46/0.99  --inst_solver_per_active                1400
% 1.46/0.99  --inst_solver_calls_frac                1.
% 1.46/0.99  --inst_passive_queue_type               priority_queues
% 1.46/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.46/0.99  --inst_passive_queues_freq              [25;2]
% 1.46/0.99  --inst_dismatching                      true
% 1.46/0.99  --inst_eager_unprocessed_to_passive     true
% 1.46/0.99  --inst_prop_sim_given                   true
% 1.46/0.99  --inst_prop_sim_new                     false
% 1.46/0.99  --inst_subs_new                         false
% 1.46/0.99  --inst_eq_res_simp                      false
% 1.46/0.99  --inst_subs_given                       false
% 1.46/0.99  --inst_orphan_elimination               true
% 1.46/0.99  --inst_learning_loop_flag               true
% 1.46/0.99  --inst_learning_start                   3000
% 1.46/0.99  --inst_learning_factor                  2
% 1.46/0.99  --inst_start_prop_sim_after_learn       3
% 1.46/0.99  --inst_sel_renew                        solver
% 1.46/0.99  --inst_lit_activity_flag                true
% 1.46/0.99  --inst_restr_to_given                   false
% 1.46/0.99  --inst_activity_threshold               500
% 1.46/0.99  --inst_out_proof                        true
% 1.46/0.99  
% 1.46/0.99  ------ Resolution Options
% 1.46/0.99  
% 1.46/0.99  --resolution_flag                       false
% 1.46/0.99  --res_lit_sel                           adaptive
% 1.46/0.99  --res_lit_sel_side                      none
% 1.46/0.99  --res_ordering                          kbo
% 1.46/0.99  --res_to_prop_solver                    active
% 1.46/0.99  --res_prop_simpl_new                    false
% 1.46/0.99  --res_prop_simpl_given                  true
% 1.46/0.99  --res_passive_queue_type                priority_queues
% 1.46/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.46/0.99  --res_passive_queues_freq               [15;5]
% 1.46/0.99  --res_forward_subs                      full
% 1.46/0.99  --res_backward_subs                     full
% 1.46/0.99  --res_forward_subs_resolution           true
% 1.46/0.99  --res_backward_subs_resolution          true
% 1.46/0.99  --res_orphan_elimination                true
% 1.46/0.99  --res_time_limit                        2.
% 1.46/0.99  --res_out_proof                         true
% 1.46/0.99  
% 1.46/0.99  ------ Superposition Options
% 1.46/0.99  
% 1.46/0.99  --superposition_flag                    true
% 1.46/0.99  --sup_passive_queue_type                priority_queues
% 1.46/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.46/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.46/0.99  --demod_completeness_check              fast
% 1.46/0.99  --demod_use_ground                      true
% 1.46/0.99  --sup_to_prop_solver                    passive
% 1.46/0.99  --sup_prop_simpl_new                    true
% 1.46/0.99  --sup_prop_simpl_given                  true
% 1.46/0.99  --sup_fun_splitting                     false
% 1.46/0.99  --sup_smt_interval                      50000
% 1.46/0.99  
% 1.46/0.99  ------ Superposition Simplification Setup
% 1.46/0.99  
% 1.46/0.99  --sup_indices_passive                   []
% 1.46/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.46/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.46/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_full_bw                           [BwDemod]
% 1.46/0.99  --sup_immed_triv                        [TrivRules]
% 1.46/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.46/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_immed_bw_main                     []
% 1.46/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.46/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.46/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.46/0.99  
% 1.46/0.99  ------ Combination Options
% 1.46/0.99  
% 1.46/0.99  --comb_res_mult                         3
% 1.46/0.99  --comb_sup_mult                         2
% 1.46/0.99  --comb_inst_mult                        10
% 1.46/0.99  
% 1.46/0.99  ------ Debug Options
% 1.46/0.99  
% 1.46/0.99  --dbg_backtrace                         false
% 1.46/0.99  --dbg_dump_prop_clauses                 false
% 1.46/0.99  --dbg_dump_prop_clauses_file            -
% 1.46/0.99  --dbg_out_stat                          false
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  ------ Proving...
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  % SZS status Theorem for theBenchmark.p
% 1.46/0.99  
% 1.46/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.46/0.99  
% 1.46/0.99  fof(f3,axiom,(
% 1.46/0.99    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f15,plain,(
% 1.46/0.99    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/0.99    inference(ennf_transformation,[],[f3])).
% 1.46/0.99  
% 1.46/0.99  fof(f30,plain,(
% 1.46/0.99    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/0.99    inference(cnf_transformation,[],[f15])).
% 1.46/0.99  
% 1.46/0.99  fof(f6,axiom,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f18,plain,(
% 1.46/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f6])).
% 1.46/0.99  
% 1.46/0.99  fof(f33,plain,(
% 1.46/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f18])).
% 1.46/0.99  
% 1.46/0.99  fof(f5,axiom,(
% 1.46/0.99    ! [X0] : (l1_struct_0(X0) => m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f17,plain,(
% 1.46/0.99    ! [X0] : (m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_struct_0(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f5])).
% 1.46/0.99  
% 1.46/0.99  fof(f32,plain,(
% 1.46/0.99    ( ! [X0] : (m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0))) | ~l1_struct_0(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f17])).
% 1.46/0.99  
% 1.46/0.99  fof(f10,conjecture,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))))))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f11,negated_conjecture,(
% 1.46/0.99    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))))))),
% 1.46/0.99    inference(negated_conjecture,[],[f10])).
% 1.46/0.99  
% 1.46/0.99  fof(f23,plain,(
% 1.46/0.99    ? [X0] : (? [X1] : ((k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) & v3_pre_topc(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f11])).
% 1.46/0.99  
% 1.46/0.99  fof(f24,plain,(
% 1.46/0.99    ? [X0] : (? [X1] : (k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) & v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.46/0.99    inference(flattening,[],[f23])).
% 1.46/0.99  
% 1.46/0.99  fof(f26,plain,(
% 1.46/0.99    ( ! [X0] : (? [X1] : (k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) & v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (k2_pre_topc(X0,sK1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,sK1))) & v3_pre_topc(sK1,X0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.46/0.99    introduced(choice_axiom,[])).
% 1.46/0.99  
% 1.46/0.99  fof(f25,plain,(
% 1.46/0.99    ? [X0] : (? [X1] : (k2_pre_topc(X0,X1) != k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,X1))) & v3_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (k2_pre_topc(sK0,X1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,X1))) & v3_pre_topc(X1,sK0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 1.46/0.99    introduced(choice_axiom,[])).
% 1.46/0.99  
% 1.46/0.99  fof(f27,plain,(
% 1.46/0.99    (k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) & v3_pre_topc(sK1,sK0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 1.46/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f24,f26,f25])).
% 1.46/0.99  
% 1.46/0.99  fof(f37,plain,(
% 1.46/0.99    l1_pre_topc(sK0)),
% 1.46/0.99    inference(cnf_transformation,[],[f27])).
% 1.46/0.99  
% 1.46/0.99  fof(f4,axiom,(
% 1.46/0.99    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f16,plain,(
% 1.46/0.99    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f4])).
% 1.46/0.99  
% 1.46/0.99  fof(f31,plain,(
% 1.46/0.99    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f16])).
% 1.46/0.99  
% 1.46/0.99  fof(f7,axiom,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) & v2_pre_topc(X0)) => v3_pre_topc(X1,X0)) & (v3_pre_topc(X1,X0) => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1))))))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f12,plain,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) => k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)))))),
% 1.46/0.99    inference(pure_predicate_removal,[],[f7])).
% 1.46/0.99  
% 1.46/0.99  fof(f19,plain,(
% 1.46/0.99    ! [X0] : (! [X1] : ((k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f12])).
% 1.46/0.99  
% 1.46/0.99  fof(f20,plain,(
% 1.46/0.99    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.46/0.99    inference(flattening,[],[f19])).
% 1.46/0.99  
% 1.46/0.99  fof(f34,plain,(
% 1.46/0.99    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1) = k2_pre_topc(X0,k7_subset_1(u1_struct_0(X0),k2_struct_0(X0),X1)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f20])).
% 1.46/0.99  
% 1.46/0.99  fof(f39,plain,(
% 1.46/0.99    v3_pre_topc(sK1,sK0)),
% 1.46/0.99    inference(cnf_transformation,[],[f27])).
% 1.46/0.99  
% 1.46/0.99  fof(f38,plain,(
% 1.46/0.99    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.46/0.99    inference(cnf_transformation,[],[f27])).
% 1.46/0.99  
% 1.46/0.99  fof(f1,axiom,(
% 1.46/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,X1) = k4_xboole_0(X0,X1))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f13,plain,(
% 1.46/0.99    ! [X0,X1] : (k3_subset_1(X0,X1) = k4_xboole_0(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/0.99    inference(ennf_transformation,[],[f1])).
% 1.46/0.99  
% 1.46/0.99  fof(f28,plain,(
% 1.46/0.99    ( ! [X0,X1] : (k3_subset_1(X0,X1) = k4_xboole_0(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/0.99    inference(cnf_transformation,[],[f13])).
% 1.46/0.99  
% 1.46/0.99  fof(f8,axiom,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f21,plain,(
% 1.46/0.99    ! [X0] : (! [X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f8])).
% 1.46/0.99  
% 1.46/0.99  fof(f35,plain,(
% 1.46/0.99    ( ! [X0,X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f21])).
% 1.46/0.99  
% 1.46/0.99  fof(f2,axiom,(
% 1.46/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f14,plain,(
% 1.46/0.99    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.46/0.99    inference(ennf_transformation,[],[f2])).
% 1.46/0.99  
% 1.46/0.99  fof(f29,plain,(
% 1.46/0.99    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.46/0.99    inference(cnf_transformation,[],[f14])).
% 1.46/0.99  
% 1.46/0.99  fof(f9,axiom,(
% 1.46/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1))))))),
% 1.46/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.46/0.99  
% 1.46/0.99  fof(f22,plain,(
% 1.46/0.99    ! [X0] : (! [X1] : (k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.46/0.99    inference(ennf_transformation,[],[f9])).
% 1.46/0.99  
% 1.46/0.99  fof(f36,plain,(
% 1.46/0.99    ( ! [X0,X1] : (k2_pre_topc(X0,k1_tops_1(X0,X1)) = k2_pre_topc(X0,k1_tops_1(X0,k2_pre_topc(X0,k1_tops_1(X0,X1)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.46/0.99    inference(cnf_transformation,[],[f22])).
% 1.46/0.99  
% 1.46/0.99  fof(f40,plain,(
% 1.46/0.99    k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1)))),
% 1.46/0.99    inference(cnf_transformation,[],[f27])).
% 1.46/0.99  
% 1.46/0.99  cnf(c_2,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/0.99      | k7_subset_1(X1,X0,X2) = k4_xboole_0(X0,X2) ),
% 1.46/0.99      inference(cnf_transformation,[],[f30]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_5,plain,
% 1.46/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_4,plain,
% 1.46/0.99      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.46/0.99      | ~ l1_struct_0(X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f32]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_154,plain,
% 1.46/0.99      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.46/0.99      | ~ l1_pre_topc(X0) ),
% 1.46/0.99      inference(resolution,[status(thm)],[c_5,c_4]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_12,negated_conjecture,
% 1.46/0.99      ( l1_pre_topc(sK0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_187,plain,
% 1.46/0.99      ( m1_subset_1(k2_struct_0(X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.46/0.99      | sK0 != X0 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_154,c_12]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_188,plain,
% 1.46/0.99      ( m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_187]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_254,plain,
% 1.46/0.99      ( k7_subset_1(X0,X1,X2) = k4_xboole_0(X1,X2)
% 1.46/0.99      | k2_struct_0(sK0) != X1
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_188]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_255,plain,
% 1.46/0.99      ( k7_subset_1(X0,k2_struct_0(sK0),X1) = k4_xboole_0(k2_struct_0(sK0),X1)
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_254]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_323,plain,
% 1.46/0.99      ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k7_subset_1(X0_42,k2_struct_0(sK0),X1_42) = k4_xboole_0(k2_struct_0(sK0),X1_42) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_255]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_3,plain,
% 1.46/0.99      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f31]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_165,plain,
% 1.46/0.99      ( ~ l1_pre_topc(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 1.46/0.99      inference(resolution,[status(thm)],[c_5,c_3]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_182,plain,
% 1.46/0.99      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_165,c_12]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_183,plain,
% 1.46/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_182]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_327,plain,
% 1.46/0.99      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_183]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_396,plain,
% 1.46/0.99      ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k7_subset_1(X0_42,k2_struct_0(sK0),X1_42) = k4_xboole_0(k2_struct_0(sK0),X1_42) ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_323,c_327]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_602,plain,
% 1.46/0.99      ( k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),X0_42) = k4_xboole_0(k2_struct_0(sK0),X0_42) ),
% 1.46/0.99      inference(equality_resolution,[status(thm)],[c_396]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_6,plain,
% 1.46/0.99      ( ~ v3_pre_topc(X0,X1)
% 1.46/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | ~ l1_pre_topc(X1)
% 1.46/0.99      | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_10,negated_conjecture,
% 1.46/0.99      ( v3_pre_topc(sK1,sK0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_145,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | ~ l1_pre_topc(X1)
% 1.46/0.99      | k2_pre_topc(X1,k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)) = k7_subset_1(u1_struct_0(X1),k2_struct_0(X1),X0)
% 1.46/0.99      | sK1 != X0
% 1.46/0.99      | sK0 != X1 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_10]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_146,plain,
% 1.46/0.99      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.46/0.99      | ~ l1_pre_topc(sK0)
% 1.46/0.99      | k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_145]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_11,negated_conjecture,
% 1.46/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.46/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_148,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(global_propositional_subsumption,
% 1.46/0.99                [status(thm)],
% 1.46/0.99                [c_146,c_12,c_11]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_328,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(u1_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_148]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_361,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),sK1)) = k7_subset_1(k2_struct_0(sK0),k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_328,c_327]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_768,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k4_xboole_0(k2_struct_0(sK0),sK1)) = k4_xboole_0(k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(demodulation,[status(thm)],[c_602,c_361]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_0,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/0.99      | k4_xboole_0(X1,X0) = k3_subset_1(X1,X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f28]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_245,plain,
% 1.46/0.99      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0)
% 1.46/0.99      | sK1 != X1 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_11]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_246,plain,
% 1.46/0.99      ( k4_xboole_0(X0,sK1) = k3_subset_1(X0,sK1)
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_245]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_324,plain,
% 1.46/0.99      ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k4_xboole_0(X0_42,sK1) = k3_subset_1(X0_42,sK1) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_246]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_369,plain,
% 1.46/0.99      ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k4_xboole_0(X0_42,sK1) = k3_subset_1(X0_42,sK1) ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_324,c_327]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_470,plain,
% 1.46/0.99      ( k4_xboole_0(k2_struct_0(sK0),sK1) = k3_subset_1(k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(equality_resolution,[status(thm)],[c_369]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_769,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k3_subset_1(k2_struct_0(sK0),sK1)) = k3_subset_1(k2_struct_0(sK0),sK1) ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_768,c_470]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_7,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | ~ l1_pre_topc(X1)
% 1.46/0.99      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
% 1.46/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_206,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
% 1.46/0.99      | sK0 != X1 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_12]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_207,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.46/0.99      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_206]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_281,plain,
% 1.46/0.99      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0)
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(u1_struct_0(sK0))
% 1.46/0.99      | sK1 != X0 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_207]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_282,plain,
% 1.46/0.99      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_281]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_320,plain,
% 1.46/0.99      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_282]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_358,plain,
% 1.46/0.99      ( k3_subset_1(k2_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(k2_struct_0(sK0),sK1))) = k1_tops_1(sK0,sK1) ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_320,c_327]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_771,plain,
% 1.46/0.99      ( k3_subset_1(k2_struct_0(sK0),k3_subset_1(k2_struct_0(sK0),sK1)) = k1_tops_1(sK0,sK1) ),
% 1.46/0.99      inference(demodulation,[status(thm)],[c_769,c_358]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_1,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.46/0.99      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 1.46/0.99      inference(cnf_transformation,[],[f29]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_236,plain,
% 1.46/0.99      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0)
% 1.46/0.99      | sK1 != X1 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_11]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_237,plain,
% 1.46/0.99      ( k3_subset_1(X0,k3_subset_1(X0,sK1)) = sK1
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_236]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_325,plain,
% 1.46/0.99      ( k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k3_subset_1(X0_42,k3_subset_1(X0_42,sK1)) = sK1 ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_237]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_364,plain,
% 1.46/0.99      ( k1_zfmisc_1(k2_struct_0(sK0)) != k1_zfmisc_1(X0_42)
% 1.46/0.99      | k3_subset_1(X0_42,k3_subset_1(X0_42,sK1)) = sK1 ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_325,c_327]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_446,plain,
% 1.46/0.99      ( k3_subset_1(k2_struct_0(sK0),k3_subset_1(k2_struct_0(sK0),sK1)) = sK1 ),
% 1.46/0.99      inference(equality_resolution,[status(thm)],[c_364]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_772,plain,
% 1.46/0.99      ( k1_tops_1(sK0,sK1) = sK1 ),
% 1.46/0.99      inference(light_normalisation,[status(thm)],[c_771,c_446]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_8,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | ~ l1_pre_topc(X1)
% 1.46/0.99      | k2_pre_topc(X1,k1_tops_1(X1,k2_pre_topc(X1,k1_tops_1(X1,X0)))) = k2_pre_topc(X1,k1_tops_1(X1,X0)) ),
% 1.46/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_194,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.46/0.99      | k2_pre_topc(X1,k1_tops_1(X1,k2_pre_topc(X1,k1_tops_1(X1,X0)))) = k2_pre_topc(X1,k1_tops_1(X1,X0))
% 1.46/0.99      | sK0 != X1 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_12]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_195,plain,
% 1.46/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.46/0.99      | k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0)))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0)) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_194]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_286,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0)))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0))
% 1.46/0.99      | k1_zfmisc_1(u1_struct_0(sK0)) != k1_zfmisc_1(u1_struct_0(sK0))
% 1.46/0.99      | sK1 != X0 ),
% 1.46/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_195]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_287,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
% 1.46/0.99      inference(unflattening,[status(thm)],[c_286]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_319,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_287]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_862,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) = k2_pre_topc(sK0,sK1) ),
% 1.46/0.99      inference(demodulation,[status(thm)],[c_772,c_319]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_332,plain,
% 1.46/0.99      ( X0_42 != X1_42 | X2_42 != X1_42 | X2_42 = X0_42 ),
% 1.46/0.99      theory(equality) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_420,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) != X0_42
% 1.46/0.99      | k2_pre_topc(sK0,sK1) != X0_42
% 1.46/0.99      | k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
% 1.46/0.99      inference(instantiation,[status(thm)],[c_332]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_429,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) != k2_pre_topc(sK0,sK1)
% 1.46/0.99      | k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1)))
% 1.46/0.99      | k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,sK1) ),
% 1.46/0.99      inference(instantiation,[status(thm)],[c_420]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_9,negated_conjecture,
% 1.46/0.99      ( k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
% 1.46/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_329,negated_conjecture,
% 1.46/0.99      ( k2_pre_topc(sK0,sK1) != k2_pre_topc(sK0,k1_tops_1(sK0,k2_pre_topc(sK0,sK1))) ),
% 1.46/0.99      inference(subtyping,[status(esa)],[c_9]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_330,plain,( X0_42 = X0_42 ),theory(equality) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_346,plain,
% 1.46/0.99      ( sK1 = sK1 ),
% 1.46/0.99      inference(instantiation,[status(thm)],[c_330]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_338,plain,
% 1.46/0.99      ( X0_42 != X1_42
% 1.46/0.99      | k2_pre_topc(X0_43,X0_42) = k2_pre_topc(X0_43,X1_42) ),
% 1.46/0.99      theory(equality) ).
% 1.46/0.99  
% 1.46/0.99  cnf(c_344,plain,
% 1.46/0.99      ( k2_pre_topc(sK0,sK1) = k2_pre_topc(sK0,sK1) | sK1 != sK1 ),
% 1.46/0.99      inference(instantiation,[status(thm)],[c_338]) ).
% 1.46/0.99  
% 1.46/0.99  cnf(contradiction,plain,
% 1.46/0.99      ( $false ),
% 1.46/0.99      inference(minisat,[status(thm)],[c_862,c_429,c_329,c_346,c_344]) ).
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.46/0.99  
% 1.46/0.99  ------                               Statistics
% 1.46/0.99  
% 1.46/0.99  ------ General
% 1.46/0.99  
% 1.46/0.99  abstr_ref_over_cycles:                  0
% 1.46/0.99  abstr_ref_under_cycles:                 0
% 1.46/0.99  gc_basic_clause_elim:                   0
% 1.46/0.99  forced_gc_time:                         0
% 1.46/0.99  parsing_time:                           0.008
% 1.46/0.99  unif_index_cands_time:                  0.
% 1.46/0.99  unif_index_add_time:                    0.
% 1.46/0.99  orderings_time:                         0.
% 1.46/0.99  out_proof_time:                         0.01
% 1.46/0.99  total_time:                             0.066
% 1.46/0.99  num_of_symbols:                         48
% 1.46/0.99  num_of_terms:                           1122
% 1.46/0.99  
% 1.46/0.99  ------ Preprocessing
% 1.46/0.99  
% 1.46/0.99  num_of_splits:                          0
% 1.46/0.99  num_of_split_atoms:                     0
% 1.46/0.99  num_of_reused_defs:                     0
% 1.46/0.99  num_eq_ax_congr_red:                    9
% 1.46/0.99  num_of_sem_filtered_clauses:            0
% 1.46/0.99  num_of_subtypes:                        3
% 1.46/0.99  monotx_restored_types:                  0
% 1.46/0.99  sat_num_of_epr_types:                   0
% 1.46/0.99  sat_num_of_non_cyclic_types:            0
% 1.46/0.99  sat_guarded_non_collapsed_types:        0
% 1.46/0.99  num_pure_diseq_elim:                    0
% 1.46/0.99  simp_replaced_by:                       0
% 1.46/0.99  res_preprocessed:                       36
% 1.46/0.99  prep_upred:                             0
% 1.46/0.99  prep_unflattend:                        16
% 1.46/0.99  smt_new_axioms:                         0
% 1.46/0.99  pred_elim_cands:                        4
% 1.46/0.99  pred_elim:                              4
% 1.46/0.99  pred_elim_cl:                           0
% 1.46/0.99  pred_elim_cycles:                       5
% 1.46/0.99  merged_defs:                            0
% 1.46/0.99  merged_defs_ncl:                        0
% 1.46/0.99  bin_hyper_res:                          0
% 1.46/0.99  prep_cycles:                            2
% 1.46/0.99  pred_elim_time:                         0.003
% 1.46/0.99  splitting_time:                         0.
% 1.46/0.99  sem_filter_time:                        0.
% 1.46/0.99  monotx_time:                            0.
% 1.46/0.99  subtype_inf_time:                       0.
% 1.46/0.99  
% 1.46/0.99  ------ Problem properties
% 1.46/0.99  
% 1.46/0.99  clauses:                                13
% 1.46/0.99  conjectures:                            1
% 1.46/0.99  epr:                                    0
% 1.46/0.99  horn:                                   13
% 1.46/0.99  ground:                                 7
% 1.46/0.99  unary:                                  7
% 1.46/0.99  binary:                                 6
% 1.46/0.99  lits:                                   19
% 1.46/0.99  lits_eq:                                19
% 1.46/0.99  fd_pure:                                0
% 1.46/0.99  fd_pseudo:                              0
% 1.46/0.99  fd_cond:                                0
% 1.46/0.99  fd_pseudo_cond:                         0
% 1.46/0.99  ac_symbols:                             0
% 1.46/0.99  
% 1.46/0.99  ------ Propositional Solver
% 1.46/0.99  
% 1.46/0.99  prop_solver_calls:                      20
% 1.46/0.99  prop_fast_solver_calls:                 195
% 1.46/0.99  smt_solver_calls:                       0
% 1.46/0.99  smt_fast_solver_calls:                  0
% 1.46/0.99  prop_num_of_clauses:                    347
% 1.46/0.99  prop_preprocess_simplified:             1107
% 1.46/0.99  prop_fo_subsumed:                       2
% 1.46/0.99  prop_solver_time:                       0.
% 1.46/0.99  smt_solver_time:                        0.
% 1.46/0.99  smt_fast_solver_time:                   0.
% 1.46/0.99  prop_fast_solver_time:                  0.
% 1.46/0.99  prop_unsat_core_time:                   0.
% 1.46/0.99  
% 1.46/0.99  ------ QBF
% 1.46/0.99  
% 1.46/0.99  qbf_q_res:                              0
% 1.46/0.99  qbf_num_tautologies:                    0
% 1.46/0.99  qbf_prep_cycles:                        0
% 1.46/0.99  
% 1.46/0.99  ------ BMC1
% 1.46/0.99  
% 1.46/0.99  bmc1_current_bound:                     -1
% 1.46/0.99  bmc1_last_solved_bound:                 -1
% 1.46/0.99  bmc1_unsat_core_size:                   -1
% 1.46/0.99  bmc1_unsat_core_parents_size:           -1
% 1.46/0.99  bmc1_merge_next_fun:                    0
% 1.46/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.46/0.99  
% 1.46/0.99  ------ Instantiation
% 1.46/0.99  
% 1.46/0.99  inst_num_of_clauses:                    166
% 1.46/0.99  inst_num_in_passive:                    4
% 1.46/0.99  inst_num_in_active:                     103
% 1.46/0.99  inst_num_in_unprocessed:                59
% 1.46/0.99  inst_num_of_loops:                      110
% 1.46/0.99  inst_num_of_learning_restarts:          0
% 1.46/0.99  inst_num_moves_active_passive:          3
% 1.46/0.99  inst_lit_activity:                      0
% 1.46/0.99  inst_lit_activity_moves:                0
% 1.46/0.99  inst_num_tautologies:                   0
% 1.46/0.99  inst_num_prop_implied:                  0
% 1.46/0.99  inst_num_existing_simplified:           0
% 1.46/0.99  inst_num_eq_res_simplified:             0
% 1.46/0.99  inst_num_child_elim:                    0
% 1.46/0.99  inst_num_of_dismatching_blockings:      21
% 1.46/0.99  inst_num_of_non_proper_insts:           151
% 1.46/0.99  inst_num_of_duplicates:                 0
% 1.46/0.99  inst_inst_num_from_inst_to_res:         0
% 1.46/0.99  inst_dismatching_checking_time:         0.
% 1.46/0.99  
% 1.46/0.99  ------ Resolution
% 1.46/0.99  
% 1.46/0.99  res_num_of_clauses:                     0
% 1.46/0.99  res_num_in_passive:                     0
% 1.46/0.99  res_num_in_active:                      0
% 1.46/0.99  res_num_of_loops:                       38
% 1.46/0.99  res_forward_subset_subsumed:            45
% 1.46/0.99  res_backward_subset_subsumed:           2
% 1.46/0.99  res_forward_subsumed:                   0
% 1.46/0.99  res_backward_subsumed:                  0
% 1.46/0.99  res_forward_subsumption_resolution:     0
% 1.46/0.99  res_backward_subsumption_resolution:    0
% 1.46/0.99  res_clause_to_clause_subsumption:       13
% 1.46/0.99  res_orphan_elimination:                 0
% 1.46/0.99  res_tautology_del:                      31
% 1.46/0.99  res_num_eq_res_simplified:              0
% 1.46/0.99  res_num_sel_changes:                    0
% 1.46/0.99  res_moves_from_active_to_pass:          0
% 1.46/0.99  
% 1.46/0.99  ------ Superposition
% 1.46/0.99  
% 1.46/0.99  sup_time_total:                         0.
% 1.46/0.99  sup_time_generating:                    0.
% 1.46/0.99  sup_time_sim_full:                      0.
% 1.46/0.99  sup_time_sim_immed:                     0.
% 1.46/0.99  
% 1.46/0.99  sup_num_of_clauses:                     19
% 1.46/0.99  sup_num_in_active:                      17
% 1.46/0.99  sup_num_in_passive:                     2
% 1.46/0.99  sup_num_of_loops:                       20
% 1.46/0.99  sup_fw_superposition:                   0
% 1.46/0.99  sup_bw_superposition:                   0
% 1.46/0.99  sup_immediate_simplified:               2
% 1.46/0.99  sup_given_eliminated:                   0
% 1.46/0.99  comparisons_done:                       0
% 1.46/0.99  comparisons_avoided:                    0
% 1.46/0.99  
% 1.46/0.99  ------ Simplifications
% 1.46/0.99  
% 1.46/0.99  
% 1.46/0.99  sim_fw_subset_subsumed:                 0
% 1.46/0.99  sim_bw_subset_subsumed:                 0
% 1.46/0.99  sim_fw_subsumed:                        0
% 1.46/0.99  sim_bw_subsumed:                        0
% 1.46/0.99  sim_fw_subsumption_res:                 0
% 1.46/0.99  sim_bw_subsumption_res:                 0
% 1.46/0.99  sim_tautology_del:                      0
% 1.46/0.99  sim_eq_tautology_del:                   0
% 1.46/0.99  sim_eq_res_simp:                        0
% 1.46/0.99  sim_fw_demodulated:                     0
% 1.46/0.99  sim_bw_demodulated:                     3
% 1.46/0.99  sim_light_normalised:                   11
% 1.46/0.99  sim_joinable_taut:                      0
% 1.46/0.99  sim_joinable_simp:                      0
% 1.46/0.99  sim_ac_normalised:                      0
% 1.46/0.99  sim_smt_subsumption:                    0
% 1.46/0.99  
%------------------------------------------------------------------------------
