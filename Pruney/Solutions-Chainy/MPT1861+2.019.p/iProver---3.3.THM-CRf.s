%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:25:51 EST 2020

% Result     : Theorem 3.17s
% Output     : CNFRefutation 3.17s
% Verified   : 
% Statistics : Number of formulae       :   99 ( 728 expanded)
%              Number of clauses        :   58 ( 242 expanded)
%              Number of leaves         :   13 ( 195 expanded)
%              Depth                    :   19
%              Number of atoms          :  254 (2765 expanded)
%              Number of equality atoms :   95 ( 391 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,conjecture,(
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

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
               => ( ( v2_tex_2(X2,X0)
                    | v2_tex_2(X1,X0) )
                 => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)
              & ( v2_tex_2(X2,X0)
                | v2_tex_2(X1,X0) )
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

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
    inference(flattening,[],[f20])).

fof(f24,plain,(
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

fof(f23,plain,(
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

fof(f22,plain,
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

fof(f25,plain,
    ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)
    & ( v2_tex_2(sK2,sK0)
      | v2_tex_2(sK1,sK0) )
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f24,f23,f22])).

fof(f37,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f8])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f7,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k1_setfam_1(k2_tarski(X0,X1)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f26,f32])).

fof(f4,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_tarski(X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f31,f32])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f9,axiom,(
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

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( v2_tex_2(X2,X0)
              | ~ v2_tex_2(X1,X0)
              | ~ r1_tarski(X2,X1)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

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
    inference(flattening,[],[f18])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( v2_tex_2(X2,X0)
      | ~ v2_tex_2(X1,X0)
      | ~ r1_tarski(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f35,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f38,plain,
    ( v2_tex_2(sK2,sK0)
    | v2_tex_2(sK1,sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f39,plain,(
    ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f36,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_10,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_472,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | k1_setfam_1(k2_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_163,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k1_setfam_1(k2_tarski(X0,X1)) = X0 ),
    inference(resolution,[status(thm)],[c_6,c_0])).

cnf(c_470,plain,
    ( k1_setfam_1(k2_tarski(X0,X1)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_163])).

cnf(c_915,plain,
    ( k1_setfam_1(k2_tarski(sK2,u1_struct_0(sK0))) = sK2 ),
    inference(superposition,[status(thm)],[c_472,c_470])).

cnf(c_3,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_477,plain,
    ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2,plain,
    ( k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f28])).

cnf(c_485,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_477,c_2])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k9_subset_1(X1,X2,X0) = k1_setfam_1(k2_tarski(X2,X0)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_475,plain,
    ( k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_tarski(X1,X2))
    | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1077,plain,
    ( k9_subset_1(X0,X1,X0) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(superposition,[status(thm)],[c_485,c_475])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_476,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1940,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(k1_setfam_1(k2_tarski(X1,X0)),k1_zfmisc_1(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1077,c_476])).

cnf(c_3590,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X1,X0)),k1_zfmisc_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1940,c_485])).

cnf(c_3591,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X0,X1)),k1_zfmisc_1(X1)) = iProver_top ),
    inference(renaming,[status(thm)],[c_3590])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k9_subset_1(X1,X0,X2) = k9_subset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_478,plain,
    ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_3608,plain,
    ( k9_subset_1(X0,X1,k1_setfam_1(k2_tarski(X2,X0))) = k9_subset_1(X0,k1_setfam_1(k2_tarski(X2,X0)),X1) ),
    inference(superposition,[status(thm)],[c_3591,c_478])).

cnf(c_3791,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k9_subset_1(X1,X0,k1_setfam_1(k2_tarski(X2,X1))),k1_zfmisc_1(X1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3608,c_476])).

cnf(c_7,plain,
    ( ~ v2_tex_2(X0,X1)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_12,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_138,plain,
    ( ~ v2_tex_2(X0,X1)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_12])).

cnf(c_139,plain,
    ( ~ v2_tex_2(X0,sK0)
    | v2_tex_2(X1,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ r1_tarski(X1,X0) ),
    inference(unflattening,[status(thm)],[c_138])).

cnf(c_174,plain,
    ( ~ v2_tex_2(X0,sK0)
    | v2_tex_2(X1,sK0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | X1 != X2
    | X0 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_139])).

cnf(c_175,plain,
    ( ~ v2_tex_2(X0,sK0)
    | v2_tex_2(X1,sK0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_174])).

cnf(c_469,plain,
    ( v2_tex_2(X0,sK0) != iProver_top
    | v2_tex_2(X1,sK0) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_175])).

cnf(c_738,plain,
    ( v2_tex_2(X0,sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_472,c_469])).

cnf(c_5682,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3791,c_738])).

cnf(c_9,negated_conjecture,
    ( v2_tex_2(sK2,sK0)
    | v2_tex_2(sK1,sK0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_16,plain,
    ( v2_tex_2(sK2,sK0) = iProver_top
    | v2_tex_2(sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1075,plain,
    ( k9_subset_1(u1_struct_0(sK0),X0,sK2) = k1_setfam_1(k2_tarski(X0,sK2)) ),
    inference(superposition,[status(thm)],[c_472,c_475])).

cnf(c_8,negated_conjecture,
    ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_474,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1328,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(sK1,sK2)),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1075,c_474])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_471,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1811,plain,
    ( k9_subset_1(u1_struct_0(sK0),sK1,X0) = k9_subset_1(u1_struct_0(sK0),X0,sK1) ),
    inference(superposition,[status(thm)],[c_471,c_478])).

cnf(c_1076,plain,
    ( k9_subset_1(u1_struct_0(sK0),X0,sK1) = k1_setfam_1(k2_tarski(X0,sK1)) ),
    inference(superposition,[status(thm)],[c_471,c_475])).

cnf(c_1822,plain,
    ( k9_subset_1(u1_struct_0(sK0),sK1,X0) = k1_setfam_1(k2_tarski(X0,sK1)) ),
    inference(light_normalisation,[status(thm)],[c_1811,c_1076])).

cnf(c_2277,plain,
    ( k1_setfam_1(k2_tarski(sK2,sK1)) = k1_setfam_1(k2_tarski(sK1,sK2)) ),
    inference(superposition,[status(thm)],[c_1822,c_1075])).

cnf(c_3604,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(sK1,sK2)),k1_zfmisc_1(sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2277,c_3591])).

cnf(c_1330,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1075,c_476])).

cnf(c_15,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1637,plain,
    ( m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1330,c_15])).

cnf(c_739,plain,
    ( v2_tex_2(X0,sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_471,c_469])).

cnf(c_1646,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top
    | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1637,c_739])).

cnf(c_4272,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(sK1,sK2)),sK0) = iProver_top
    | v2_tex_2(sK1,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3604,c_1646])).

cnf(c_6059,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),sK0) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5682,c_16,c_1328,c_4272])).

cnf(c_6075,plain,
    ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(sK2,u1_struct_0(sK0)))),sK0) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,sK2),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_915,c_6059])).

cnf(c_6113,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6075,c_915,c_1075])).

cnf(c_1647,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top
    | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1637,c_738])).

cnf(c_3614,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
    | v2_tex_2(sK2,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3591,c_1647])).

cnf(c_6313,plain,
    ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6113,c_16,c_1328,c_3614,c_4272])).

cnf(c_6323,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_6313,c_1328])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:38:38 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.17/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.17/0.99  
% 3.17/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.17/0.99  
% 3.17/0.99  ------  iProver source info
% 3.17/0.99  
% 3.17/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.17/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.17/0.99  git: non_committed_changes: false
% 3.17/0.99  git: last_make_outside_of_git: false
% 3.17/0.99  
% 3.17/0.99  ------ 
% 3.17/0.99  
% 3.17/0.99  ------ Input Options
% 3.17/0.99  
% 3.17/0.99  --out_options                           all
% 3.17/0.99  --tptp_safe_out                         true
% 3.17/0.99  --problem_path                          ""
% 3.17/0.99  --include_path                          ""
% 3.17/0.99  --clausifier                            res/vclausify_rel
% 3.17/0.99  --clausifier_options                    --mode clausify
% 3.17/0.99  --stdin                                 false
% 3.17/0.99  --stats_out                             all
% 3.17/0.99  
% 3.17/0.99  ------ General Options
% 3.17/0.99  
% 3.17/0.99  --fof                                   false
% 3.17/0.99  --time_out_real                         305.
% 3.17/0.99  --time_out_virtual                      -1.
% 3.17/0.99  --symbol_type_check                     false
% 3.17/0.99  --clausify_out                          false
% 3.17/0.99  --sig_cnt_out                           false
% 3.17/0.99  --trig_cnt_out                          false
% 3.17/0.99  --trig_cnt_out_tolerance                1.
% 3.17/0.99  --trig_cnt_out_sk_spl                   false
% 3.17/0.99  --abstr_cl_out                          false
% 3.17/0.99  
% 3.17/0.99  ------ Global Options
% 3.17/0.99  
% 3.17/0.99  --schedule                              default
% 3.17/0.99  --add_important_lit                     false
% 3.17/0.99  --prop_solver_per_cl                    1000
% 3.17/0.99  --min_unsat_core                        false
% 3.17/0.99  --soft_assumptions                      false
% 3.17/0.99  --soft_lemma_size                       3
% 3.17/0.99  --prop_impl_unit_size                   0
% 3.17/0.99  --prop_impl_unit                        []
% 3.17/0.99  --share_sel_clauses                     true
% 3.17/0.99  --reset_solvers                         false
% 3.17/0.99  --bc_imp_inh                            [conj_cone]
% 3.17/0.99  --conj_cone_tolerance                   3.
% 3.17/0.99  --extra_neg_conj                        none
% 3.17/0.99  --large_theory_mode                     true
% 3.17/0.99  --prolific_symb_bound                   200
% 3.17/0.99  --lt_threshold                          2000
% 3.17/0.99  --clause_weak_htbl                      true
% 3.17/0.99  --gc_record_bc_elim                     false
% 3.17/0.99  
% 3.17/0.99  ------ Preprocessing Options
% 3.17/0.99  
% 3.17/0.99  --preprocessing_flag                    true
% 3.17/0.99  --time_out_prep_mult                    0.1
% 3.17/0.99  --splitting_mode                        input
% 3.17/0.99  --splitting_grd                         true
% 3.17/0.99  --splitting_cvd                         false
% 3.17/0.99  --splitting_cvd_svl                     false
% 3.17/0.99  --splitting_nvd                         32
% 3.17/0.99  --sub_typing                            true
% 3.17/0.99  --prep_gs_sim                           true
% 3.17/0.99  --prep_unflatten                        true
% 3.17/0.99  --prep_res_sim                          true
% 3.17/0.99  --prep_upred                            true
% 3.17/0.99  --prep_sem_filter                       exhaustive
% 3.17/0.99  --prep_sem_filter_out                   false
% 3.17/0.99  --pred_elim                             true
% 3.17/0.99  --res_sim_input                         true
% 3.17/0.99  --eq_ax_congr_red                       true
% 3.17/0.99  --pure_diseq_elim                       true
% 3.17/0.99  --brand_transform                       false
% 3.17/0.99  --non_eq_to_eq                          false
% 3.17/0.99  --prep_def_merge                        true
% 3.17/0.99  --prep_def_merge_prop_impl              false
% 3.17/0.99  --prep_def_merge_mbd                    true
% 3.17/0.99  --prep_def_merge_tr_red                 false
% 3.17/0.99  --prep_def_merge_tr_cl                  false
% 3.17/0.99  --smt_preprocessing                     true
% 3.17/0.99  --smt_ac_axioms                         fast
% 3.17/0.99  --preprocessed_out                      false
% 3.17/0.99  --preprocessed_stats                    false
% 3.17/0.99  
% 3.17/0.99  ------ Abstraction refinement Options
% 3.17/0.99  
% 3.17/0.99  --abstr_ref                             []
% 3.17/0.99  --abstr_ref_prep                        false
% 3.17/0.99  --abstr_ref_until_sat                   false
% 3.17/0.99  --abstr_ref_sig_restrict                funpre
% 3.17/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.17/0.99  --abstr_ref_under                       []
% 3.17/0.99  
% 3.17/0.99  ------ SAT Options
% 3.17/0.99  
% 3.17/0.99  --sat_mode                              false
% 3.17/0.99  --sat_fm_restart_options                ""
% 3.17/0.99  --sat_gr_def                            false
% 3.17/0.99  --sat_epr_types                         true
% 3.17/0.99  --sat_non_cyclic_types                  false
% 3.17/0.99  --sat_finite_models                     false
% 3.17/0.99  --sat_fm_lemmas                         false
% 3.17/0.99  --sat_fm_prep                           false
% 3.17/0.99  --sat_fm_uc_incr                        true
% 3.17/0.99  --sat_out_model                         small
% 3.17/0.99  --sat_out_clauses                       false
% 3.17/0.99  
% 3.17/0.99  ------ QBF Options
% 3.17/0.99  
% 3.17/0.99  --qbf_mode                              false
% 3.17/0.99  --qbf_elim_univ                         false
% 3.17/0.99  --qbf_dom_inst                          none
% 3.17/0.99  --qbf_dom_pre_inst                      false
% 3.17/0.99  --qbf_sk_in                             false
% 3.17/0.99  --qbf_pred_elim                         true
% 3.17/0.99  --qbf_split                             512
% 3.17/0.99  
% 3.17/0.99  ------ BMC1 Options
% 3.17/0.99  
% 3.17/0.99  --bmc1_incremental                      false
% 3.17/0.99  --bmc1_axioms                           reachable_all
% 3.17/0.99  --bmc1_min_bound                        0
% 3.17/0.99  --bmc1_max_bound                        -1
% 3.17/0.99  --bmc1_max_bound_default                -1
% 3.17/0.99  --bmc1_symbol_reachability              true
% 3.17/0.99  --bmc1_property_lemmas                  false
% 3.17/0.99  --bmc1_k_induction                      false
% 3.17/0.99  --bmc1_non_equiv_states                 false
% 3.17/0.99  --bmc1_deadlock                         false
% 3.17/0.99  --bmc1_ucm                              false
% 3.17/0.99  --bmc1_add_unsat_core                   none
% 3.17/0.99  --bmc1_unsat_core_children              false
% 3.17/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.17/0.99  --bmc1_out_stat                         full
% 3.17/0.99  --bmc1_ground_init                      false
% 3.17/0.99  --bmc1_pre_inst_next_state              false
% 3.17/0.99  --bmc1_pre_inst_state                   false
% 3.17/0.99  --bmc1_pre_inst_reach_state             false
% 3.17/0.99  --bmc1_out_unsat_core                   false
% 3.17/0.99  --bmc1_aig_witness_out                  false
% 3.17/0.99  --bmc1_verbose                          false
% 3.17/0.99  --bmc1_dump_clauses_tptp                false
% 3.17/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.17/0.99  --bmc1_dump_file                        -
% 3.17/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.17/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.17/0.99  --bmc1_ucm_extend_mode                  1
% 3.17/0.99  --bmc1_ucm_init_mode                    2
% 3.17/0.99  --bmc1_ucm_cone_mode                    none
% 3.17/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.17/0.99  --bmc1_ucm_relax_model                  4
% 3.17/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.17/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.17/0.99  --bmc1_ucm_layered_model                none
% 3.17/0.99  --bmc1_ucm_max_lemma_size               10
% 3.17/0.99  
% 3.17/0.99  ------ AIG Options
% 3.17/0.99  
% 3.17/0.99  --aig_mode                              false
% 3.17/0.99  
% 3.17/0.99  ------ Instantiation Options
% 3.17/0.99  
% 3.17/0.99  --instantiation_flag                    true
% 3.17/0.99  --inst_sos_flag                         false
% 3.17/0.99  --inst_sos_phase                        true
% 3.17/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.17/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.17/0.99  --inst_lit_sel_side                     num_symb
% 3.17/0.99  --inst_solver_per_active                1400
% 3.17/0.99  --inst_solver_calls_frac                1.
% 3.17/0.99  --inst_passive_queue_type               priority_queues
% 3.17/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.17/0.99  --inst_passive_queues_freq              [25;2]
% 3.17/0.99  --inst_dismatching                      true
% 3.17/0.99  --inst_eager_unprocessed_to_passive     true
% 3.17/0.99  --inst_prop_sim_given                   true
% 3.17/0.99  --inst_prop_sim_new                     false
% 3.17/0.99  --inst_subs_new                         false
% 3.17/0.99  --inst_eq_res_simp                      false
% 3.17/0.99  --inst_subs_given                       false
% 3.17/0.99  --inst_orphan_elimination               true
% 3.17/0.99  --inst_learning_loop_flag               true
% 3.17/0.99  --inst_learning_start                   3000
% 3.17/0.99  --inst_learning_factor                  2
% 3.17/0.99  --inst_start_prop_sim_after_learn       3
% 3.17/0.99  --inst_sel_renew                        solver
% 3.17/0.99  --inst_lit_activity_flag                true
% 3.17/0.99  --inst_restr_to_given                   false
% 3.17/0.99  --inst_activity_threshold               500
% 3.17/0.99  --inst_out_proof                        true
% 3.17/0.99  
% 3.17/0.99  ------ Resolution Options
% 3.17/0.99  
% 3.17/0.99  --resolution_flag                       true
% 3.17/0.99  --res_lit_sel                           adaptive
% 3.17/0.99  --res_lit_sel_side                      none
% 3.17/0.99  --res_ordering                          kbo
% 3.17/0.99  --res_to_prop_solver                    active
% 3.17/0.99  --res_prop_simpl_new                    false
% 3.17/0.99  --res_prop_simpl_given                  true
% 3.17/0.99  --res_passive_queue_type                priority_queues
% 3.17/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.17/0.99  --res_passive_queues_freq               [15;5]
% 3.17/0.99  --res_forward_subs                      full
% 3.17/0.99  --res_backward_subs                     full
% 3.17/0.99  --res_forward_subs_resolution           true
% 3.17/0.99  --res_backward_subs_resolution          true
% 3.17/0.99  --res_orphan_elimination                true
% 3.17/0.99  --res_time_limit                        2.
% 3.17/0.99  --res_out_proof                         true
% 3.17/0.99  
% 3.17/0.99  ------ Superposition Options
% 3.17/0.99  
% 3.17/0.99  --superposition_flag                    true
% 3.17/0.99  --sup_passive_queue_type                priority_queues
% 3.17/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.17/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.17/0.99  --demod_completeness_check              fast
% 3.17/0.99  --demod_use_ground                      true
% 3.17/0.99  --sup_to_prop_solver                    passive
% 3.17/0.99  --sup_prop_simpl_new                    true
% 3.17/0.99  --sup_prop_simpl_given                  true
% 3.17/0.99  --sup_fun_splitting                     false
% 3.17/0.99  --sup_smt_interval                      50000
% 3.17/0.99  
% 3.17/0.99  ------ Superposition Simplification Setup
% 3.17/0.99  
% 3.17/0.99  --sup_indices_passive                   []
% 3.17/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.17/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_full_bw                           [BwDemod]
% 3.17/0.99  --sup_immed_triv                        [TrivRules]
% 3.17/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.17/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_immed_bw_main                     []
% 3.17/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.17/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.17/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.17/0.99  
% 3.17/0.99  ------ Combination Options
% 3.17/0.99  
% 3.17/0.99  --comb_res_mult                         3
% 3.17/0.99  --comb_sup_mult                         2
% 3.17/0.99  --comb_inst_mult                        10
% 3.17/0.99  
% 3.17/0.99  ------ Debug Options
% 3.17/0.99  
% 3.17/0.99  --dbg_backtrace                         false
% 3.17/0.99  --dbg_dump_prop_clauses                 false
% 3.17/0.99  --dbg_dump_prop_clauses_file            -
% 3.17/0.99  --dbg_out_stat                          false
% 3.17/0.99  ------ Parsing...
% 3.17/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.17/0.99  
% 3.17/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.17/0.99  
% 3.17/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.17/0.99  
% 3.17/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.17/0.99  ------ Proving...
% 3.17/0.99  ------ Problem Properties 
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  clauses                                 11
% 3.17/0.99  conjectures                             4
% 3.17/0.99  EPR                                     1
% 3.17/0.99  Horn                                    10
% 3.17/0.99  unary                                   5
% 3.17/0.99  binary                                  5
% 3.17/0.99  lits                                    20
% 3.17/0.99  lits eq                                 4
% 3.17/0.99  fd_pure                                 0
% 3.17/0.99  fd_pseudo                               0
% 3.17/0.99  fd_cond                                 0
% 3.17/0.99  fd_pseudo_cond                          0
% 3.17/0.99  AC symbols                              0
% 3.17/0.99  
% 3.17/0.99  ------ Schedule dynamic 5 is on 
% 3.17/0.99  
% 3.17/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  ------ 
% 3.17/0.99  Current options:
% 3.17/0.99  ------ 
% 3.17/0.99  
% 3.17/0.99  ------ Input Options
% 3.17/0.99  
% 3.17/0.99  --out_options                           all
% 3.17/0.99  --tptp_safe_out                         true
% 3.17/0.99  --problem_path                          ""
% 3.17/0.99  --include_path                          ""
% 3.17/0.99  --clausifier                            res/vclausify_rel
% 3.17/0.99  --clausifier_options                    --mode clausify
% 3.17/0.99  --stdin                                 false
% 3.17/0.99  --stats_out                             all
% 3.17/0.99  
% 3.17/0.99  ------ General Options
% 3.17/0.99  
% 3.17/0.99  --fof                                   false
% 3.17/0.99  --time_out_real                         305.
% 3.17/0.99  --time_out_virtual                      -1.
% 3.17/0.99  --symbol_type_check                     false
% 3.17/0.99  --clausify_out                          false
% 3.17/0.99  --sig_cnt_out                           false
% 3.17/0.99  --trig_cnt_out                          false
% 3.17/0.99  --trig_cnt_out_tolerance                1.
% 3.17/0.99  --trig_cnt_out_sk_spl                   false
% 3.17/0.99  --abstr_cl_out                          false
% 3.17/0.99  
% 3.17/0.99  ------ Global Options
% 3.17/0.99  
% 3.17/0.99  --schedule                              default
% 3.17/0.99  --add_important_lit                     false
% 3.17/0.99  --prop_solver_per_cl                    1000
% 3.17/0.99  --min_unsat_core                        false
% 3.17/0.99  --soft_assumptions                      false
% 3.17/0.99  --soft_lemma_size                       3
% 3.17/0.99  --prop_impl_unit_size                   0
% 3.17/0.99  --prop_impl_unit                        []
% 3.17/0.99  --share_sel_clauses                     true
% 3.17/0.99  --reset_solvers                         false
% 3.17/0.99  --bc_imp_inh                            [conj_cone]
% 3.17/0.99  --conj_cone_tolerance                   3.
% 3.17/0.99  --extra_neg_conj                        none
% 3.17/0.99  --large_theory_mode                     true
% 3.17/0.99  --prolific_symb_bound                   200
% 3.17/0.99  --lt_threshold                          2000
% 3.17/0.99  --clause_weak_htbl                      true
% 3.17/0.99  --gc_record_bc_elim                     false
% 3.17/0.99  
% 3.17/0.99  ------ Preprocessing Options
% 3.17/0.99  
% 3.17/0.99  --preprocessing_flag                    true
% 3.17/0.99  --time_out_prep_mult                    0.1
% 3.17/0.99  --splitting_mode                        input
% 3.17/0.99  --splitting_grd                         true
% 3.17/0.99  --splitting_cvd                         false
% 3.17/0.99  --splitting_cvd_svl                     false
% 3.17/0.99  --splitting_nvd                         32
% 3.17/0.99  --sub_typing                            true
% 3.17/0.99  --prep_gs_sim                           true
% 3.17/0.99  --prep_unflatten                        true
% 3.17/0.99  --prep_res_sim                          true
% 3.17/0.99  --prep_upred                            true
% 3.17/0.99  --prep_sem_filter                       exhaustive
% 3.17/0.99  --prep_sem_filter_out                   false
% 3.17/0.99  --pred_elim                             true
% 3.17/0.99  --res_sim_input                         true
% 3.17/0.99  --eq_ax_congr_red                       true
% 3.17/0.99  --pure_diseq_elim                       true
% 3.17/0.99  --brand_transform                       false
% 3.17/0.99  --non_eq_to_eq                          false
% 3.17/0.99  --prep_def_merge                        true
% 3.17/0.99  --prep_def_merge_prop_impl              false
% 3.17/0.99  --prep_def_merge_mbd                    true
% 3.17/0.99  --prep_def_merge_tr_red                 false
% 3.17/0.99  --prep_def_merge_tr_cl                  false
% 3.17/0.99  --smt_preprocessing                     true
% 3.17/0.99  --smt_ac_axioms                         fast
% 3.17/0.99  --preprocessed_out                      false
% 3.17/0.99  --preprocessed_stats                    false
% 3.17/0.99  
% 3.17/0.99  ------ Abstraction refinement Options
% 3.17/0.99  
% 3.17/0.99  --abstr_ref                             []
% 3.17/0.99  --abstr_ref_prep                        false
% 3.17/0.99  --abstr_ref_until_sat                   false
% 3.17/0.99  --abstr_ref_sig_restrict                funpre
% 3.17/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.17/0.99  --abstr_ref_under                       []
% 3.17/0.99  
% 3.17/0.99  ------ SAT Options
% 3.17/0.99  
% 3.17/0.99  --sat_mode                              false
% 3.17/0.99  --sat_fm_restart_options                ""
% 3.17/0.99  --sat_gr_def                            false
% 3.17/0.99  --sat_epr_types                         true
% 3.17/0.99  --sat_non_cyclic_types                  false
% 3.17/0.99  --sat_finite_models                     false
% 3.17/0.99  --sat_fm_lemmas                         false
% 3.17/0.99  --sat_fm_prep                           false
% 3.17/0.99  --sat_fm_uc_incr                        true
% 3.17/0.99  --sat_out_model                         small
% 3.17/0.99  --sat_out_clauses                       false
% 3.17/0.99  
% 3.17/0.99  ------ QBF Options
% 3.17/0.99  
% 3.17/0.99  --qbf_mode                              false
% 3.17/0.99  --qbf_elim_univ                         false
% 3.17/0.99  --qbf_dom_inst                          none
% 3.17/0.99  --qbf_dom_pre_inst                      false
% 3.17/0.99  --qbf_sk_in                             false
% 3.17/0.99  --qbf_pred_elim                         true
% 3.17/0.99  --qbf_split                             512
% 3.17/0.99  
% 3.17/0.99  ------ BMC1 Options
% 3.17/0.99  
% 3.17/0.99  --bmc1_incremental                      false
% 3.17/0.99  --bmc1_axioms                           reachable_all
% 3.17/0.99  --bmc1_min_bound                        0
% 3.17/0.99  --bmc1_max_bound                        -1
% 3.17/0.99  --bmc1_max_bound_default                -1
% 3.17/0.99  --bmc1_symbol_reachability              true
% 3.17/0.99  --bmc1_property_lemmas                  false
% 3.17/0.99  --bmc1_k_induction                      false
% 3.17/0.99  --bmc1_non_equiv_states                 false
% 3.17/0.99  --bmc1_deadlock                         false
% 3.17/0.99  --bmc1_ucm                              false
% 3.17/0.99  --bmc1_add_unsat_core                   none
% 3.17/0.99  --bmc1_unsat_core_children              false
% 3.17/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.17/0.99  --bmc1_out_stat                         full
% 3.17/0.99  --bmc1_ground_init                      false
% 3.17/0.99  --bmc1_pre_inst_next_state              false
% 3.17/0.99  --bmc1_pre_inst_state                   false
% 3.17/0.99  --bmc1_pre_inst_reach_state             false
% 3.17/0.99  --bmc1_out_unsat_core                   false
% 3.17/0.99  --bmc1_aig_witness_out                  false
% 3.17/0.99  --bmc1_verbose                          false
% 3.17/0.99  --bmc1_dump_clauses_tptp                false
% 3.17/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.17/0.99  --bmc1_dump_file                        -
% 3.17/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.17/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.17/0.99  --bmc1_ucm_extend_mode                  1
% 3.17/0.99  --bmc1_ucm_init_mode                    2
% 3.17/0.99  --bmc1_ucm_cone_mode                    none
% 3.17/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.17/0.99  --bmc1_ucm_relax_model                  4
% 3.17/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.17/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.17/0.99  --bmc1_ucm_layered_model                none
% 3.17/0.99  --bmc1_ucm_max_lemma_size               10
% 3.17/0.99  
% 3.17/0.99  ------ AIG Options
% 3.17/0.99  
% 3.17/0.99  --aig_mode                              false
% 3.17/0.99  
% 3.17/0.99  ------ Instantiation Options
% 3.17/0.99  
% 3.17/0.99  --instantiation_flag                    true
% 3.17/0.99  --inst_sos_flag                         false
% 3.17/0.99  --inst_sos_phase                        true
% 3.17/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.17/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.17/0.99  --inst_lit_sel_side                     none
% 3.17/0.99  --inst_solver_per_active                1400
% 3.17/0.99  --inst_solver_calls_frac                1.
% 3.17/0.99  --inst_passive_queue_type               priority_queues
% 3.17/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.17/0.99  --inst_passive_queues_freq              [25;2]
% 3.17/0.99  --inst_dismatching                      true
% 3.17/0.99  --inst_eager_unprocessed_to_passive     true
% 3.17/0.99  --inst_prop_sim_given                   true
% 3.17/0.99  --inst_prop_sim_new                     false
% 3.17/0.99  --inst_subs_new                         false
% 3.17/0.99  --inst_eq_res_simp                      false
% 3.17/0.99  --inst_subs_given                       false
% 3.17/0.99  --inst_orphan_elimination               true
% 3.17/0.99  --inst_learning_loop_flag               true
% 3.17/0.99  --inst_learning_start                   3000
% 3.17/0.99  --inst_learning_factor                  2
% 3.17/0.99  --inst_start_prop_sim_after_learn       3
% 3.17/0.99  --inst_sel_renew                        solver
% 3.17/0.99  --inst_lit_activity_flag                true
% 3.17/0.99  --inst_restr_to_given                   false
% 3.17/0.99  --inst_activity_threshold               500
% 3.17/0.99  --inst_out_proof                        true
% 3.17/0.99  
% 3.17/0.99  ------ Resolution Options
% 3.17/0.99  
% 3.17/0.99  --resolution_flag                       false
% 3.17/0.99  --res_lit_sel                           adaptive
% 3.17/0.99  --res_lit_sel_side                      none
% 3.17/0.99  --res_ordering                          kbo
% 3.17/0.99  --res_to_prop_solver                    active
% 3.17/0.99  --res_prop_simpl_new                    false
% 3.17/0.99  --res_prop_simpl_given                  true
% 3.17/0.99  --res_passive_queue_type                priority_queues
% 3.17/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.17/0.99  --res_passive_queues_freq               [15;5]
% 3.17/0.99  --res_forward_subs                      full
% 3.17/0.99  --res_backward_subs                     full
% 3.17/0.99  --res_forward_subs_resolution           true
% 3.17/0.99  --res_backward_subs_resolution          true
% 3.17/0.99  --res_orphan_elimination                true
% 3.17/0.99  --res_time_limit                        2.
% 3.17/0.99  --res_out_proof                         true
% 3.17/0.99  
% 3.17/0.99  ------ Superposition Options
% 3.17/0.99  
% 3.17/0.99  --superposition_flag                    true
% 3.17/0.99  --sup_passive_queue_type                priority_queues
% 3.17/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.17/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.17/0.99  --demod_completeness_check              fast
% 3.17/0.99  --demod_use_ground                      true
% 3.17/0.99  --sup_to_prop_solver                    passive
% 3.17/0.99  --sup_prop_simpl_new                    true
% 3.17/0.99  --sup_prop_simpl_given                  true
% 3.17/0.99  --sup_fun_splitting                     false
% 3.17/0.99  --sup_smt_interval                      50000
% 3.17/0.99  
% 3.17/0.99  ------ Superposition Simplification Setup
% 3.17/0.99  
% 3.17/0.99  --sup_indices_passive                   []
% 3.17/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.17/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.17/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_full_bw                           [BwDemod]
% 3.17/0.99  --sup_immed_triv                        [TrivRules]
% 3.17/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.17/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_immed_bw_main                     []
% 3.17/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.17/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.17/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.17/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.17/0.99  
% 3.17/0.99  ------ Combination Options
% 3.17/0.99  
% 3.17/0.99  --comb_res_mult                         3
% 3.17/0.99  --comb_sup_mult                         2
% 3.17/0.99  --comb_inst_mult                        10
% 3.17/0.99  
% 3.17/0.99  ------ Debug Options
% 3.17/0.99  
% 3.17/0.99  --dbg_backtrace                         false
% 3.17/0.99  --dbg_dump_prop_clauses                 false
% 3.17/0.99  --dbg_dump_prop_clauses_file            -
% 3.17/0.99  --dbg_out_stat                          false
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  ------ Proving...
% 3.17/0.99  
% 3.17/0.99  
% 3.17/0.99  % SZS status Theorem for theBenchmark.p
% 3.17/0.99  
% 3.17/0.99   Resolution empty clause
% 3.17/0.99  
% 3.17/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.17/0.99  
% 3.17/0.99  fof(f10,conjecture,(
% 3.17/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f11,negated_conjecture,(
% 3.17/0.99    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) => v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0)))))),
% 3.17/0.99    inference(negated_conjecture,[],[f10])).
% 3.17/0.99  
% 3.17/0.99  fof(f20,plain,(
% 3.17/0.99    ? [X0] : (? [X1] : (? [X2] : ((~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0))) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.17/0.99    inference(ennf_transformation,[],[f11])).
% 3.17/0.99  
% 3.17/0.99  fof(f21,plain,(
% 3.17/0.99    ? [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 3.17/0.99    inference(flattening,[],[f20])).
% 3.17/0.99  
% 3.17/0.99  fof(f24,plain,(
% 3.17/0.99    ( ! [X0,X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,sK2),X0) & (v2_tex_2(sK2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.17/0.99    introduced(choice_axiom,[])).
% 3.17/0.99  
% 3.17/0.99  fof(f23,plain,(
% 3.17/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),sK1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(sK1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 3.17/0.99    introduced(choice_axiom,[])).
% 3.17/0.99  
% 3.17/0.99  fof(f22,plain,(
% 3.17/0.99    ? [X0] : (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(X0),X1,X2),X0) & (v2_tex_2(X2,X0) | v2_tex_2(X1,X0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (? [X2] : (~v2_tex_2(k9_subset_1(u1_struct_0(sK0),X1,X2),sK0) & (v2_tex_2(X2,sK0) | v2_tex_2(X1,sK0)) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 3.17/0.99    introduced(choice_axiom,[])).
% 3.17/0.99  
% 3.17/0.99  fof(f25,plain,(
% 3.17/0.99    ((~v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) & (v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 3.17/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f24,f23,f22])).
% 3.17/0.99  
% 3.17/0.99  fof(f37,plain,(
% 3.17/0.99    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.17/0.99    inference(cnf_transformation,[],[f25])).
% 3.17/0.99  
% 3.17/0.99  fof(f8,axiom,(
% 3.17/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f12,plain,(
% 3.17/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) => r1_tarski(X0,X1))),
% 3.17/0.99    inference(unused_predicate_definition_removal,[],[f8])).
% 3.17/0.99  
% 3.17/0.99  fof(f17,plain,(
% 3.17/0.99    ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1)))),
% 3.17/0.99    inference(ennf_transformation,[],[f12])).
% 3.17/0.99  
% 3.17/0.99  fof(f33,plain,(
% 3.17/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f17])).
% 3.17/0.99  
% 3.17/0.99  fof(f1,axiom,(
% 3.17/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f13,plain,(
% 3.17/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.17/0.99    inference(ennf_transformation,[],[f1])).
% 3.17/0.99  
% 3.17/0.99  fof(f26,plain,(
% 3.17/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.17/0.99    inference(cnf_transformation,[],[f13])).
% 3.17/0.99  
% 3.17/0.99  fof(f7,axiom,(
% 3.17/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f32,plain,(
% 3.17/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f7])).
% 3.17/0.99  
% 3.17/0.99  fof(f40,plain,(
% 3.17/0.99    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = X0 | ~r1_tarski(X0,X1)) )),
% 3.17/0.99    inference(definition_unfolding,[],[f26,f32])).
% 3.17/0.99  
% 3.17/0.99  fof(f4,axiom,(
% 3.17/0.99    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f29,plain,(
% 3.17/0.99    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f4])).
% 3.17/0.99  
% 3.17/0.99  fof(f3,axiom,(
% 3.17/0.99    ! [X0] : k2_subset_1(X0) = X0),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f28,plain,(
% 3.17/0.99    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 3.17/0.99    inference(cnf_transformation,[],[f3])).
% 3.17/0.99  
% 3.17/0.99  fof(f6,axiom,(
% 3.17/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f16,plain,(
% 3.17/0.99    ! [X0,X1,X2] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.17/0.99    inference(ennf_transformation,[],[f6])).
% 3.17/0.99  
% 3.17/0.99  fof(f31,plain,(
% 3.17/0.99    ( ! [X2,X0,X1] : (k3_xboole_0(X1,X2) = k9_subset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f16])).
% 3.17/0.99  
% 3.17/0.99  fof(f41,plain,(
% 3.17/0.99    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_tarski(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.17/0.99    inference(definition_unfolding,[],[f31,f32])).
% 3.17/0.99  
% 3.17/0.99  fof(f5,axiom,(
% 3.17/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f15,plain,(
% 3.17/0.99    ! [X0,X1,X2] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.17/0.99    inference(ennf_transformation,[],[f5])).
% 3.17/0.99  
% 3.17/0.99  fof(f30,plain,(
% 3.17/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k9_subset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f15])).
% 3.17/0.99  
% 3.17/0.99  fof(f2,axiom,(
% 3.17/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f14,plain,(
% 3.17/0.99    ! [X0,X1,X2] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 3.17/0.99    inference(ennf_transformation,[],[f2])).
% 3.17/0.99  
% 3.17/0.99  fof(f27,plain,(
% 3.17/0.99    ( ! [X2,X0,X1] : (k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) )),
% 3.17/0.99    inference(cnf_transformation,[],[f14])).
% 3.17/0.99  
% 3.17/0.99  fof(f9,axiom,(
% 3.17/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v2_tex_2(X1,X0) & r1_tarski(X2,X1)) => v2_tex_2(X2,X0)))))),
% 3.17/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.17/0.99  
% 3.17/0.99  fof(f18,plain,(
% 3.17/0.99    ! [X0] : (! [X1] : (! [X2] : ((v2_tex_2(X2,X0) | (~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.17/0.99    inference(ennf_transformation,[],[f9])).
% 3.17/1.00  
% 3.17/1.00  fof(f19,plain,(
% 3.17/1.00    ! [X0] : (! [X1] : (! [X2] : (v2_tex_2(X2,X0) | ~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 3.17/1.00    inference(flattening,[],[f18])).
% 3.17/1.00  
% 3.17/1.00  fof(f34,plain,(
% 3.17/1.00    ( ! [X2,X0,X1] : (v2_tex_2(X2,X0) | ~v2_tex_2(X1,X0) | ~r1_tarski(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 3.17/1.00    inference(cnf_transformation,[],[f19])).
% 3.17/1.00  
% 3.17/1.00  fof(f35,plain,(
% 3.17/1.00    l1_pre_topc(sK0)),
% 3.17/1.00    inference(cnf_transformation,[],[f25])).
% 3.17/1.00  
% 3.17/1.00  fof(f38,plain,(
% 3.17/1.00    v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0)),
% 3.17/1.00    inference(cnf_transformation,[],[f25])).
% 3.17/1.00  
% 3.17/1.00  fof(f39,plain,(
% 3.17/1.00    ~v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0)),
% 3.17/1.00    inference(cnf_transformation,[],[f25])).
% 3.17/1.00  
% 3.17/1.00  fof(f36,plain,(
% 3.17/1.00    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 3.17/1.00    inference(cnf_transformation,[],[f25])).
% 3.17/1.00  
% 3.17/1.00  cnf(c_10,negated_conjecture,
% 3.17/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.17/1.00      inference(cnf_transformation,[],[f37]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_472,plain,
% 3.17/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6,plain,
% 3.17/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.17/1.00      inference(cnf_transformation,[],[f33]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_0,plain,
% 3.17/1.00      ( ~ r1_tarski(X0,X1) | k1_setfam_1(k2_tarski(X0,X1)) = X0 ),
% 3.17/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_163,plain,
% 3.17/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.17/1.00      | k1_setfam_1(k2_tarski(X0,X1)) = X0 ),
% 3.17/1.00      inference(resolution,[status(thm)],[c_6,c_0]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_470,plain,
% 3.17/1.00      ( k1_setfam_1(k2_tarski(X0,X1)) = X0
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_163]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_915,plain,
% 3.17/1.00      ( k1_setfam_1(k2_tarski(sK2,u1_struct_0(sK0))) = sK2 ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_472,c_470]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3,plain,
% 3.17/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
% 3.17/1.00      inference(cnf_transformation,[],[f29]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_477,plain,
% 3.17/1.00      ( m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_2,plain,
% 3.17/1.00      ( k2_subset_1(X0) = X0 ),
% 3.17/1.00      inference(cnf_transformation,[],[f28]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_485,plain,
% 3.17/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 3.17/1.00      inference(light_normalisation,[status(thm)],[c_477,c_2]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_5,plain,
% 3.17/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.17/1.00      | k9_subset_1(X1,X2,X0) = k1_setfam_1(k2_tarski(X2,X0)) ),
% 3.17/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_475,plain,
% 3.17/1.00      ( k9_subset_1(X0,X1,X2) = k1_setfam_1(k2_tarski(X1,X2))
% 3.17/1.00      | m1_subset_1(X2,k1_zfmisc_1(X0)) != iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1077,plain,
% 3.17/1.00      ( k9_subset_1(X0,X1,X0) = k1_setfam_1(k2_tarski(X1,X0)) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_485,c_475]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_4,plain,
% 3.17/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.17/1.00      | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 3.17/1.00      inference(cnf_transformation,[],[f30]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_476,plain,
% 3.17/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.17/1.00      | m1_subset_1(k9_subset_1(X1,X2,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1940,plain,
% 3.17/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X0)) != iProver_top
% 3.17/1.00      | m1_subset_1(k1_setfam_1(k2_tarski(X1,X0)),k1_zfmisc_1(X0)) = iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_1077,c_476]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3590,plain,
% 3.17/1.00      ( m1_subset_1(k1_setfam_1(k2_tarski(X1,X0)),k1_zfmisc_1(X0)) = iProver_top ),
% 3.17/1.00      inference(global_propositional_subsumption,[status(thm)],[c_1940,c_485]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3591,plain,
% 3.17/1.00      ( m1_subset_1(k1_setfam_1(k2_tarski(X0,X1)),k1_zfmisc_1(X1)) = iProver_top ),
% 3.17/1.00      inference(renaming,[status(thm)],[c_3590]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1,plain,
% 3.17/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.17/1.00      | k9_subset_1(X1,X0,X2) = k9_subset_1(X1,X2,X0) ),
% 3.17/1.00      inference(cnf_transformation,[],[f27]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_478,plain,
% 3.17/1.00      ( k9_subset_1(X0,X1,X2) = k9_subset_1(X0,X2,X1)
% 3.17/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3608,plain,
% 3.17/1.00      ( k9_subset_1(X0,X1,k1_setfam_1(k2_tarski(X2,X0))) = k9_subset_1(X0,k1_setfam_1(k2_tarski(X2,X0)),X1) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_3591,c_478]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3791,plain,
% 3.17/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.17/1.00      | m1_subset_1(k9_subset_1(X1,X0,k1_setfam_1(k2_tarski(X2,X1))),k1_zfmisc_1(X1)) = iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_3608,c_476]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_7,plain,
% 3.17/1.00      ( ~ v2_tex_2(X0,X1)
% 3.17/1.00      | v2_tex_2(X2,X1)
% 3.17/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.17/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.17/1.00      | ~ r1_tarski(X2,X0)
% 3.17/1.00      | ~ l1_pre_topc(X1) ),
% 3.17/1.00      inference(cnf_transformation,[],[f34]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_12,negated_conjecture,
% 3.17/1.00      ( l1_pre_topc(sK0) ),
% 3.17/1.00      inference(cnf_transformation,[],[f35]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_138,plain,
% 3.17/1.00      ( ~ v2_tex_2(X0,X1)
% 3.17/1.00      | v2_tex_2(X2,X1)
% 3.17/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 3.17/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 3.17/1.00      | ~ r1_tarski(X2,X0)
% 3.17/1.00      | sK0 != X1 ),
% 3.17/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_12]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_139,plain,
% 3.17/1.00      ( ~ v2_tex_2(X0,sK0)
% 3.17/1.00      | v2_tex_2(X1,sK0)
% 3.17/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.17/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.17/1.00      | ~ r1_tarski(X1,X0) ),
% 3.17/1.00      inference(unflattening,[status(thm)],[c_138]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_174,plain,
% 3.17/1.00      ( ~ v2_tex_2(X0,sK0)
% 3.17/1.00      | v2_tex_2(X1,sK0)
% 3.17/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
% 3.17/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.17/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.17/1.00      | X1 != X2
% 3.17/1.00      | X0 != X3 ),
% 3.17/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_139]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_175,plain,
% 3.17/1.00      ( ~ v2_tex_2(X0,sK0)
% 3.17/1.00      | v2_tex_2(X1,sK0)
% 3.17/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
% 3.17/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 3.17/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.17/1.00      inference(unflattening,[status(thm)],[c_174]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_469,plain,
% 3.17/1.00      ( v2_tex_2(X0,sK0) != iProver_top
% 3.17/1.00      | v2_tex_2(X1,sK0) = iProver_top
% 3.17/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_175]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_738,plain,
% 3.17/1.00      ( v2_tex_2(X0,sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_472,c_469]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_5682,plain,
% 3.17/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_3791,c_738]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_9,negated_conjecture,
% 3.17/1.00      ( v2_tex_2(sK2,sK0) | v2_tex_2(sK1,sK0) ),
% 3.17/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_16,plain,
% 3.17/1.00      ( v2_tex_2(sK2,sK0) = iProver_top | v2_tex_2(sK1,sK0) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1075,plain,
% 3.17/1.00      ( k9_subset_1(u1_struct_0(sK0),X0,sK2) = k1_setfam_1(k2_tarski(X0,sK2)) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_472,c_475]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_8,negated_conjecture,
% 3.17/1.00      ( ~ v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) ),
% 3.17/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_474,plain,
% 3.17/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),sK1,sK2),sK0) != iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1328,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(sK1,sK2)),sK0) != iProver_top ),
% 3.17/1.00      inference(demodulation,[status(thm)],[c_1075,c_474]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_11,negated_conjecture,
% 3.17/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 3.17/1.00      inference(cnf_transformation,[],[f36]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_471,plain,
% 3.17/1.00      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1811,plain,
% 3.17/1.00      ( k9_subset_1(u1_struct_0(sK0),sK1,X0) = k9_subset_1(u1_struct_0(sK0),X0,sK1) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_471,c_478]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1076,plain,
% 3.17/1.00      ( k9_subset_1(u1_struct_0(sK0),X0,sK1) = k1_setfam_1(k2_tarski(X0,sK1)) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_471,c_475]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1822,plain,
% 3.17/1.00      ( k9_subset_1(u1_struct_0(sK0),sK1,X0) = k1_setfam_1(k2_tarski(X0,sK1)) ),
% 3.17/1.00      inference(light_normalisation,[status(thm)],[c_1811,c_1076]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_2277,plain,
% 3.17/1.00      ( k1_setfam_1(k2_tarski(sK2,sK1)) = k1_setfam_1(k2_tarski(sK1,sK2)) ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_1822,c_1075]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3604,plain,
% 3.17/1.00      ( m1_subset_1(k1_setfam_1(k2_tarski(sK1,sK2)),k1_zfmisc_1(sK1)) = iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_2277,c_3591]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1330,plain,
% 3.17/1.00      ( m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top
% 3.17/1.00      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_1075,c_476]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_15,plain,
% 3.17/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.17/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1637,plain,
% 3.17/1.00      ( m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 3.17/1.00      inference(global_propositional_subsumption,[status(thm)],[c_1330,c_15]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_739,plain,
% 3.17/1.00      ( v2_tex_2(X0,sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK1,sK0) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_471,c_469]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1646,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK1,sK0) != iProver_top
% 3.17/1.00      | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK1)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_1637,c_739]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_4272,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(sK1,sK2)),sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK1,sK0) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_3604,c_1646]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6059,plain,
% 3.17/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),sK0) = iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(X1,u1_struct_0(sK0)))),k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(global_propositional_subsumption,
% 3.17/1.00                [status(thm)],
% 3.17/1.00                [c_5682,c_16,c_1328,c_4272]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6075,plain,
% 3.17/1.00      ( v2_tex_2(k9_subset_1(u1_struct_0(sK0),X0,k1_setfam_1(k2_tarski(sK2,u1_struct_0(sK0)))),sK0) = iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(k9_subset_1(u1_struct_0(sK0),X0,sK2),k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_915,c_6059]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6113,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
% 3.17/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 3.17/1.00      | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(light_normalisation,[status(thm)],[c_6075,c_915,c_1075]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_1647,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK2,sK0) != iProver_top
% 3.17/1.00      | m1_subset_1(k1_setfam_1(k2_tarski(X0,sK2)),k1_zfmisc_1(sK2)) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_1637,c_738]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_3614,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top
% 3.17/1.00      | v2_tex_2(sK2,sK0) != iProver_top ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_3591,c_1647]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6313,plain,
% 3.17/1.00      ( v2_tex_2(k1_setfam_1(k2_tarski(X0,sK2)),sK0) = iProver_top ),
% 3.17/1.00      inference(global_propositional_subsumption,
% 3.17/1.00                [status(thm)],
% 3.17/1.00                [c_6113,c_16,c_1328,c_3614,c_4272]) ).
% 3.17/1.00  
% 3.17/1.00  cnf(c_6323,plain,
% 3.17/1.00      ( $false ),
% 3.17/1.00      inference(superposition,[status(thm)],[c_6313,c_1328]) ).
% 3.17/1.00  
% 3.17/1.00  
% 3.17/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.17/1.00  
% 3.17/1.00  ------                               Statistics
% 3.17/1.00  
% 3.17/1.00  ------ General
% 3.17/1.00  
% 3.17/1.00  abstr_ref_over_cycles:                  0
% 3.17/1.00  abstr_ref_under_cycles:                 0
% 3.17/1.00  gc_basic_clause_elim:                   0
% 3.17/1.00  forced_gc_time:                         0
% 3.17/1.00  parsing_time:                           0.007
% 3.17/1.00  unif_index_cands_time:                  0.
% 3.17/1.00  unif_index_add_time:                    0.
% 3.17/1.00  orderings_time:                         0.
% 3.17/1.00  out_proof_time:                         0.007
% 3.17/1.00  total_time:                             0.241
% 3.17/1.00  num_of_symbols:                         44
% 3.17/1.00  num_of_terms:                           7962
% 3.17/1.00  
% 3.17/1.00  ------ Preprocessing
% 3.17/1.00  
% 3.17/1.00  num_of_splits:                          0
% 3.17/1.00  num_of_split_atoms:                     0
% 3.17/1.00  num_of_reused_defs:                     0
% 3.17/1.00  num_eq_ax_congr_red:                    11
% 3.17/1.00  num_of_sem_filtered_clauses:            1
% 3.17/1.00  num_of_subtypes:                        0
% 3.17/1.00  monotx_restored_types:                  0
% 3.17/1.00  sat_num_of_epr_types:                   0
% 3.17/1.00  sat_num_of_non_cyclic_types:            0
% 3.17/1.00  sat_guarded_non_collapsed_types:        0
% 3.17/1.00  num_pure_diseq_elim:                    0
% 3.17/1.00  simp_replaced_by:                       0
% 3.17/1.00  res_preprocessed:                       63
% 3.17/1.00  prep_upred:                             0
% 3.17/1.00  prep_unflattend:                        3
% 3.17/1.00  smt_new_axioms:                         0
% 3.17/1.00  pred_elim_cands:                        2
% 3.17/1.00  pred_elim:                              2
% 3.17/1.00  pred_elim_cl:                           2
% 3.17/1.00  pred_elim_cycles:                       4
% 3.17/1.00  merged_defs:                            0
% 3.17/1.00  merged_defs_ncl:                        0
% 3.17/1.00  bin_hyper_res:                          0
% 3.17/1.00  prep_cycles:                            4
% 3.17/1.00  pred_elim_time:                         0.001
% 3.17/1.00  splitting_time:                         0.
% 3.17/1.00  sem_filter_time:                        0.
% 3.17/1.00  monotx_time:                            0.
% 3.17/1.00  subtype_inf_time:                       0.
% 3.17/1.00  
% 3.17/1.00  ------ Problem properties
% 3.17/1.00  
% 3.17/1.00  clauses:                                11
% 3.17/1.00  conjectures:                            4
% 3.17/1.00  epr:                                    1
% 3.17/1.00  horn:                                   10
% 3.17/1.00  ground:                                 4
% 3.17/1.00  unary:                                  5
% 3.17/1.00  binary:                                 5
% 3.17/1.00  lits:                                   20
% 3.17/1.00  lits_eq:                                4
% 3.17/1.00  fd_pure:                                0
% 3.17/1.00  fd_pseudo:                              0
% 3.17/1.00  fd_cond:                                0
% 3.17/1.00  fd_pseudo_cond:                         0
% 3.17/1.00  ac_symbols:                             0
% 3.17/1.00  
% 3.17/1.00  ------ Propositional Solver
% 3.17/1.00  
% 3.17/1.00  prop_solver_calls:                      29
% 3.17/1.00  prop_fast_solver_calls:                 427
% 3.17/1.00  smt_solver_calls:                       0
% 3.17/1.00  smt_fast_solver_calls:                  0
% 3.17/1.00  prop_num_of_clauses:                    2694
% 3.17/1.00  prop_preprocess_simplified:             4167
% 3.17/1.00  prop_fo_subsumed:                       15
% 3.17/1.00  prop_solver_time:                       0.
% 3.17/1.00  smt_solver_time:                        0.
% 3.17/1.00  smt_fast_solver_time:                   0.
% 3.17/1.00  prop_fast_solver_time:                  0.
% 3.17/1.00  prop_unsat_core_time:                   0.
% 3.17/1.00  
% 3.17/1.00  ------ QBF
% 3.17/1.00  
% 3.17/1.00  qbf_q_res:                              0
% 3.17/1.00  qbf_num_tautologies:                    0
% 3.17/1.00  qbf_prep_cycles:                        0
% 3.17/1.00  
% 3.17/1.00  ------ BMC1
% 3.17/1.00  
% 3.17/1.00  bmc1_current_bound:                     -1
% 3.17/1.00  bmc1_last_solved_bound:                 -1
% 3.17/1.00  bmc1_unsat_core_size:                   -1
% 3.17/1.00  bmc1_unsat_core_parents_size:           -1
% 3.17/1.00  bmc1_merge_next_fun:                    0
% 3.17/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.17/1.00  
% 3.17/1.00  ------ Instantiation
% 3.17/1.00  
% 3.17/1.00  inst_num_of_clauses:                    670
% 3.17/1.00  inst_num_in_passive:                    48
% 3.17/1.00  inst_num_in_active:                     321
% 3.17/1.00  inst_num_in_unprocessed:                302
% 3.17/1.00  inst_num_of_loops:                      340
% 3.17/1.00  inst_num_of_learning_restarts:          0
% 3.17/1.00  inst_num_moves_active_passive:          15
% 3.17/1.00  inst_lit_activity:                      0
% 3.17/1.00  inst_lit_activity_moves:                0
% 3.17/1.00  inst_num_tautologies:                   0
% 3.17/1.00  inst_num_prop_implied:                  0
% 3.17/1.00  inst_num_existing_simplified:           0
% 3.17/1.00  inst_num_eq_res_simplified:             0
% 3.17/1.00  inst_num_child_elim:                    0
% 3.17/1.00  inst_num_of_dismatching_blockings:      337
% 3.17/1.00  inst_num_of_non_proper_insts:           669
% 3.17/1.00  inst_num_of_duplicates:                 0
% 3.17/1.00  inst_inst_num_from_inst_to_res:         0
% 3.17/1.00  inst_dismatching_checking_time:         0.
% 3.17/1.00  
% 3.17/1.00  ------ Resolution
% 3.17/1.00  
% 3.17/1.00  res_num_of_clauses:                     0
% 3.17/1.00  res_num_in_passive:                     0
% 3.17/1.00  res_num_in_active:                      0
% 3.17/1.00  res_num_of_loops:                       67
% 3.17/1.00  res_forward_subset_subsumed:            42
% 3.17/1.00  res_backward_subset_subsumed:           4
% 3.17/1.00  res_forward_subsumed:                   0
% 3.17/1.00  res_backward_subsumed:                  0
% 3.17/1.00  res_forward_subsumption_resolution:     0
% 3.17/1.00  res_backward_subsumption_resolution:    0
% 3.17/1.00  res_clause_to_clause_subsumption:       768
% 3.17/1.00  res_orphan_elimination:                 0
% 3.17/1.00  res_tautology_del:                      60
% 3.17/1.00  res_num_eq_res_simplified:              0
% 3.17/1.00  res_num_sel_changes:                    0
% 3.17/1.00  res_moves_from_active_to_pass:          0
% 3.17/1.00  
% 3.17/1.00  ------ Superposition
% 3.17/1.00  
% 3.17/1.00  sup_time_total:                         0.
% 3.17/1.00  sup_time_generating:                    0.
% 3.17/1.00  sup_time_sim_full:                      0.
% 3.17/1.00  sup_time_sim_immed:                     0.
% 3.17/1.00  
% 3.17/1.00  sup_num_of_clauses:                     186
% 3.17/1.00  sup_num_in_active:                      62
% 3.17/1.00  sup_num_in_passive:                     124
% 3.17/1.00  sup_num_of_loops:                       67
% 3.17/1.00  sup_fw_superposition:                   221
% 3.17/1.00  sup_bw_superposition:                   141
% 3.17/1.00  sup_immediate_simplified:               165
% 3.17/1.00  sup_given_eliminated:                   0
% 3.17/1.00  comparisons_done:                       0
% 3.17/1.00  comparisons_avoided:                    0
% 3.17/1.00  
% 3.17/1.00  ------ Simplifications
% 3.17/1.00  
% 3.17/1.00  
% 3.17/1.00  sim_fw_subset_subsumed:                 9
% 3.17/1.00  sim_bw_subset_subsumed:                 7
% 3.17/1.00  sim_fw_subsumed:                        33
% 3.17/1.00  sim_bw_subsumed:                        1
% 3.17/1.00  sim_fw_subsumption_res:                 0
% 3.17/1.00  sim_bw_subsumption_res:                 0
% 3.17/1.00  sim_tautology_del:                      11
% 3.17/1.00  sim_eq_tautology_del:                   27
% 3.17/1.00  sim_eq_res_simp:                        0
% 3.17/1.00  sim_fw_demodulated:                     56
% 3.17/1.00  sim_bw_demodulated:                     2
% 3.17/1.00  sim_light_normalised:                   97
% 3.17/1.00  sim_joinable_taut:                      0
% 3.17/1.00  sim_joinable_simp:                      0
% 3.17/1.00  sim_ac_normalised:                      0
% 3.17/1.00  sim_smt_subsumption:                    0
% 3.17/1.00  
%------------------------------------------------------------------------------
