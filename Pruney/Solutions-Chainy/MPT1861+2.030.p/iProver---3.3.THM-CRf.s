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
% DateTime   : Thu Dec  3 12:25:53 EST 2020

% Result     : Theorem 3.30s
% Output     : CNFRefutation 3.30s
% Verified   : 
% Statistics : Number of formulae       :  131 ( 761 expanded)
%              Number of clauses        :   76 ( 238 expanded)
%              Number of leaves         :   22 ( 198 expanded)
%              Depth                    :   21
%              Number of atoms          :  309 (2128 expanded)
%              Number of equality atoms :  140 ( 481 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f41,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f8,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f12,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f12])).

fof(f2,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f7])).

fof(f48,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f33,f34])).

fof(f49,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f32,f48])).

fof(f50,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f31,f49])).

fof(f51,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f30,f50])).

fof(f52,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f29,f51])).

fof(f53,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f39,f52])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f38,f53])).

fof(f15,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( v2_tex_2(X2,X0)
                  | v2_tex_2(X1,X0) )
               => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( ( v2_tex_2(X2,X0)
                    | v2_tex_2(X1,X0) )
                 => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & ( v2_tex_2(X2,X0)
                | v2_tex_2(X1,X0) )
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & ( v2_tex_2(X2,X0)
                | v2_tex_2(X1,X0) )
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
          & ( v2_tex_2(X2,X0)
            | v2_tex_2(X1,X0) )
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,sK2),X0)
        & ( v2_tex_2(sK2,X0)
          | v2_tex_2(X1,X0) )
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & ( v2_tex_2(X2,X0)
                | v2_tex_2(X1,X0) )
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),sK1,X2),X0)
            & ( v2_tex_2(X2,X0)
              | v2_tex_2(sK1,X0) )
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
                & ( v2_tex_2(X2,X0)
                  | v2_tex_2(X1,X0) )
                & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),X1,X2),sK0)
              & ( v2_tex_2(X2,sK0)
                | v2_tex_2(X1,sK0) )
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    & ( v2_tex_2(sK2,sK0)
      | v2_tex_2(sK1,sK0) )
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f22,f26,f25,f24])).

fof(f45,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f27])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( v2_tex_2(X1,X0)
                  & r1_tarski(X2,X1) )
               => v2_tex_2(X2,X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_tex_2(X2,X0)
              | ~ v2_tex_2(X1,X0)
              | ~ r1_tarski(X2,X1)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_tex_2(X2,X0)
              | ~ v2_tex_2(X1,X0)
              | ~ r1_tarski(X2,X1)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( v2_tex_2(X2,X0)
      | ~ v2_tex_2(X1,X0)
      | ~ r1_tarski(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f43,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f46,plain,
    ( v2_tex_2(sK2,sK0)
    | v2_tex_2(sK1,sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f47,plain,(
    ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f1,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f54,plain,(
    ! [X0,X1] : r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0) ),
    inference(definition_unfolding,[],[f28,f53])).

fof(f44,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_5,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_93,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_5])).

cnf(c_94,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_93])).

cnf(c_116,plain,
    ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
    | ~ r1_tarski(X2,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_3,c_94])).

cnf(c_801,plain,
    ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) = iProver_top
    | r1_tarski(X2,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_116])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_806,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2674,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k9_subset_1(X1,X2,X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_801,c_806])).

cnf(c_2,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_808,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_816,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_808,c_1])).

cnf(c_1272,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_816,c_806])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k1_setfam_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_117,plain,
    ( ~ r1_tarski(X0,X1)
    | k1_setfam_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
    inference(bin_hyper_res,[status(thm)],[c_4,c_94])).

cnf(c_800,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k9_subset_1(X2,X0,X1)
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_117])).

cnf(c_1874,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k9_subset_1(X1,X0,X1) ),
    inference(superposition,[status(thm)],[c_1272,c_800])).

cnf(c_10,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_803,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1270,plain,
    ( r1_tarski(sK2,u1_struct_0(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_803,c_806])).

cnf(c_1454,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,sK2)) = k9_subset_1(u1_struct_0(sK0),X0,sK2) ),
    inference(superposition,[status(thm)],[c_1270,c_800])).

cnf(c_4385,plain,
    ( k9_subset_1(u1_struct_0(sK0),X0,sK2) = k9_subset_1(sK2,X0,sK2) ),
    inference(demodulation,[status(thm)],[c_1874,c_1454])).

cnf(c_4991,plain,
    ( r1_tarski(k9_subset_1(sK2,X0,sK2),u1_struct_0(sK0)) = iProver_top
    | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4385,c_2674])).

cnf(c_5898,plain,
    ( r1_tarski(k9_subset_1(sK2,X0,sK2),u1_struct_0(sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4991,c_1270])).

cnf(c_807,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_7,plain,
    ( ~ v2_tex_2(X0,X1)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_12,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_171,plain,
    ( ~ v2_tex_2(X0,X1)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_12])).

cnf(c_172,plain,
    ( ~ v2_tex_2(X0,sK0)
    | v2_tex_2(X1,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(X1,X0) ),
    inference(unflattening,[status(thm)],[c_171])).

cnf(c_799,plain,
    ( v2_tex_2(X0,sK0) != iProver_top
    | v2_tex_2(X1,sK0) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_172])).

cnf(c_990,plain,
    ( v2_tex_2(X0,sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_803,c_799])).

cnf(c_1417,plain,
    ( v2_tex_2(X0,sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_807,c_990])).

cnf(c_5909,plain,
    ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_5898,c_1417])).

cnf(c_2676,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
    | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_801,c_990])).

cnf(c_9,negated_conjecture,
    ( v2_tex_2(sK2,sK0)
    | v2_tex_2(sK1,sK0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_16,plain,
    ( v2_tex_2(sK2,sK0) = iProver_top
    | v2_tex_2(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_8,negated_conjecture,
    ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_17,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_0,plain,
    ( r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_809,plain,
    ( r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1839,plain,
    ( r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,sK2),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1454,c_809])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_802,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_991,plain,
    ( v2_tex_2(X0,sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_802,c_799])).

cnf(c_2675,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top
    | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
    | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_801,c_991])).

cnf(c_3192,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top
    | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1839,c_2675])).

cnf(c_3281,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
    | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
    | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2676,c_16,c_17,c_1270,c_3192])).

cnf(c_4993,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,sK2),sK0) = iProver_top
    | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top
    | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4385,c_3281])).

cnf(c_5010,plain,
    ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
    | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top
    | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4993,c_4385])).

cnf(c_9352,plain,
    ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
    | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5909,c_1270,c_5010])).

cnf(c_9360,plain,
    ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
    | r1_tarski(sK2,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2674,c_9352])).

cnf(c_938,plain,
    ( k2_subset_1(sK2) = sK2 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_491,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_944,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_491])).

cnf(c_1223,plain,
    ( m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1224,plain,
    ( m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1223])).

cnf(c_495,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_1598,plain,
    ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_495])).

cnf(c_492,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1085,plain,
    ( X0 != X1
    | sK2 != X1
    | sK2 = X0 ),
    inference(instantiation,[status(thm)],[c_492])).

cnf(c_1514,plain,
    ( X0 != sK2
    | sK2 = X0
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1085])).

cnf(c_1921,plain,
    ( k2_subset_1(sK2) != sK2
    | sK2 = k2_subset_1(sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1514])).

cnf(c_496,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_889,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(k2_subset_1(X2),k1_zfmisc_1(X2))
    | X1 != k1_zfmisc_1(X2)
    | X0 != k2_subset_1(X2) ),
    inference(instantiation,[status(thm)],[c_496])).

cnf(c_956,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))
    | X0 != k2_subset_1(X1)
    | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_889])).

cnf(c_1323,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK2))
    | ~ m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2))
    | X0 != k2_subset_1(sK2)
    | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2) ),
    inference(instantiation,[status(thm)],[c_956])).

cnf(c_3138,plain,
    ( ~ m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2))
    | m1_subset_1(sK2,k1_zfmisc_1(sK2))
    | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2)
    | sK2 != k2_subset_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1323])).

cnf(c_3139,plain,
    ( k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2)
    | sK2 != k2_subset_1(sK2)
    | m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3138])).

cnf(c_1072,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK2))
    | r1_tarski(X0,sK2) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_4140,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(sK2))
    | r1_tarski(sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_1072])).

cnf(c_4141,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK2)) != iProver_top
    | r1_tarski(sK2,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4140])).

cnf(c_10792,plain,
    ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9360,c_938,c_944,c_1224,c_1598,c_1921,c_3139,c_4141])).

cnf(c_805,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_4977,plain,
    ( v2_tex_2(k9_subset_1(sK2,sK1,sK2),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4385,c_805])).

cnf(c_10800,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_10792,c_4977])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n021.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 18:48:04 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.30/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.30/1.00  
% 3.30/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.30/1.00  
% 3.30/1.00  ------  iProver source info
% 3.30/1.00  
% 3.30/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.30/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.30/1.00  git: non_committed_changes: false
% 3.30/1.00  git: last_make_outside_of_git: false
% 3.30/1.00  
% 3.30/1.00  ------ 
% 3.30/1.00  
% 3.30/1.00  ------ Input Options
% 3.30/1.00  
% 3.30/1.00  --out_options                           all
% 3.30/1.00  --tptp_safe_out                         true
% 3.30/1.00  --problem_path                          ""
% 3.30/1.00  --include_path                          ""
% 3.30/1.00  --clausifier                            res/vclausify_rel
% 3.30/1.00  --clausifier_options                    --mode clausify
% 3.30/1.00  --stdin                                 false
% 3.30/1.00  --stats_out                             all
% 3.30/1.00  
% 3.30/1.00  ------ General Options
% 3.30/1.00  
% 3.30/1.00  --fof                                   false
% 3.30/1.00  --time_out_real                         305.
% 3.30/1.00  --time_out_virtual                      -1.
% 3.30/1.00  --symbol_type_check                     false
% 3.30/1.00  --clausify_out                          false
% 3.30/1.00  --sig_cnt_out                           false
% 3.30/1.00  --trig_cnt_out                          false
% 3.30/1.00  --trig_cnt_out_tolerance                1.
% 3.30/1.00  --trig_cnt_out_sk_spl                   false
% 3.30/1.00  --abstr_cl_out                          false
% 3.30/1.00  
% 3.30/1.00  ------ Global Options
% 3.30/1.00  
% 3.30/1.00  --schedule                              default
% 3.30/1.00  --add_important_lit                     false
% 3.30/1.00  --prop_solver_per_cl                    1000
% 3.30/1.00  --min_unsat_core                        false
% 3.30/1.00  --soft_assumptions                      false
% 3.30/1.00  --soft_lemma_size                       3
% 3.30/1.00  --prop_impl_unit_size                   0
% 3.30/1.00  --prop_impl_unit                        []
% 3.30/1.00  --share_sel_clauses                     true
% 3.30/1.00  --reset_solvers                         false
% 3.30/1.00  --bc_imp_inh                            [conj_cone]
% 3.30/1.00  --conj_cone_tolerance                   3.
% 3.30/1.00  --extra_neg_conj                        none
% 3.30/1.00  --large_theory_mode                     true
% 3.30/1.00  --prolific_symb_bound                   200
% 3.30/1.00  --lt_threshold                          2000
% 3.30/1.00  --clause_weak_htbl                      true
% 3.30/1.00  --gc_record_bc_elim                     false
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing Options
% 3.30/1.00  
% 3.30/1.00  --preprocessing_flag                    true
% 3.30/1.00  --time_out_prep_mult                    0.1
% 3.30/1.00  --splitting_mode                        input
% 3.30/1.00  --splitting_grd                         true
% 3.30/1.00  --splitting_cvd                         false
% 3.30/1.00  --splitting_cvd_svl                     false
% 3.30/1.00  --splitting_nvd                         32
% 3.30/1.00  --sub_typing                            true
% 3.30/1.00  --prep_gs_sim                           true
% 3.30/1.00  --prep_unflatten                        true
% 3.30/1.00  --prep_res_sim                          true
% 3.30/1.00  --prep_upred                            true
% 3.30/1.00  --prep_sem_filter                       exhaustive
% 3.30/1.00  --prep_sem_filter_out                   false
% 3.30/1.00  --pred_elim                             true
% 3.30/1.00  --res_sim_input                         true
% 3.30/1.00  --eq_ax_congr_red                       true
% 3.30/1.00  --pure_diseq_elim                       true
% 3.30/1.00  --brand_transform                       false
% 3.30/1.00  --non_eq_to_eq                          false
% 3.30/1.00  --prep_def_merge                        true
% 3.30/1.00  --prep_def_merge_prop_impl              false
% 3.30/1.00  --prep_def_merge_mbd                    true
% 3.30/1.00  --prep_def_merge_tr_red                 false
% 3.30/1.00  --prep_def_merge_tr_cl                  false
% 3.30/1.00  --smt_preprocessing                     true
% 3.30/1.00  --smt_ac_axioms                         fast
% 3.30/1.00  --preprocessed_out                      false
% 3.30/1.00  --preprocessed_stats                    false
% 3.30/1.00  
% 3.30/1.00  ------ Abstraction refinement Options
% 3.30/1.00  
% 3.30/1.00  --abstr_ref                             []
% 3.30/1.00  --abstr_ref_prep                        false
% 3.30/1.00  --abstr_ref_until_sat                   false
% 3.30/1.00  --abstr_ref_sig_restrict                funpre
% 3.30/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.30/1.00  --abstr_ref_under                       []
% 3.30/1.00  
% 3.30/1.00  ------ SAT Options
% 3.30/1.00  
% 3.30/1.00  --sat_mode                              false
% 3.30/1.00  --sat_fm_restart_options                ""
% 3.30/1.00  --sat_gr_def                            false
% 3.30/1.00  --sat_epr_types                         true
% 3.30/1.00  --sat_non_cyclic_types                  false
% 3.30/1.00  --sat_finite_models                     false
% 3.30/1.00  --sat_fm_lemmas                         false
% 3.30/1.00  --sat_fm_prep                           false
% 3.30/1.00  --sat_fm_uc_incr                        true
% 3.30/1.00  --sat_out_model                         small
% 3.30/1.00  --sat_out_clauses                       false
% 3.30/1.00  
% 3.30/1.00  ------ QBF Options
% 3.30/1.00  
% 3.30/1.00  --qbf_mode                              false
% 3.30/1.00  --qbf_elim_univ                         false
% 3.30/1.00  --qbf_dom_inst                          none
% 3.30/1.00  --qbf_dom_pre_inst                      false
% 3.30/1.00  --qbf_sk_in                             false
% 3.30/1.00  --qbf_pred_elim                         true
% 3.30/1.00  --qbf_split                             512
% 3.30/1.00  
% 3.30/1.00  ------ BMC1 Options
% 3.30/1.00  
% 3.30/1.00  --bmc1_incremental                      false
% 3.30/1.00  --bmc1_axioms                           reachable_all
% 3.30/1.00  --bmc1_min_bound                        0
% 3.30/1.00  --bmc1_max_bound                        -1
% 3.30/1.00  --bmc1_max_bound_default                -1
% 3.30/1.00  --bmc1_symbol_reachability              true
% 3.30/1.00  --bmc1_property_lemmas                  false
% 3.30/1.00  --bmc1_k_induction                      false
% 3.30/1.00  --bmc1_non_equiv_states                 false
% 3.30/1.00  --bmc1_deadlock                         false
% 3.30/1.00  --bmc1_ucm                              false
% 3.30/1.00  --bmc1_add_unsat_core                   none
% 3.30/1.00  --bmc1_unsat_core_children              false
% 3.30/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.30/1.00  --bmc1_out_stat                         full
% 3.30/1.00  --bmc1_ground_init                      false
% 3.30/1.00  --bmc1_pre_inst_next_state              false
% 3.30/1.00  --bmc1_pre_inst_state                   false
% 3.30/1.00  --bmc1_pre_inst_reach_state             false
% 3.30/1.00  --bmc1_out_unsat_core                   false
% 3.30/1.00  --bmc1_aig_witness_out                  false
% 3.30/1.00  --bmc1_verbose                          false
% 3.30/1.00  --bmc1_dump_clauses_tptp                false
% 3.30/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.30/1.00  --bmc1_dump_file                        -
% 3.30/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.30/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.30/1.00  --bmc1_ucm_extend_mode                  1
% 3.30/1.00  --bmc1_ucm_init_mode                    2
% 3.30/1.00  --bmc1_ucm_cone_mode                    none
% 3.30/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.30/1.00  --bmc1_ucm_relax_model                  4
% 3.30/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.30/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.30/1.00  --bmc1_ucm_layered_model                none
% 3.30/1.00  --bmc1_ucm_max_lemma_size               10
% 3.30/1.00  
% 3.30/1.00  ------ AIG Options
% 3.30/1.00  
% 3.30/1.00  --aig_mode                              false
% 3.30/1.00  
% 3.30/1.00  ------ Instantiation Options
% 3.30/1.00  
% 3.30/1.00  --instantiation_flag                    true
% 3.30/1.00  --inst_sos_flag                         false
% 3.30/1.00  --inst_sos_phase                        true
% 3.30/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.30/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.30/1.00  --inst_lit_sel_side                     num_symb
% 3.30/1.00  --inst_solver_per_active                1400
% 3.30/1.00  --inst_solver_calls_frac                1.
% 3.30/1.00  --inst_passive_queue_type               priority_queues
% 3.30/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.30/1.00  --inst_passive_queues_freq              [25;2]
% 3.30/1.00  --inst_dismatching                      true
% 3.30/1.00  --inst_eager_unprocessed_to_passive     true
% 3.30/1.00  --inst_prop_sim_given                   true
% 3.30/1.00  --inst_prop_sim_new                     false
% 3.30/1.00  --inst_subs_new                         false
% 3.30/1.00  --inst_eq_res_simp                      false
% 3.30/1.00  --inst_subs_given                       false
% 3.30/1.00  --inst_orphan_elimination               true
% 3.30/1.00  --inst_learning_loop_flag               true
% 3.30/1.00  --inst_learning_start                   3000
% 3.30/1.00  --inst_learning_factor                  2
% 3.30/1.00  --inst_start_prop_sim_after_learn       3
% 3.30/1.00  --inst_sel_renew                        solver
% 3.30/1.00  --inst_lit_activity_flag                true
% 3.30/1.00  --inst_restr_to_given                   false
% 3.30/1.00  --inst_activity_threshold               500
% 3.30/1.00  --inst_out_proof                        true
% 3.30/1.00  
% 3.30/1.00  ------ Resolution Options
% 3.30/1.00  
% 3.30/1.00  --resolution_flag                       true
% 3.30/1.00  --res_lit_sel                           adaptive
% 3.30/1.00  --res_lit_sel_side                      none
% 3.30/1.00  --res_ordering                          kbo
% 3.30/1.00  --res_to_prop_solver                    active
% 3.30/1.00  --res_prop_simpl_new                    false
% 3.30/1.00  --res_prop_simpl_given                  true
% 3.30/1.00  --res_passive_queue_type                priority_queues
% 3.30/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.30/1.00  --res_passive_queues_freq               [15;5]
% 3.30/1.00  --res_forward_subs                      full
% 3.30/1.00  --res_backward_subs                     full
% 3.30/1.00  --res_forward_subs_resolution           true
% 3.30/1.00  --res_backward_subs_resolution          true
% 3.30/1.00  --res_orphan_elimination                true
% 3.30/1.00  --res_time_limit                        2.
% 3.30/1.00  --res_out_proof                         true
% 3.30/1.00  
% 3.30/1.00  ------ Superposition Options
% 3.30/1.00  
% 3.30/1.00  --superposition_flag                    true
% 3.30/1.00  --sup_passive_queue_type                priority_queues
% 3.30/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.30/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.30/1.00  --demod_completeness_check              fast
% 3.30/1.00  --demod_use_ground                      true
% 3.30/1.00  --sup_to_prop_solver                    passive
% 3.30/1.00  --sup_prop_simpl_new                    true
% 3.30/1.00  --sup_prop_simpl_given                  true
% 3.30/1.00  --sup_fun_splitting                     false
% 3.30/1.00  --sup_smt_interval                      50000
% 3.30/1.00  
% 3.30/1.00  ------ Superposition Simplification Setup
% 3.30/1.00  
% 3.30/1.00  --sup_indices_passive                   []
% 3.30/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.30/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_full_bw                           [BwDemod]
% 3.30/1.00  --sup_immed_triv                        [TrivRules]
% 3.30/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.30/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_immed_bw_main                     []
% 3.30/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.30/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.30/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.30/1.00  
% 3.30/1.00  ------ Combination Options
% 3.30/1.00  
% 3.30/1.00  --comb_res_mult                         3
% 3.30/1.00  --comb_sup_mult                         2
% 3.30/1.00  --comb_inst_mult                        10
% 3.30/1.00  
% 3.30/1.00  ------ Debug Options
% 3.30/1.00  
% 3.30/1.00  --dbg_backtrace                         false
% 3.30/1.00  --dbg_dump_prop_clauses                 false
% 3.30/1.00  --dbg_dump_prop_clauses_file            -
% 3.30/1.00  --dbg_out_stat                          false
% 3.30/1.00  ------ Parsing...
% 3.30/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.30/1.00  ------ Proving...
% 3.30/1.00  ------ Problem Properties 
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  clauses                                 12
% 3.30/1.00  conjectures                             4
% 3.30/1.00  EPR                                     1
% 3.30/1.00  Horn                                    11
% 3.30/1.00  unary                                   6
% 3.30/1.00  binary                                  5
% 3.30/1.00  lits                                    21
% 3.30/1.00  lits eq                                 2
% 3.30/1.00  fd_pure                                 0
% 3.30/1.00  fd_pseudo                               0
% 3.30/1.00  fd_cond                                 0
% 3.30/1.00  fd_pseudo_cond                          0
% 3.30/1.00  AC symbols                              0
% 3.30/1.00  
% 3.30/1.00  ------ Schedule dynamic 5 is on 
% 3.30/1.00  
% 3.30/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  ------ 
% 3.30/1.00  Current options:
% 3.30/1.00  ------ 
% 3.30/1.00  
% 3.30/1.00  ------ Input Options
% 3.30/1.00  
% 3.30/1.00  --out_options                           all
% 3.30/1.00  --tptp_safe_out                         true
% 3.30/1.00  --problem_path                          ""
% 3.30/1.00  --include_path                          ""
% 3.30/1.00  --clausifier                            res/vclausify_rel
% 3.30/1.00  --clausifier_options                    --mode clausify
% 3.30/1.00  --stdin                                 false
% 3.30/1.00  --stats_out                             all
% 3.30/1.00  
% 3.30/1.00  ------ General Options
% 3.30/1.00  
% 3.30/1.00  --fof                                   false
% 3.30/1.00  --time_out_real                         305.
% 3.30/1.00  --time_out_virtual                      -1.
% 3.30/1.00  --symbol_type_check                     false
% 3.30/1.00  --clausify_out                          false
% 3.30/1.00  --sig_cnt_out                           false
% 3.30/1.00  --trig_cnt_out                          false
% 3.30/1.00  --trig_cnt_out_tolerance                1.
% 3.30/1.00  --trig_cnt_out_sk_spl                   false
% 3.30/1.00  --abstr_cl_out                          false
% 3.30/1.00  
% 3.30/1.00  ------ Global Options
% 3.30/1.00  
% 3.30/1.00  --schedule                              default
% 3.30/1.00  --add_important_lit                     false
% 3.30/1.00  --prop_solver_per_cl                    1000
% 3.30/1.00  --min_unsat_core                        false
% 3.30/1.00  --soft_assumptions                      false
% 3.30/1.00  --soft_lemma_size                       3
% 3.30/1.00  --prop_impl_unit_size                   0
% 3.30/1.00  --prop_impl_unit                        []
% 3.30/1.00  --share_sel_clauses                     true
% 3.30/1.00  --reset_solvers                         false
% 3.30/1.00  --bc_imp_inh                            [conj_cone]
% 3.30/1.00  --conj_cone_tolerance                   3.
% 3.30/1.00  --extra_neg_conj                        none
% 3.30/1.00  --large_theory_mode                     true
% 3.30/1.00  --prolific_symb_bound                   200
% 3.30/1.00  --lt_threshold                          2000
% 3.30/1.00  --clause_weak_htbl                      true
% 3.30/1.00  --gc_record_bc_elim                     false
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing Options
% 3.30/1.00  
% 3.30/1.00  --preprocessing_flag                    true
% 3.30/1.00  --time_out_prep_mult                    0.1
% 3.30/1.00  --splitting_mode                        input
% 3.30/1.00  --splitting_grd                         true
% 3.30/1.00  --splitting_cvd                         false
% 3.30/1.00  --splitting_cvd_svl                     false
% 3.30/1.00  --splitting_nvd                         32
% 3.30/1.00  --sub_typing                            true
% 3.30/1.00  --prep_gs_sim                           true
% 3.30/1.00  --prep_unflatten                        true
% 3.30/1.00  --prep_res_sim                          true
% 3.30/1.00  --prep_upred                            true
% 3.30/1.00  --prep_sem_filter                       exhaustive
% 3.30/1.00  --prep_sem_filter_out                   false
% 3.30/1.00  --pred_elim                             true
% 3.30/1.00  --res_sim_input                         true
% 3.30/1.00  --eq_ax_congr_red                       true
% 3.30/1.00  --pure_diseq_elim                       true
% 3.30/1.00  --brand_transform                       false
% 3.30/1.00  --non_eq_to_eq                          false
% 3.30/1.00  --prep_def_merge                        true
% 3.30/1.00  --prep_def_merge_prop_impl              false
% 3.30/1.00  --prep_def_merge_mbd                    true
% 3.30/1.00  --prep_def_merge_tr_red                 false
% 3.30/1.00  --prep_def_merge_tr_cl                  false
% 3.30/1.00  --smt_preprocessing                     true
% 3.30/1.00  --smt_ac_axioms                         fast
% 3.30/1.00  --preprocessed_out                      false
% 3.30/1.00  --preprocessed_stats                    false
% 3.30/1.00  
% 3.30/1.00  ------ Abstraction refinement Options
% 3.30/1.00  
% 3.30/1.00  --abstr_ref                             []
% 3.30/1.00  --abstr_ref_prep                        false
% 3.30/1.00  --abstr_ref_until_sat                   false
% 3.30/1.00  --abstr_ref_sig_restrict                funpre
% 3.30/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.30/1.00  --abstr_ref_under                       []
% 3.30/1.00  
% 3.30/1.00  ------ SAT Options
% 3.30/1.00  
% 3.30/1.00  --sat_mode                              false
% 3.30/1.00  --sat_fm_restart_options                ""
% 3.30/1.00  --sat_gr_def                            false
% 3.30/1.00  --sat_epr_types                         true
% 3.30/1.00  --sat_non_cyclic_types                  false
% 3.30/1.00  --sat_finite_models                     false
% 3.30/1.00  --sat_fm_lemmas                         false
% 3.30/1.00  --sat_fm_prep                           false
% 3.30/1.00  --sat_fm_uc_incr                        true
% 3.30/1.00  --sat_out_model                         small
% 3.30/1.00  --sat_out_clauses                       false
% 3.30/1.00  
% 3.30/1.00  ------ QBF Options
% 3.30/1.00  
% 3.30/1.00  --qbf_mode                              false
% 3.30/1.00  --qbf_elim_univ                         false
% 3.30/1.00  --qbf_dom_inst                          none
% 3.30/1.00  --qbf_dom_pre_inst                      false
% 3.30/1.00  --qbf_sk_in                             false
% 3.30/1.00  --qbf_pred_elim                         true
% 3.30/1.00  --qbf_split                             512
% 3.30/1.00  
% 3.30/1.00  ------ BMC1 Options
% 3.30/1.00  
% 3.30/1.00  --bmc1_incremental                      false
% 3.30/1.00  --bmc1_axioms                           reachable_all
% 3.30/1.00  --bmc1_min_bound                        0
% 3.30/1.00  --bmc1_max_bound                        -1
% 3.30/1.00  --bmc1_max_bound_default                -1
% 3.30/1.00  --bmc1_symbol_reachability              true
% 3.30/1.00  --bmc1_property_lemmas                  false
% 3.30/1.00  --bmc1_k_induction                      false
% 3.30/1.00  --bmc1_non_equiv_states                 false
% 3.30/1.00  --bmc1_deadlock                         false
% 3.30/1.00  --bmc1_ucm                              false
% 3.30/1.00  --bmc1_add_unsat_core                   none
% 3.30/1.00  --bmc1_unsat_core_children              false
% 3.30/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.30/1.00  --bmc1_out_stat                         full
% 3.30/1.00  --bmc1_ground_init                      false
% 3.30/1.00  --bmc1_pre_inst_next_state              false
% 3.30/1.00  --bmc1_pre_inst_state                   false
% 3.30/1.00  --bmc1_pre_inst_reach_state             false
% 3.30/1.00  --bmc1_out_unsat_core                   false
% 3.30/1.00  --bmc1_aig_witness_out                  false
% 3.30/1.00  --bmc1_verbose                          false
% 3.30/1.00  --bmc1_dump_clauses_tptp                false
% 3.30/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.30/1.00  --bmc1_dump_file                        -
% 3.30/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.30/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.30/1.00  --bmc1_ucm_extend_mode                  1
% 3.30/1.00  --bmc1_ucm_init_mode                    2
% 3.30/1.00  --bmc1_ucm_cone_mode                    none
% 3.30/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.30/1.00  --bmc1_ucm_relax_model                  4
% 3.30/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.30/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.30/1.00  --bmc1_ucm_layered_model                none
% 3.30/1.00  --bmc1_ucm_max_lemma_size               10
% 3.30/1.00  
% 3.30/1.00  ------ AIG Options
% 3.30/1.00  
% 3.30/1.00  --aig_mode                              false
% 3.30/1.00  
% 3.30/1.00  ------ Instantiation Options
% 3.30/1.00  
% 3.30/1.00  --instantiation_flag                    true
% 3.30/1.00  --inst_sos_flag                         false
% 3.30/1.00  --inst_sos_phase                        true
% 3.30/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.30/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.30/1.00  --inst_lit_sel_side                     none
% 3.30/1.00  --inst_solver_per_active                1400
% 3.30/1.00  --inst_solver_calls_frac                1.
% 3.30/1.00  --inst_passive_queue_type               priority_queues
% 3.30/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.30/1.00  --inst_passive_queues_freq              [25;2]
% 3.30/1.00  --inst_dismatching                      true
% 3.30/1.00  --inst_eager_unprocessed_to_passive     true
% 3.30/1.00  --inst_prop_sim_given                   true
% 3.30/1.00  --inst_prop_sim_new                     false
% 3.30/1.00  --inst_subs_new                         false
% 3.30/1.00  --inst_eq_res_simp                      false
% 3.30/1.00  --inst_subs_given                       false
% 3.30/1.00  --inst_orphan_elimination               true
% 3.30/1.00  --inst_learning_loop_flag               true
% 3.30/1.00  --inst_learning_start                   3000
% 3.30/1.00  --inst_learning_factor                  2
% 3.30/1.00  --inst_start_prop_sim_after_learn       3
% 3.30/1.00  --inst_sel_renew                        solver
% 3.30/1.00  --inst_lit_activity_flag                true
% 3.30/1.00  --inst_restr_to_given                   false
% 3.30/1.00  --inst_activity_threshold               500
% 3.30/1.00  --inst_out_proof                        true
% 3.30/1.00  
% 3.30/1.00  ------ Resolution Options
% 3.30/1.00  
% 3.30/1.00  --resolution_flag                       false
% 3.30/1.00  --res_lit_sel                           adaptive
% 3.30/1.00  --res_lit_sel_side                      none
% 3.30/1.00  --res_ordering                          kbo
% 3.30/1.00  --res_to_prop_solver                    active
% 3.30/1.00  --res_prop_simpl_new                    false
% 3.30/1.00  --res_prop_simpl_given                  true
% 3.30/1.00  --res_passive_queue_type                priority_queues
% 3.30/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.30/1.00  --res_passive_queues_freq               [15;5]
% 3.30/1.00  --res_forward_subs                      full
% 3.30/1.00  --res_backward_subs                     full
% 3.30/1.00  --res_forward_subs_resolution           true
% 3.30/1.00  --res_backward_subs_resolution          true
% 3.30/1.00  --res_orphan_elimination                true
% 3.30/1.00  --res_time_limit                        2.
% 3.30/1.00  --res_out_proof                         true
% 3.30/1.00  
% 3.30/1.00  ------ Superposition Options
% 3.30/1.00  
% 3.30/1.00  --superposition_flag                    true
% 3.30/1.00  --sup_passive_queue_type                priority_queues
% 3.30/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.30/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.30/1.00  --demod_completeness_check              fast
% 3.30/1.00  --demod_use_ground                      true
% 3.30/1.00  --sup_to_prop_solver                    passive
% 3.30/1.00  --sup_prop_simpl_new                    true
% 3.30/1.00  --sup_prop_simpl_given                  true
% 3.30/1.00  --sup_fun_splitting                     false
% 3.30/1.00  --sup_smt_interval                      50000
% 3.30/1.00  
% 3.30/1.00  ------ Superposition Simplification Setup
% 3.30/1.00  
% 3.30/1.00  --sup_indices_passive                   []
% 3.30/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.30/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.30/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_full_bw                           [BwDemod]
% 3.30/1.00  --sup_immed_triv                        [TrivRules]
% 3.30/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.30/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_immed_bw_main                     []
% 3.30/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.30/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.30/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.30/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.30/1.00  
% 3.30/1.00  ------ Combination Options
% 3.30/1.00  
% 3.30/1.00  --comb_res_mult                         3
% 3.30/1.00  --comb_sup_mult                         2
% 3.30/1.00  --comb_inst_mult                        10
% 3.30/1.00  
% 3.30/1.00  ------ Debug Options
% 3.30/1.00  
% 3.30/1.00  --dbg_backtrace                         false
% 3.30/1.00  --dbg_dump_prop_clauses                 false
% 3.30/1.00  --dbg_dump_prop_clauses_file            -
% 3.30/1.00  --dbg_out_stat                          false
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  ------ Proving...
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  % SZS status Theorem for theBenchmark.p
% 3.30/1.00  
% 3.30/1.00   Resolution empty clause
% 3.30/1.00  
% 3.30/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.30/1.00  
% 3.30/1.00  fof(f10,axiom,(
% 3.30/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f17,plain,(
% 3.30/1.00    ! [X0,X1,X2] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.30/1.00    inference(ennf_transformation,[],[f10])).
% 3.30/1.00  
% 3.30/1.00  fof(f37,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.30/1.00    inference(cnf_transformation,[],[f17])).
% 3.30/1.00  
% 3.30/1.00  fof(f13,axiom,(
% 3.30/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f23,plain,(
% 3.30/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.30/1.00    inference(nnf_transformation,[],[f13])).
% 3.30/1.00  
% 3.30/1.00  fof(f41,plain,(
% 3.30/1.00    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f23])).
% 3.30/1.00  
% 3.30/1.00  fof(f40,plain,(
% 3.30/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.30/1.00    inference(cnf_transformation,[],[f23])).
% 3.30/1.00  
% 3.30/1.00  fof(f9,axiom,(
% 3.30/1.00    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f36,plain,(
% 3.30/1.00    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.30/1.00    inference(cnf_transformation,[],[f9])).
% 3.30/1.00  
% 3.30/1.00  fof(f8,axiom,(
% 3.30/1.00    ! [X0] : k2_subset_1(X0) = X0),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f35,plain,(
% 3.30/1.00    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.30/1.00    inference(cnf_transformation,[],[f8])).
% 3.30/1.00  
% 3.30/1.00  fof(f11,axiom,(
% 3.30/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f18,plain,(
% 3.30/1.00    ! [X0,X1,X2] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.30/1.00    inference(ennf_transformation,[],[f11])).
% 3.30/1.00  
% 3.30/1.00  fof(f38,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.30/1.00    inference(cnf_transformation,[],[f18])).
% 3.30/1.00  
% 3.30/1.00  fof(f12,axiom,(
% 3.30/1.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f39,plain,(
% 3.30/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.30/1.00    inference(cnf_transformation,[],[f12])).
% 3.30/1.00  
% 3.30/1.00  fof(f2,axiom,(
% 3.30/1.00    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f29,plain,(
% 3.30/1.00    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f2])).
% 3.30/1.00  
% 3.30/1.00  fof(f3,axiom,(
% 3.30/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f30,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f3])).
% 3.30/1.00  
% 3.30/1.00  fof(f4,axiom,(
% 3.30/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f31,plain,(
% 3.30/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f4])).
% 3.30/1.00  
% 3.30/1.00  fof(f5,axiom,(
% 3.30/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f32,plain,(
% 3.30/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f5])).
% 3.30/1.00  
% 3.30/1.00  fof(f6,axiom,(
% 3.30/1.00    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f33,plain,(
% 3.30/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f6])).
% 3.30/1.00  
% 3.30/1.00  fof(f7,axiom,(
% 3.30/1.00    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f34,plain,(
% 3.30/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f7])).
% 3.30/1.00  
% 3.30/1.00  fof(f48,plain,(
% 3.30/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f33,f34])).
% 3.30/1.00  
% 3.30/1.00  fof(f49,plain,(
% 3.30/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f32,f48])).
% 3.30/1.00  
% 3.30/1.00  fof(f50,plain,(
% 3.30/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f31,f49])).
% 3.30/1.00  
% 3.30/1.00  fof(f51,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f30,f50])).
% 3.30/1.00  
% 3.30/1.00  fof(f52,plain,(
% 3.30/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f29,f51])).
% 3.30/1.00  
% 3.30/1.00  fof(f53,plain,(
% 3.30/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 3.30/1.00    inference(definition_unfolding,[],[f39,f52])).
% 3.30/1.00  
% 3.30/1.00  fof(f55,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.30/1.00    inference(definition_unfolding,[],[f38,f53])).
% 3.30/1.00  
% 3.30/1.00  fof(f15,conjecture,(
% 3.30/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f16,negated_conjecture,(
% 3.30/1.00    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 3.30/1.00    inference(negated_conjecture,[],[f15])).
% 3.30/1.00  
% 3.30/1.00  fof(f21,plain,(
% 3.30/1.00    ? [X0] : (? [X1] : (? [X2] : ((~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0))) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.30/1.00    inference(ennf_transformation,[],[f16])).
% 3.30/1.00  
% 3.30/1.00  fof(f22,plain,(
% 3.30/1.00    ? [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.30/1.00    inference(flattening,[],[f21])).
% 3.30/1.00  
% 3.30/1.00  fof(f26,plain,(
% 3.30/1.00    ( ! [X0,X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,sK2),X0) & (v2_tex_2(sK2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.30/1.00    introduced(choice_axiom,[])).
% 3.30/1.00  
% 3.30/1.00  fof(f25,plain,(
% 3.30/1.00    ( ! [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),sK1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(sK1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.30/1.00    introduced(choice_axiom,[])).
% 3.30/1.00  
% 3.30/1.00  fof(f24,plain,(
% 3.30/1.00    ? [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(sK0),X1,X2),sK0) & (v2_tex_2(X2,sK0) | v2_tex_2(X1,sK0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 3.30/1.00    introduced(choice_axiom,[])).
% 3.30/1.00  
% 3.30/1.00  fof(f27,plain,(
% 3.30/1.00    ((~v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) & (v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 3.30/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f22,f26,f25,f24])).
% 3.30/1.00  
% 3.30/1.00  fof(f45,plain,(
% 3.30/1.00    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.30/1.00    inference(cnf_transformation,[],[f27])).
% 3.30/1.00  
% 3.30/1.00  fof(f14,axiom,(
% 3.30/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X1,X0) & r1_tarski(X2,X1)) => v2_tex_2(X2,X0)))))),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f19,plain,(
% 3.30/1.00    ! [X0] : (! [X1] : (! [X2] : ((v2_tex_2(X2,X0) | (~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.30/1.00    inference(ennf_transformation,[],[f14])).
% 3.30/1.00  
% 3.30/1.00  fof(f20,plain,(
% 3.30/1.00    ! [X0] : (! [X1] : (! [X2] : (v2_tex_2(X2,X0) | ~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.30/1.00    inference(flattening,[],[f19])).
% 3.30/1.00  
% 3.30/1.00  fof(f42,plain,(
% 3.30/1.00    ( ! [X2,X0,X1] : (v2_tex_2(X2,X0) | ~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f20])).
% 3.30/1.00  
% 3.30/1.00  fof(f43,plain,(
% 3.30/1.00    l1_pre_topc(sK0)),
% 3.30/1.00    inference(cnf_transformation,[],[f27])).
% 3.30/1.00  
% 3.30/1.00  fof(f46,plain,(
% 3.30/1.00    v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0)),
% 3.30/1.00    inference(cnf_transformation,[],[f27])).
% 3.30/1.00  
% 3.30/1.00  fof(f47,plain,(
% 3.30/1.00    ~v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)),
% 3.30/1.00    inference(cnf_transformation,[],[f27])).
% 3.30/1.00  
% 3.30/1.00  fof(f1,axiom,(
% 3.30/1.00    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 3.30/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.30/1.00  
% 3.30/1.00  fof(f28,plain,(
% 3.30/1.00    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 3.30/1.00    inference(cnf_transformation,[],[f1])).
% 3.30/1.00  
% 3.30/1.00  fof(f54,plain,(
% 3.30/1.00    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0)) )),
% 3.30/1.00    inference(definition_unfolding,[],[f28,f53])).
% 3.30/1.00  
% 3.30/1.00  fof(f44,plain,(
% 3.30/1.00    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.30/1.00    inference(cnf_transformation,[],[f27])).
% 3.30/1.00  
% 3.30/1.00  cnf(c_3,plain,
% 3.30/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.30/1.00      | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 3.30/1.00      inference(cnf_transformation,[],[f37]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_5,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.30/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_93,plain,
% 3.30/1.00      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 3.30/1.00      inference(prop_impl,[status(thm)],[c_5]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_94,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.30/1.00      inference(renaming,[status(thm)],[c_93]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_116,plain,
% 3.30/1.00      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
% 3.30/1.00      | ~ r1_tarski(X2,X0) ),
% 3.30/1.00      inference(bin_hyper_res,[status(thm)],[c_3,c_94]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_801,plain,
% 3.30/1.00      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) = iProver_top
% 3.30/1.00      | r1_tarski(X2,X0) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_116]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_6,plain,
% 3.30/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.30/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_806,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.30/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_2674,plain,
% 3.30/1.00      ( r1_tarski(X0,X1) != iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(X1,X2,X0),X1) = iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_801,c_806]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_2,plain,
% 3.30/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 3.30/1.00      inference(cnf_transformation,[],[f36]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_808,plain,
% 3.30/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1,plain,
% 3.30/1.00      ( k2_subset_1(X0) = X0 ),
% 3.30/1.00      inference(cnf_transformation,[],[f35]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_816,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.30/1.00      inference(light_normalisation,[status(thm)],[c_808,c_1]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1272,plain,
% 3.30/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_816,c_806]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4,plain,
% 3.30/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.30/1.00      | k1_setfam_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
% 3.30/1.00      inference(cnf_transformation,[],[f55]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_117,plain,
% 3.30/1.00      ( ~ r1_tarski(X0,X1)
% 3.30/1.00      | k1_setfam_1(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X0)) = k9_subset_1(X1,X2,X0) ),
% 3.30/1.00      inference(bin_hyper_res,[status(thm)],[c_4,c_94]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_800,plain,
% 3.30/1.00      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k9_subset_1(X2,X0,X1)
% 3.30/1.00      | r1_tarski(X1,X2) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_117]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1874,plain,
% 3.30/1.00      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = k9_subset_1(X1,X0,X1) ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_1272,c_800]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_10,negated_conjecture,
% 3.30/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.30/1.00      inference(cnf_transformation,[],[f45]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_803,plain,
% 3.30/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1270,plain,
% 3.30/1.00      ( r1_tarski(sK2,u1_struct_0(sK0)) = iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_803,c_806]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1454,plain,
% 3.30/1.00      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,sK2)) = k9_subset_1(u1_struct_0(sK0),X0,sK2) ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_1270,c_800]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4385,plain,
% 3.30/1.00      ( k9_subset_1(u1_struct_0(sK0),X0,sK2) = k9_subset_1(sK2,X0,sK2) ),
% 3.30/1.00      inference(demodulation,[status(thm)],[c_1874,c_1454]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4991,plain,
% 3.30/1.00      ( r1_tarski(k9_subset_1(sK2,X0,sK2),u1_struct_0(sK0)) = iProver_top
% 3.30/1.00      | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_4385,c_2674]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_5898,plain,
% 3.30/1.00      ( r1_tarski(k9_subset_1(sK2,X0,sK2),u1_struct_0(sK0)) = iProver_top ),
% 3.30/1.00      inference(global_propositional_subsumption,[status(thm)],[c_4991,c_1270]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_807,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 3.30/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_7,plain,
% 3.30/1.00      ( ~ v2_tex_2(X0,X1)
% 3.30/1.00      | v2_tex_2(X2,X1)
% 3.30/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.30/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.30/1.00      | ~ r1_tarski(X2,X0)
% 3.30/1.00      | ~ l1_pre_topc(X1) ),
% 3.30/1.00      inference(cnf_transformation,[],[f42]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_12,negated_conjecture,
% 3.30/1.00      ( l1_pre_topc(sK0) ),
% 3.30/1.00      inference(cnf_transformation,[],[f43]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_171,plain,
% 3.30/1.00      ( ~ v2_tex_2(X0,X1)
% 3.30/1.00      | v2_tex_2(X2,X1)
% 3.30/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.30/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.30/1.00      | ~ r1_tarski(X2,X0)
% 3.30/1.00      | sK0 != X1 ),
% 3.30/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_12]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_172,plain,
% 3.30/1.00      ( ~ v2_tex_2(X0,sK0)
% 3.30/1.00      | v2_tex_2(X1,sK0)
% 3.30/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.30/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.30/1.00      | ~ r1_tarski(X1,X0) ),
% 3.30/1.00      inference(unflattening,[status(thm)],[c_171]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_799,plain,
% 3.30/1.00      ( v2_tex_2(X0,sK0) != iProver_top
% 3.30/1.00      | v2_tex_2(X1,sK0) = iProver_top
% 3.30/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.30/1.00      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.30/1.00      | r1_tarski(X1,X0) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_172]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_990,plain,
% 3.30/1.00      ( v2_tex_2(X0,sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.30/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.30/1.00      | r1_tarski(X0,sK2) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_803,c_799]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1417,plain,
% 3.30/1.00      ( v2_tex_2(X0,sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.30/1.00      | r1_tarski(X0,u1_struct_0(sK0)) != iProver_top
% 3.30/1.00      | r1_tarski(X0,sK2) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_807,c_990]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_5909,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_5898,c_1417]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_2676,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.30/1.00      | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK2) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_801,c_990]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_9,negated_conjecture,
% 3.30/1.00      ( v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0) ),
% 3.30/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_16,plain,
% 3.30/1.00      ( v2_tex_2(sK2,sK0) = iProver_top | v2_tex_2(sK1,sK0) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_8,negated_conjecture,
% 3.30/1.00      ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
% 3.30/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_17,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_0,plain,
% 3.30/1.00      ( r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0) ),
% 3.30/1.00      inference(cnf_transformation,[],[f54]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_809,plain,
% 3.30/1.00      ( r1_tarski(k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)),X0) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1839,plain,
% 3.30/1.00      ( r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,sK2),X0) = iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_1454,c_809]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_11,negated_conjecture,
% 3.30/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.30/1.00      inference(cnf_transformation,[],[f44]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_802,plain,
% 3.30/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_991,plain,
% 3.30/1.00      ( v2_tex_2(X0,sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK1,sK0) != iProver_top
% 3.30/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.30/1.00      | r1_tarski(X0,sK1) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_802,c_799]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_2675,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK1,sK0) != iProver_top
% 3.30/1.00      | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK1) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_801,c_991]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_3192,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) = iProver_top
% 3.30/1.00      | v2_tex_2(sK1,sK0) != iProver_top
% 3.30/1.00      | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_1839,c_2675]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_3281,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,X1),sK0) = iProver_top
% 3.30/1.00      | r1_tarski(X1,u1_struct_0(sK0)) != iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(u1_struct_0(sK0),X0,X1),sK2) != iProver_top ),
% 3.30/1.00      inference(global_propositional_subsumption,
% 3.30/1.00                [status(thm)],
% 3.30/1.00                [c_2676,c_16,c_17,c_1270,c_3192]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4993,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,sK2),sK0) = iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top
% 3.30/1.00      | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_4385,c_3281]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_5010,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top
% 3.30/1.00      | r1_tarski(sK2,u1_struct_0(sK0)) != iProver_top ),
% 3.30/1.00      inference(light_normalisation,[status(thm)],[c_4993,c_4385]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_9352,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
% 3.30/1.00      | r1_tarski(k9_subset_1(sK2,X0,sK2),sK2) != iProver_top ),
% 3.30/1.00      inference(global_propositional_subsumption,
% 3.30/1.00                [status(thm)],
% 3.30/1.00                [c_5909,c_1270,c_5010]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_9360,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top
% 3.30/1.00      | r1_tarski(sK2,sK2) != iProver_top ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_2674,c_9352]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_938,plain,
% 3.30/1.00      ( k2_subset_1(sK2) = sK2 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_491,plain,( X0 = X0 ),theory(equality) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_944,plain,
% 3.30/1.00      ( sK2 = sK2 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_491]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1223,plain,
% 3.30/1.00      ( m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1224,plain,
% 3.30/1.00      ( m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_1223]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_495,plain,
% 3.30/1.00      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 3.30/1.00      theory(equality) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1598,plain,
% 3.30/1.00      ( k1_zfmisc_1(sK2) = k1_zfmisc_1(sK2) | sK2 != sK2 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_495]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_492,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1085,plain,
% 3.30/1.00      ( X0 != X1 | sK2 != X1 | sK2 = X0 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_492]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1514,plain,
% 3.30/1.00      ( X0 != sK2 | sK2 = X0 | sK2 != sK2 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_1085]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1921,plain,
% 3.30/1.00      ( k2_subset_1(sK2) != sK2 | sK2 = k2_subset_1(sK2) | sK2 != sK2 ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_1514]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_496,plain,
% 3.30/1.00      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.30/1.00      theory(equality) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_889,plain,
% 3.30/1.00      ( m1_subset_1(X0,X1)
% 3.30/1.00      | ~ m1_subset_1(k2_subset_1(X2),k1_zfmisc_1(X2))
% 3.30/1.00      | X1 != k1_zfmisc_1(X2)
% 3.30/1.00      | X0 != k2_subset_1(X2) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_496]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_956,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.30/1.00      | ~ m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))
% 3.30/1.00      | X0 != k2_subset_1(X1)
% 3.30/1.00      | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_889]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1323,plain,
% 3.30/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK2))
% 3.30/1.00      | ~ m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2))
% 3.30/1.00      | X0 != k2_subset_1(sK2)
% 3.30/1.00      | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_956]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_3138,plain,
% 3.30/1.00      ( ~ m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2))
% 3.30/1.00      | m1_subset_1(sK2,k1_zfmisc_1(sK2))
% 3.30/1.00      | k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2)
% 3.30/1.00      | sK2 != k2_subset_1(sK2) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_1323]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_3139,plain,
% 3.30/1.00      ( k1_zfmisc_1(sK2) != k1_zfmisc_1(sK2)
% 3.30/1.00      | sK2 != k2_subset_1(sK2)
% 3.30/1.00      | m1_subset_1(k2_subset_1(sK2),k1_zfmisc_1(sK2)) != iProver_top
% 3.30/1.00      | m1_subset_1(sK2,k1_zfmisc_1(sK2)) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_3138]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_1072,plain,
% 3.30/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK2)) | r1_tarski(X0,sK2) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_6]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4140,plain,
% 3.30/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(sK2)) | r1_tarski(sK2,sK2) ),
% 3.30/1.00      inference(instantiation,[status(thm)],[c_1072]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4141,plain,
% 3.30/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(sK2)) != iProver_top
% 3.30/1.00      | r1_tarski(sK2,sK2) = iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_4140]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_10792,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,X0,sK2),sK0) = iProver_top ),
% 3.30/1.00      inference(global_propositional_subsumption,
% 3.30/1.00                [status(thm)],
% 3.30/1.00                [c_9360,c_938,c_944,c_1224,c_1598,c_1921,c_3139,c_4141]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_805,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
% 3.30/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_4977,plain,
% 3.30/1.00      ( v2_tex_2(k9_subset_1(sK2,sK1,sK2),sK0) != iProver_top ),
% 3.30/1.00      inference(demodulation,[status(thm)],[c_4385,c_805]) ).
% 3.30/1.00  
% 3.30/1.00  cnf(c_10800,plain,
% 3.30/1.00      ( $false ),
% 3.30/1.00      inference(superposition,[status(thm)],[c_10792,c_4977]) ).
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.30/1.00  
% 3.30/1.00  ------                               Statistics
% 3.30/1.00  
% 3.30/1.00  ------ General
% 3.30/1.00  
% 3.30/1.00  abstr_ref_over_cycles:                  0
% 3.30/1.00  abstr_ref_under_cycles:                 0
% 3.30/1.00  gc_basic_clause_elim:                   0
% 3.30/1.00  forced_gc_time:                         0
% 3.30/1.00  parsing_time:                           0.01
% 3.30/1.00  unif_index_cands_time:                  0.
% 3.30/1.00  unif_index_add_time:                    0.
% 3.30/1.00  orderings_time:                         0.
% 3.30/1.00  out_proof_time:                         0.009
% 3.30/1.00  total_time:                             0.354
% 3.30/1.00  num_of_symbols:                         41
% 3.30/1.00  num_of_terms:                           12099
% 3.30/1.00  
% 3.30/1.00  ------ Preprocessing
% 3.30/1.00  
% 3.30/1.00  num_of_splits:                          0
% 3.30/1.00  num_of_split_atoms:                     0
% 3.30/1.00  num_of_reused_defs:                     0
% 3.30/1.00  num_eq_ax_congr_red:                    30
% 3.30/1.00  num_of_sem_filtered_clauses:            1
% 3.30/1.00  num_of_subtypes:                        0
% 3.30/1.00  monotx_restored_types:                  0
% 3.30/1.00  sat_num_of_epr_types:                   0
% 3.30/1.00  sat_num_of_non_cyclic_types:            0
% 3.30/1.00  sat_guarded_non_collapsed_types:        0
% 3.30/1.00  num_pure_diseq_elim:                    0
% 3.30/1.00  simp_replaced_by:                       0
% 3.30/1.00  res_preprocessed:                       68
% 3.30/1.00  prep_upred:                             0
% 3.30/1.00  prep_unflattend:                        25
% 3.30/1.00  smt_new_axioms:                         0
% 3.30/1.00  pred_elim_cands:                        3
% 3.30/1.00  pred_elim:                              1
% 3.30/1.00  pred_elim_cl:                           1
% 3.30/1.00  pred_elim_cycles:                       3
% 3.30/1.00  merged_defs:                            8
% 3.30/1.00  merged_defs_ncl:                        0
% 3.30/1.00  bin_hyper_res:                          10
% 3.30/1.00  prep_cycles:                            4
% 3.30/1.00  pred_elim_time:                         0.006
% 3.30/1.00  splitting_time:                         0.
% 3.30/1.00  sem_filter_time:                        0.
% 3.30/1.00  monotx_time:                            0.001
% 3.30/1.00  subtype_inf_time:                       0.
% 3.30/1.00  
% 3.30/1.00  ------ Problem properties
% 3.30/1.00  
% 3.30/1.00  clauses:                                12
% 3.30/1.00  conjectures:                            4
% 3.30/1.00  epr:                                    1
% 3.30/1.00  horn:                                   11
% 3.30/1.00  ground:                                 4
% 3.30/1.00  unary:                                  6
% 3.30/1.00  binary:                                 5
% 3.30/1.00  lits:                                   21
% 3.30/1.00  lits_eq:                                2
% 3.30/1.00  fd_pure:                                0
% 3.30/1.00  fd_pseudo:                              0
% 3.30/1.00  fd_cond:                                0
% 3.30/1.00  fd_pseudo_cond:                         0
% 3.30/1.00  ac_symbols:                             0
% 3.30/1.00  
% 3.30/1.00  ------ Propositional Solver
% 3.30/1.00  
% 3.30/1.00  prop_solver_calls:                      31
% 3.30/1.00  prop_fast_solver_calls:                 738
% 3.30/1.00  smt_solver_calls:                       0
% 3.30/1.00  smt_fast_solver_calls:                  0
% 3.30/1.00  prop_num_of_clauses:                    4769
% 3.30/1.00  prop_preprocess_simplified:             6759
% 3.30/1.00  prop_fo_subsumed:                       64
% 3.30/1.00  prop_solver_time:                       0.
% 3.30/1.00  smt_solver_time:                        0.
% 3.30/1.00  smt_fast_solver_time:                   0.
% 3.30/1.00  prop_fast_solver_time:                  0.
% 3.30/1.00  prop_unsat_core_time:                   0.
% 3.30/1.00  
% 3.30/1.00  ------ QBF
% 3.30/1.00  
% 3.30/1.00  qbf_q_res:                              0
% 3.30/1.00  qbf_num_tautologies:                    0
% 3.30/1.00  qbf_prep_cycles:                        0
% 3.30/1.00  
% 3.30/1.00  ------ BMC1
% 3.30/1.00  
% 3.30/1.00  bmc1_current_bound:                     -1
% 3.30/1.00  bmc1_last_solved_bound:                 -1
% 3.30/1.00  bmc1_unsat_core_size:                   -1
% 3.30/1.00  bmc1_unsat_core_parents_size:           -1
% 3.30/1.00  bmc1_merge_next_fun:                    0
% 3.30/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.30/1.00  
% 3.30/1.00  ------ Instantiation
% 3.30/1.00  
% 3.30/1.00  inst_num_of_clauses:                    1166
% 3.30/1.00  inst_num_in_passive:                    233
% 3.30/1.00  inst_num_in_active:                     572
% 3.30/1.00  inst_num_in_unprocessed:                362
% 3.30/1.00  inst_num_of_loops:                      600
% 3.30/1.00  inst_num_of_learning_restarts:          0
% 3.30/1.00  inst_num_moves_active_passive:          22
% 3.30/1.00  inst_lit_activity:                      0
% 3.30/1.00  inst_lit_activity_moves:                0
% 3.30/1.00  inst_num_tautologies:                   0
% 3.30/1.00  inst_num_prop_implied:                  0
% 3.30/1.00  inst_num_existing_simplified:           0
% 3.30/1.00  inst_num_eq_res_simplified:             0
% 3.30/1.00  inst_num_child_elim:                    0
% 3.30/1.00  inst_num_of_dismatching_blockings:      509
% 3.30/1.00  inst_num_of_non_proper_insts:           1341
% 3.30/1.00  inst_num_of_duplicates:                 0
% 3.30/1.00  inst_inst_num_from_inst_to_res:         0
% 3.30/1.00  inst_dismatching_checking_time:         0.
% 3.30/1.00  
% 3.30/1.00  ------ Resolution
% 3.30/1.00  
% 3.30/1.00  res_num_of_clauses:                     0
% 3.30/1.00  res_num_in_passive:                     0
% 3.30/1.00  res_num_in_active:                      0
% 3.30/1.00  res_num_of_loops:                       72
% 3.30/1.00  res_forward_subset_subsumed:            112
% 3.30/1.00  res_backward_subset_subsumed:           6
% 3.30/1.00  res_forward_subsumed:                   0
% 3.30/1.00  res_backward_subsumed:                  0
% 3.30/1.00  res_forward_subsumption_resolution:     0
% 3.30/1.00  res_backward_subsumption_resolution:    0
% 3.30/1.00  res_clause_to_clause_subsumption:       1181
% 3.30/1.00  res_orphan_elimination:                 0
% 3.30/1.00  res_tautology_del:                      203
% 3.30/1.00  res_num_eq_res_simplified:              0
% 3.30/1.00  res_num_sel_changes:                    0
% 3.30/1.00  res_moves_from_active_to_pass:          0
% 3.30/1.00  
% 3.30/1.00  ------ Superposition
% 3.30/1.00  
% 3.30/1.00  sup_time_total:                         0.
% 3.30/1.00  sup_time_generating:                    0.
% 3.30/1.00  sup_time_sim_full:                      0.
% 3.30/1.00  sup_time_sim_immed:                     0.
% 3.30/1.00  
% 3.30/1.00  sup_num_of_clauses:                     320
% 3.30/1.00  sup_num_in_active:                      101
% 3.30/1.00  sup_num_in_passive:                     219
% 3.30/1.00  sup_num_of_loops:                       118
% 3.30/1.00  sup_fw_superposition:                   215
% 3.30/1.00  sup_bw_superposition:                   281
% 3.30/1.00  sup_immediate_simplified:               112
% 3.30/1.00  sup_given_eliminated:                   0
% 3.30/1.00  comparisons_done:                       0
% 3.30/1.00  comparisons_avoided:                    0
% 3.30/1.00  
% 3.30/1.00  ------ Simplifications
% 3.30/1.00  
% 3.30/1.00  
% 3.30/1.00  sim_fw_subset_subsumed:                 52
% 3.30/1.00  sim_bw_subset_subsumed:                 14
% 3.30/1.00  sim_fw_subsumed:                        17
% 3.30/1.00  sim_bw_subsumed:                        10
% 3.30/1.00  sim_fw_subsumption_res:                 5
% 3.30/1.00  sim_bw_subsumption_res:                 0
% 3.30/1.00  sim_tautology_del:                      9
% 3.30/1.00  sim_eq_tautology_del:                   0
% 3.30/1.00  sim_eq_res_simp:                        0
% 3.30/1.00  sim_fw_demodulated:                     40
% 3.30/1.00  sim_bw_demodulated:                     11
% 3.30/1.00  sim_light_normalised:                   8
% 3.30/1.00  sim_joinable_taut:                      0
% 3.30/1.00  sim_joinable_simp:                      0
% 3.30/1.00  sim_ac_normalised:                      0
% 3.30/1.00  sim_smt_subsumption:                    0
% 3.30/1.00  
%------------------------------------------------------------------------------
