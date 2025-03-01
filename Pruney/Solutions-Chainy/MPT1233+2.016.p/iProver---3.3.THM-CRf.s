%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:39 EST 2020

% Result     : Theorem 1.38s
% Output     : CNFRefutation 1.38s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 166 expanded)
%              Number of clauses        :   42 (  51 expanded)
%              Number of leaves         :   17 (  39 expanded)
%              Depth                    :   15
%              Number of atoms          :  200 ( 348 expanded)
%              Number of equality atoms :   76 ( 141 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f5,axiom,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f51,plain,(
    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0) ),
    inference(definition_unfolding,[],[f40,f36])).

fof(f54,plain,(
    ! [X0] : m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
    inference(definition_unfolding,[],[f39,f51])).

fof(f6,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f53,plain,(
    ! [X0] : k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(definition_unfolding,[],[f37,f51])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f17,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f28,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f29,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f30,plain,
    ( ? [X0] :
        ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).

fof(f49,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v1_xboole_0(X1)
           => v4_pre_topc(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f21])).

fof(f42,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(X1,X0)
      | ~ v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f10,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f48,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f15,axiom,(
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

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f25])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = X1
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f52,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) ),
    inference(definition_unfolding,[],[f33,f35])).

fof(f3,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f50,plain,(
    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f31])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f44,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => u1_struct_0(X0) = k2_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f43,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_5,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_489,plain,
    ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3,plain,
    ( k3_subset_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_507,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_489,c_3])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_14,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_226,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_14])).

cnf(c_227,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_226])).

cnf(c_487,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_227])).

cnf(c_709,plain,
    ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),u1_struct_0(sK0)))) = k1_tops_1(sK0,u1_struct_0(sK0)) ),
    inference(superposition,[status(thm)],[c_507,c_487])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_7,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_163,plain,
    ( v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_7])).

cnf(c_164,plain,
    ( v4_pre_topc(k1_xboole_0,X0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_163])).

cnf(c_6,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_176,plain,
    ( v4_pre_topc(k1_xboole_0,X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_164,c_6])).

cnf(c_15,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_187,plain,
    ( v4_pre_topc(k1_xboole_0,X0)
    | ~ l1_pre_topc(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_176,c_15])).

cnf(c_188,plain,
    ( v4_pre_topc(k1_xboole_0,sK0)
    | ~ l1_pre_topc(sK0) ),
    inference(unflattening,[status(thm)],[c_187])).

cnf(c_190,plain,
    ( v4_pre_topc(k1_xboole_0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_188,c_14])).

cnf(c_11,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_238,plain,
    ( ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,X0) = X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_14])).

cnf(c_239,plain,
    ( ~ v4_pre_topc(X0,sK0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_238])).

cnf(c_262,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,X0) = X0
    | sK0 != sK0
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_190,c_239])).

cnf(c_263,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,k1_xboole_0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_262])).

cnf(c_269,plain,
    ( k2_pre_topc(sK0,k1_xboole_0) = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_263,c_6])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_490,plain,
    ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_804,plain,
    ( k3_subset_1(X0,X0) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_507,c_490])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_2,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_501,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1,c_2])).

cnf(c_806,plain,
    ( k3_subset_1(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_804,c_501])).

cnf(c_843,plain,
    ( k1_tops_1(sK0,u1_struct_0(sK0)) = u1_struct_0(sK0) ),
    inference(demodulation,[status(thm)],[c_709,c_3,c_269,c_806])).

cnf(c_13,negated_conjecture,
    ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_9,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_8,plain,
    ( ~ l1_struct_0(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_149,plain,
    ( ~ l1_pre_topc(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_9,c_8])).

cnf(c_221,plain,
    ( k2_struct_0(X0) = u1_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_149,c_14])).

cnf(c_222,plain,
    ( k2_struct_0(sK0) = u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_221])).

cnf(c_504,plain,
    ( k1_tops_1(sK0,u1_struct_0(sK0)) != u1_struct_0(sK0) ),
    inference(light_normalisation,[status(thm)],[c_13,c_222])).

cnf(c_845,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_843,c_504])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:11:50 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.38/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.38/1.00  
% 1.38/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.38/1.00  
% 1.38/1.00  ------  iProver source info
% 1.38/1.00  
% 1.38/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.38/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.38/1.00  git: non_committed_changes: false
% 1.38/1.00  git: last_make_outside_of_git: false
% 1.38/1.00  
% 1.38/1.00  ------ 
% 1.38/1.00  
% 1.38/1.00  ------ Input Options
% 1.38/1.00  
% 1.38/1.00  --out_options                           all
% 1.38/1.00  --tptp_safe_out                         true
% 1.38/1.00  --problem_path                          ""
% 1.38/1.00  --include_path                          ""
% 1.38/1.00  --clausifier                            res/vclausify_rel
% 1.38/1.00  --clausifier_options                    --mode clausify
% 1.38/1.00  --stdin                                 false
% 1.38/1.00  --stats_out                             all
% 1.38/1.00  
% 1.38/1.00  ------ General Options
% 1.38/1.00  
% 1.38/1.00  --fof                                   false
% 1.38/1.00  --time_out_real                         305.
% 1.38/1.00  --time_out_virtual                      -1.
% 1.38/1.00  --symbol_type_check                     false
% 1.38/1.00  --clausify_out                          false
% 1.38/1.00  --sig_cnt_out                           false
% 1.38/1.00  --trig_cnt_out                          false
% 1.38/1.00  --trig_cnt_out_tolerance                1.
% 1.38/1.00  --trig_cnt_out_sk_spl                   false
% 1.38/1.00  --abstr_cl_out                          false
% 1.38/1.00  
% 1.38/1.00  ------ Global Options
% 1.38/1.00  
% 1.38/1.00  --schedule                              default
% 1.38/1.00  --add_important_lit                     false
% 1.38/1.00  --prop_solver_per_cl                    1000
% 1.38/1.00  --min_unsat_core                        false
% 1.38/1.00  --soft_assumptions                      false
% 1.38/1.00  --soft_lemma_size                       3
% 1.38/1.00  --prop_impl_unit_size                   0
% 1.38/1.00  --prop_impl_unit                        []
% 1.38/1.00  --share_sel_clauses                     true
% 1.38/1.00  --reset_solvers                         false
% 1.38/1.00  --bc_imp_inh                            [conj_cone]
% 1.38/1.00  --conj_cone_tolerance                   3.
% 1.38/1.00  --extra_neg_conj                        none
% 1.38/1.00  --large_theory_mode                     true
% 1.38/1.00  --prolific_symb_bound                   200
% 1.38/1.00  --lt_threshold                          2000
% 1.38/1.00  --clause_weak_htbl                      true
% 1.38/1.00  --gc_record_bc_elim                     false
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing Options
% 1.38/1.00  
% 1.38/1.00  --preprocessing_flag                    true
% 1.38/1.00  --time_out_prep_mult                    0.1
% 1.38/1.00  --splitting_mode                        input
% 1.38/1.00  --splitting_grd                         true
% 1.38/1.00  --splitting_cvd                         false
% 1.38/1.00  --splitting_cvd_svl                     false
% 1.38/1.00  --splitting_nvd                         32
% 1.38/1.00  --sub_typing                            true
% 1.38/1.00  --prep_gs_sim                           true
% 1.38/1.00  --prep_unflatten                        true
% 1.38/1.00  --prep_res_sim                          true
% 1.38/1.00  --prep_upred                            true
% 1.38/1.00  --prep_sem_filter                       exhaustive
% 1.38/1.00  --prep_sem_filter_out                   false
% 1.38/1.00  --pred_elim                             true
% 1.38/1.00  --res_sim_input                         true
% 1.38/1.00  --eq_ax_congr_red                       true
% 1.38/1.00  --pure_diseq_elim                       true
% 1.38/1.00  --brand_transform                       false
% 1.38/1.00  --non_eq_to_eq                          false
% 1.38/1.00  --prep_def_merge                        true
% 1.38/1.00  --prep_def_merge_prop_impl              false
% 1.38/1.00  --prep_def_merge_mbd                    true
% 1.38/1.00  --prep_def_merge_tr_red                 false
% 1.38/1.00  --prep_def_merge_tr_cl                  false
% 1.38/1.00  --smt_preprocessing                     true
% 1.38/1.00  --smt_ac_axioms                         fast
% 1.38/1.00  --preprocessed_out                      false
% 1.38/1.00  --preprocessed_stats                    false
% 1.38/1.00  
% 1.38/1.00  ------ Abstraction refinement Options
% 1.38/1.00  
% 1.38/1.00  --abstr_ref                             []
% 1.38/1.00  --abstr_ref_prep                        false
% 1.38/1.00  --abstr_ref_until_sat                   false
% 1.38/1.00  --abstr_ref_sig_restrict                funpre
% 1.38/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.38/1.00  --abstr_ref_under                       []
% 1.38/1.00  
% 1.38/1.00  ------ SAT Options
% 1.38/1.00  
% 1.38/1.00  --sat_mode                              false
% 1.38/1.00  --sat_fm_restart_options                ""
% 1.38/1.00  --sat_gr_def                            false
% 1.38/1.00  --sat_epr_types                         true
% 1.38/1.00  --sat_non_cyclic_types                  false
% 1.38/1.00  --sat_finite_models                     false
% 1.38/1.00  --sat_fm_lemmas                         false
% 1.38/1.00  --sat_fm_prep                           false
% 1.38/1.00  --sat_fm_uc_incr                        true
% 1.38/1.00  --sat_out_model                         small
% 1.38/1.00  --sat_out_clauses                       false
% 1.38/1.00  
% 1.38/1.00  ------ QBF Options
% 1.38/1.00  
% 1.38/1.00  --qbf_mode                              false
% 1.38/1.00  --qbf_elim_univ                         false
% 1.38/1.00  --qbf_dom_inst                          none
% 1.38/1.00  --qbf_dom_pre_inst                      false
% 1.38/1.00  --qbf_sk_in                             false
% 1.38/1.00  --qbf_pred_elim                         true
% 1.38/1.00  --qbf_split                             512
% 1.38/1.00  
% 1.38/1.00  ------ BMC1 Options
% 1.38/1.00  
% 1.38/1.00  --bmc1_incremental                      false
% 1.38/1.00  --bmc1_axioms                           reachable_all
% 1.38/1.00  --bmc1_min_bound                        0
% 1.38/1.00  --bmc1_max_bound                        -1
% 1.38/1.00  --bmc1_max_bound_default                -1
% 1.38/1.00  --bmc1_symbol_reachability              true
% 1.38/1.00  --bmc1_property_lemmas                  false
% 1.38/1.00  --bmc1_k_induction                      false
% 1.38/1.00  --bmc1_non_equiv_states                 false
% 1.38/1.00  --bmc1_deadlock                         false
% 1.38/1.00  --bmc1_ucm                              false
% 1.38/1.00  --bmc1_add_unsat_core                   none
% 1.38/1.00  --bmc1_unsat_core_children              false
% 1.38/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.38/1.00  --bmc1_out_stat                         full
% 1.38/1.00  --bmc1_ground_init                      false
% 1.38/1.00  --bmc1_pre_inst_next_state              false
% 1.38/1.00  --bmc1_pre_inst_state                   false
% 1.38/1.00  --bmc1_pre_inst_reach_state             false
% 1.38/1.00  --bmc1_out_unsat_core                   false
% 1.38/1.00  --bmc1_aig_witness_out                  false
% 1.38/1.00  --bmc1_verbose                          false
% 1.38/1.00  --bmc1_dump_clauses_tptp                false
% 1.38/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.38/1.00  --bmc1_dump_file                        -
% 1.38/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.38/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.38/1.00  --bmc1_ucm_extend_mode                  1
% 1.38/1.00  --bmc1_ucm_init_mode                    2
% 1.38/1.00  --bmc1_ucm_cone_mode                    none
% 1.38/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.38/1.00  --bmc1_ucm_relax_model                  4
% 1.38/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.38/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.38/1.00  --bmc1_ucm_layered_model                none
% 1.38/1.00  --bmc1_ucm_max_lemma_size               10
% 1.38/1.00  
% 1.38/1.00  ------ AIG Options
% 1.38/1.00  
% 1.38/1.00  --aig_mode                              false
% 1.38/1.00  
% 1.38/1.00  ------ Instantiation Options
% 1.38/1.00  
% 1.38/1.00  --instantiation_flag                    true
% 1.38/1.00  --inst_sos_flag                         false
% 1.38/1.00  --inst_sos_phase                        true
% 1.38/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.38/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.38/1.00  --inst_lit_sel_side                     num_symb
% 1.38/1.00  --inst_solver_per_active                1400
% 1.38/1.00  --inst_solver_calls_frac                1.
% 1.38/1.00  --inst_passive_queue_type               priority_queues
% 1.38/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.38/1.00  --inst_passive_queues_freq              [25;2]
% 1.38/1.00  --inst_dismatching                      true
% 1.38/1.00  --inst_eager_unprocessed_to_passive     true
% 1.38/1.00  --inst_prop_sim_given                   true
% 1.38/1.00  --inst_prop_sim_new                     false
% 1.38/1.00  --inst_subs_new                         false
% 1.38/1.00  --inst_eq_res_simp                      false
% 1.38/1.00  --inst_subs_given                       false
% 1.38/1.00  --inst_orphan_elimination               true
% 1.38/1.00  --inst_learning_loop_flag               true
% 1.38/1.00  --inst_learning_start                   3000
% 1.38/1.00  --inst_learning_factor                  2
% 1.38/1.00  --inst_start_prop_sim_after_learn       3
% 1.38/1.00  --inst_sel_renew                        solver
% 1.38/1.00  --inst_lit_activity_flag                true
% 1.38/1.00  --inst_restr_to_given                   false
% 1.38/1.00  --inst_activity_threshold               500
% 1.38/1.00  --inst_out_proof                        true
% 1.38/1.00  
% 1.38/1.00  ------ Resolution Options
% 1.38/1.00  
% 1.38/1.00  --resolution_flag                       true
% 1.38/1.00  --res_lit_sel                           adaptive
% 1.38/1.00  --res_lit_sel_side                      none
% 1.38/1.00  --res_ordering                          kbo
% 1.38/1.00  --res_to_prop_solver                    active
% 1.38/1.00  --res_prop_simpl_new                    false
% 1.38/1.00  --res_prop_simpl_given                  true
% 1.38/1.00  --res_passive_queue_type                priority_queues
% 1.38/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.38/1.00  --res_passive_queues_freq               [15;5]
% 1.38/1.00  --res_forward_subs                      full
% 1.38/1.00  --res_backward_subs                     full
% 1.38/1.00  --res_forward_subs_resolution           true
% 1.38/1.00  --res_backward_subs_resolution          true
% 1.38/1.00  --res_orphan_elimination                true
% 1.38/1.00  --res_time_limit                        2.
% 1.38/1.00  --res_out_proof                         true
% 1.38/1.00  
% 1.38/1.00  ------ Superposition Options
% 1.38/1.00  
% 1.38/1.00  --superposition_flag                    true
% 1.38/1.00  --sup_passive_queue_type                priority_queues
% 1.38/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.38/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.38/1.00  --demod_completeness_check              fast
% 1.38/1.00  --demod_use_ground                      true
% 1.38/1.00  --sup_to_prop_solver                    passive
% 1.38/1.00  --sup_prop_simpl_new                    true
% 1.38/1.00  --sup_prop_simpl_given                  true
% 1.38/1.00  --sup_fun_splitting                     false
% 1.38/1.00  --sup_smt_interval                      50000
% 1.38/1.00  
% 1.38/1.00  ------ Superposition Simplification Setup
% 1.38/1.00  
% 1.38/1.00  --sup_indices_passive                   []
% 1.38/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.38/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_full_bw                           [BwDemod]
% 1.38/1.00  --sup_immed_triv                        [TrivRules]
% 1.38/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.38/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_immed_bw_main                     []
% 1.38/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.38/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.38/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.38/1.00  
% 1.38/1.00  ------ Combination Options
% 1.38/1.00  
% 1.38/1.00  --comb_res_mult                         3
% 1.38/1.00  --comb_sup_mult                         2
% 1.38/1.00  --comb_inst_mult                        10
% 1.38/1.00  
% 1.38/1.00  ------ Debug Options
% 1.38/1.00  
% 1.38/1.00  --dbg_backtrace                         false
% 1.38/1.00  --dbg_dump_prop_clauses                 false
% 1.38/1.00  --dbg_dump_prop_clauses_file            -
% 1.38/1.00  --dbg_out_stat                          false
% 1.38/1.00  ------ Parsing...
% 1.38/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.38/1.00  ------ Proving...
% 1.38/1.00  ------ Problem Properties 
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  clauses                                 10
% 1.38/1.00  conjectures                             1
% 1.38/1.00  EPR                                     0
% 1.38/1.00  Horn                                    10
% 1.38/1.00  unary                                   8
% 1.38/1.00  binary                                  2
% 1.38/1.00  lits                                    12
% 1.38/1.00  lits eq                                 8
% 1.38/1.00  fd_pure                                 0
% 1.38/1.00  fd_pseudo                               0
% 1.38/1.00  fd_cond                                 0
% 1.38/1.00  fd_pseudo_cond                          0
% 1.38/1.00  AC symbols                              0
% 1.38/1.00  
% 1.38/1.00  ------ Schedule dynamic 5 is on 
% 1.38/1.00  
% 1.38/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  ------ 
% 1.38/1.00  Current options:
% 1.38/1.00  ------ 
% 1.38/1.00  
% 1.38/1.00  ------ Input Options
% 1.38/1.00  
% 1.38/1.00  --out_options                           all
% 1.38/1.00  --tptp_safe_out                         true
% 1.38/1.00  --problem_path                          ""
% 1.38/1.00  --include_path                          ""
% 1.38/1.00  --clausifier                            res/vclausify_rel
% 1.38/1.00  --clausifier_options                    --mode clausify
% 1.38/1.00  --stdin                                 false
% 1.38/1.00  --stats_out                             all
% 1.38/1.00  
% 1.38/1.00  ------ General Options
% 1.38/1.00  
% 1.38/1.00  --fof                                   false
% 1.38/1.00  --time_out_real                         305.
% 1.38/1.00  --time_out_virtual                      -1.
% 1.38/1.00  --symbol_type_check                     false
% 1.38/1.00  --clausify_out                          false
% 1.38/1.00  --sig_cnt_out                           false
% 1.38/1.00  --trig_cnt_out                          false
% 1.38/1.00  --trig_cnt_out_tolerance                1.
% 1.38/1.00  --trig_cnt_out_sk_spl                   false
% 1.38/1.00  --abstr_cl_out                          false
% 1.38/1.00  
% 1.38/1.00  ------ Global Options
% 1.38/1.00  
% 1.38/1.00  --schedule                              default
% 1.38/1.00  --add_important_lit                     false
% 1.38/1.00  --prop_solver_per_cl                    1000
% 1.38/1.00  --min_unsat_core                        false
% 1.38/1.00  --soft_assumptions                      false
% 1.38/1.00  --soft_lemma_size                       3
% 1.38/1.00  --prop_impl_unit_size                   0
% 1.38/1.00  --prop_impl_unit                        []
% 1.38/1.00  --share_sel_clauses                     true
% 1.38/1.00  --reset_solvers                         false
% 1.38/1.00  --bc_imp_inh                            [conj_cone]
% 1.38/1.00  --conj_cone_tolerance                   3.
% 1.38/1.00  --extra_neg_conj                        none
% 1.38/1.00  --large_theory_mode                     true
% 1.38/1.00  --prolific_symb_bound                   200
% 1.38/1.00  --lt_threshold                          2000
% 1.38/1.00  --clause_weak_htbl                      true
% 1.38/1.00  --gc_record_bc_elim                     false
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing Options
% 1.38/1.00  
% 1.38/1.00  --preprocessing_flag                    true
% 1.38/1.00  --time_out_prep_mult                    0.1
% 1.38/1.00  --splitting_mode                        input
% 1.38/1.00  --splitting_grd                         true
% 1.38/1.00  --splitting_cvd                         false
% 1.38/1.00  --splitting_cvd_svl                     false
% 1.38/1.00  --splitting_nvd                         32
% 1.38/1.00  --sub_typing                            true
% 1.38/1.00  --prep_gs_sim                           true
% 1.38/1.00  --prep_unflatten                        true
% 1.38/1.00  --prep_res_sim                          true
% 1.38/1.00  --prep_upred                            true
% 1.38/1.00  --prep_sem_filter                       exhaustive
% 1.38/1.00  --prep_sem_filter_out                   false
% 1.38/1.00  --pred_elim                             true
% 1.38/1.00  --res_sim_input                         true
% 1.38/1.00  --eq_ax_congr_red                       true
% 1.38/1.00  --pure_diseq_elim                       true
% 1.38/1.00  --brand_transform                       false
% 1.38/1.00  --non_eq_to_eq                          false
% 1.38/1.00  --prep_def_merge                        true
% 1.38/1.00  --prep_def_merge_prop_impl              false
% 1.38/1.00  --prep_def_merge_mbd                    true
% 1.38/1.00  --prep_def_merge_tr_red                 false
% 1.38/1.00  --prep_def_merge_tr_cl                  false
% 1.38/1.00  --smt_preprocessing                     true
% 1.38/1.00  --smt_ac_axioms                         fast
% 1.38/1.00  --preprocessed_out                      false
% 1.38/1.00  --preprocessed_stats                    false
% 1.38/1.00  
% 1.38/1.00  ------ Abstraction refinement Options
% 1.38/1.00  
% 1.38/1.00  --abstr_ref                             []
% 1.38/1.00  --abstr_ref_prep                        false
% 1.38/1.00  --abstr_ref_until_sat                   false
% 1.38/1.00  --abstr_ref_sig_restrict                funpre
% 1.38/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.38/1.00  --abstr_ref_under                       []
% 1.38/1.00  
% 1.38/1.00  ------ SAT Options
% 1.38/1.00  
% 1.38/1.00  --sat_mode                              false
% 1.38/1.00  --sat_fm_restart_options                ""
% 1.38/1.00  --sat_gr_def                            false
% 1.38/1.00  --sat_epr_types                         true
% 1.38/1.00  --sat_non_cyclic_types                  false
% 1.38/1.00  --sat_finite_models                     false
% 1.38/1.00  --sat_fm_lemmas                         false
% 1.38/1.00  --sat_fm_prep                           false
% 1.38/1.00  --sat_fm_uc_incr                        true
% 1.38/1.00  --sat_out_model                         small
% 1.38/1.00  --sat_out_clauses                       false
% 1.38/1.00  
% 1.38/1.00  ------ QBF Options
% 1.38/1.00  
% 1.38/1.00  --qbf_mode                              false
% 1.38/1.00  --qbf_elim_univ                         false
% 1.38/1.00  --qbf_dom_inst                          none
% 1.38/1.00  --qbf_dom_pre_inst                      false
% 1.38/1.00  --qbf_sk_in                             false
% 1.38/1.00  --qbf_pred_elim                         true
% 1.38/1.00  --qbf_split                             512
% 1.38/1.00  
% 1.38/1.00  ------ BMC1 Options
% 1.38/1.00  
% 1.38/1.00  --bmc1_incremental                      false
% 1.38/1.00  --bmc1_axioms                           reachable_all
% 1.38/1.00  --bmc1_min_bound                        0
% 1.38/1.00  --bmc1_max_bound                        -1
% 1.38/1.00  --bmc1_max_bound_default                -1
% 1.38/1.00  --bmc1_symbol_reachability              true
% 1.38/1.00  --bmc1_property_lemmas                  false
% 1.38/1.00  --bmc1_k_induction                      false
% 1.38/1.00  --bmc1_non_equiv_states                 false
% 1.38/1.00  --bmc1_deadlock                         false
% 1.38/1.00  --bmc1_ucm                              false
% 1.38/1.00  --bmc1_add_unsat_core                   none
% 1.38/1.00  --bmc1_unsat_core_children              false
% 1.38/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.38/1.00  --bmc1_out_stat                         full
% 1.38/1.00  --bmc1_ground_init                      false
% 1.38/1.00  --bmc1_pre_inst_next_state              false
% 1.38/1.00  --bmc1_pre_inst_state                   false
% 1.38/1.00  --bmc1_pre_inst_reach_state             false
% 1.38/1.00  --bmc1_out_unsat_core                   false
% 1.38/1.00  --bmc1_aig_witness_out                  false
% 1.38/1.00  --bmc1_verbose                          false
% 1.38/1.00  --bmc1_dump_clauses_tptp                false
% 1.38/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.38/1.00  --bmc1_dump_file                        -
% 1.38/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.38/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.38/1.00  --bmc1_ucm_extend_mode                  1
% 1.38/1.00  --bmc1_ucm_init_mode                    2
% 1.38/1.00  --bmc1_ucm_cone_mode                    none
% 1.38/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.38/1.00  --bmc1_ucm_relax_model                  4
% 1.38/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.38/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.38/1.00  --bmc1_ucm_layered_model                none
% 1.38/1.00  --bmc1_ucm_max_lemma_size               10
% 1.38/1.00  
% 1.38/1.00  ------ AIG Options
% 1.38/1.00  
% 1.38/1.00  --aig_mode                              false
% 1.38/1.00  
% 1.38/1.00  ------ Instantiation Options
% 1.38/1.00  
% 1.38/1.00  --instantiation_flag                    true
% 1.38/1.00  --inst_sos_flag                         false
% 1.38/1.00  --inst_sos_phase                        true
% 1.38/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.38/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.38/1.00  --inst_lit_sel_side                     none
% 1.38/1.00  --inst_solver_per_active                1400
% 1.38/1.00  --inst_solver_calls_frac                1.
% 1.38/1.00  --inst_passive_queue_type               priority_queues
% 1.38/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.38/1.00  --inst_passive_queues_freq              [25;2]
% 1.38/1.00  --inst_dismatching                      true
% 1.38/1.00  --inst_eager_unprocessed_to_passive     true
% 1.38/1.00  --inst_prop_sim_given                   true
% 1.38/1.00  --inst_prop_sim_new                     false
% 1.38/1.00  --inst_subs_new                         false
% 1.38/1.00  --inst_eq_res_simp                      false
% 1.38/1.00  --inst_subs_given                       false
% 1.38/1.00  --inst_orphan_elimination               true
% 1.38/1.00  --inst_learning_loop_flag               true
% 1.38/1.00  --inst_learning_start                   3000
% 1.38/1.00  --inst_learning_factor                  2
% 1.38/1.00  --inst_start_prop_sim_after_learn       3
% 1.38/1.00  --inst_sel_renew                        solver
% 1.38/1.00  --inst_lit_activity_flag                true
% 1.38/1.00  --inst_restr_to_given                   false
% 1.38/1.00  --inst_activity_threshold               500
% 1.38/1.00  --inst_out_proof                        true
% 1.38/1.00  
% 1.38/1.00  ------ Resolution Options
% 1.38/1.00  
% 1.38/1.00  --resolution_flag                       false
% 1.38/1.00  --res_lit_sel                           adaptive
% 1.38/1.00  --res_lit_sel_side                      none
% 1.38/1.00  --res_ordering                          kbo
% 1.38/1.00  --res_to_prop_solver                    active
% 1.38/1.00  --res_prop_simpl_new                    false
% 1.38/1.00  --res_prop_simpl_given                  true
% 1.38/1.00  --res_passive_queue_type                priority_queues
% 1.38/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.38/1.00  --res_passive_queues_freq               [15;5]
% 1.38/1.00  --res_forward_subs                      full
% 1.38/1.00  --res_backward_subs                     full
% 1.38/1.00  --res_forward_subs_resolution           true
% 1.38/1.00  --res_backward_subs_resolution          true
% 1.38/1.00  --res_orphan_elimination                true
% 1.38/1.00  --res_time_limit                        2.
% 1.38/1.00  --res_out_proof                         true
% 1.38/1.00  
% 1.38/1.00  ------ Superposition Options
% 1.38/1.00  
% 1.38/1.00  --superposition_flag                    true
% 1.38/1.00  --sup_passive_queue_type                priority_queues
% 1.38/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.38/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.38/1.00  --demod_completeness_check              fast
% 1.38/1.00  --demod_use_ground                      true
% 1.38/1.00  --sup_to_prop_solver                    passive
% 1.38/1.00  --sup_prop_simpl_new                    true
% 1.38/1.00  --sup_prop_simpl_given                  true
% 1.38/1.00  --sup_fun_splitting                     false
% 1.38/1.00  --sup_smt_interval                      50000
% 1.38/1.00  
% 1.38/1.00  ------ Superposition Simplification Setup
% 1.38/1.00  
% 1.38/1.00  --sup_indices_passive                   []
% 1.38/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.38/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.38/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_full_bw                           [BwDemod]
% 1.38/1.00  --sup_immed_triv                        [TrivRules]
% 1.38/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.38/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_immed_bw_main                     []
% 1.38/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.38/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.38/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.38/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.38/1.00  
% 1.38/1.00  ------ Combination Options
% 1.38/1.00  
% 1.38/1.00  --comb_res_mult                         3
% 1.38/1.00  --comb_sup_mult                         2
% 1.38/1.00  --comb_inst_mult                        10
% 1.38/1.00  
% 1.38/1.00  ------ Debug Options
% 1.38/1.00  
% 1.38/1.00  --dbg_backtrace                         false
% 1.38/1.00  --dbg_dump_prop_clauses                 false
% 1.38/1.00  --dbg_dump_prop_clauses_file            -
% 1.38/1.00  --dbg_out_stat                          false
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  ------ Proving...
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  % SZS status Theorem for theBenchmark.p
% 1.38/1.00  
% 1.38/1.00   Resolution empty clause
% 1.38/1.00  
% 1.38/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.38/1.00  
% 1.38/1.00  fof(f8,axiom,(
% 1.38/1.00    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f39,plain,(
% 1.38/1.00    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 1.38/1.00    inference(cnf_transformation,[],[f8])).
% 1.38/1.00  
% 1.38/1.00  fof(f9,axiom,(
% 1.38/1.00    ! [X0] : k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f40,plain,(
% 1.38/1.00    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_subset_1(X0))) )),
% 1.38/1.00    inference(cnf_transformation,[],[f9])).
% 1.38/1.00  
% 1.38/1.00  fof(f5,axiom,(
% 1.38/1.00    ! [X0] : k1_xboole_0 = k1_subset_1(X0)),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f36,plain,(
% 1.38/1.00    ( ! [X0] : (k1_xboole_0 = k1_subset_1(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f5])).
% 1.38/1.00  
% 1.38/1.00  fof(f51,plain,(
% 1.38/1.00    ( ! [X0] : (k2_subset_1(X0) = k3_subset_1(X0,k1_xboole_0)) )),
% 1.38/1.00    inference(definition_unfolding,[],[f40,f36])).
% 1.38/1.00  
% 1.38/1.00  fof(f54,plain,(
% 1.38/1.00    ( ! [X0] : (m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0))) )),
% 1.38/1.00    inference(definition_unfolding,[],[f39,f51])).
% 1.38/1.00  
% 1.38/1.00  fof(f6,axiom,(
% 1.38/1.00    ! [X0] : k2_subset_1(X0) = X0),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f37,plain,(
% 1.38/1.00    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.38/1.00    inference(cnf_transformation,[],[f6])).
% 1.38/1.00  
% 1.38/1.00  fof(f53,plain,(
% 1.38/1.00    ( ! [X0] : (k3_subset_1(X0,k1_xboole_0) = X0) )),
% 1.38/1.00    inference(definition_unfolding,[],[f37,f51])).
% 1.38/1.00  
% 1.38/1.00  fof(f16,axiom,(
% 1.38/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1)))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f27,plain,(
% 1.38/1.00    ! [X0] : (! [X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.38/1.00    inference(ennf_transformation,[],[f16])).
% 1.38/1.00  
% 1.38/1.00  fof(f47,plain,(
% 1.38/1.00    ( ! [X0,X1] : (k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) = k1_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f27])).
% 1.38/1.00  
% 1.38/1.00  fof(f17,conjecture,(
% 1.38/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f18,negated_conjecture,(
% 1.38/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 1.38/1.00    inference(negated_conjecture,[],[f17])).
% 1.38/1.00  
% 1.38/1.00  fof(f28,plain,(
% 1.38/1.00    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 1.38/1.00    inference(ennf_transformation,[],[f18])).
% 1.38/1.00  
% 1.38/1.00  fof(f29,plain,(
% 1.38/1.00    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 1.38/1.00    inference(flattening,[],[f28])).
% 1.38/1.00  
% 1.38/1.00  fof(f30,plain,(
% 1.38/1.00    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 1.38/1.00    introduced(choice_axiom,[])).
% 1.38/1.00  
% 1.38/1.00  fof(f31,plain,(
% 1.38/1.00    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 1.38/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).
% 1.38/1.00  
% 1.38/1.00  fof(f49,plain,(
% 1.38/1.00    l1_pre_topc(sK0)),
% 1.38/1.00    inference(cnf_transformation,[],[f31])).
% 1.38/1.00  
% 1.38/1.00  fof(f1,axiom,(
% 1.38/1.00    v1_xboole_0(k1_xboole_0)),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f32,plain,(
% 1.38/1.00    v1_xboole_0(k1_xboole_0)),
% 1.38/1.00    inference(cnf_transformation,[],[f1])).
% 1.38/1.00  
% 1.38/1.00  fof(f12,axiom,(
% 1.38/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v1_xboole_0(X1) => v4_pre_topc(X1,X0))))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f21,plain,(
% 1.38/1.00    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) | ~v1_xboole_0(X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.38/1.00    inference(ennf_transformation,[],[f12])).
% 1.38/1.00  
% 1.38/1.00  fof(f22,plain,(
% 1.38/1.00    ! [X0] : (! [X1] : (v4_pre_topc(X1,X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.38/1.00    inference(flattening,[],[f21])).
% 1.38/1.00  
% 1.38/1.00  fof(f42,plain,(
% 1.38/1.00    ( ! [X0,X1] : (v4_pre_topc(X1,X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f22])).
% 1.38/1.00  
% 1.38/1.00  fof(f10,axiom,(
% 1.38/1.00    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f41,plain,(
% 1.38/1.00    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.38/1.00    inference(cnf_transformation,[],[f10])).
% 1.38/1.00  
% 1.38/1.00  fof(f48,plain,(
% 1.38/1.00    v2_pre_topc(sK0)),
% 1.38/1.00    inference(cnf_transformation,[],[f31])).
% 1.38/1.00  
% 1.38/1.00  fof(f15,axiom,(
% 1.38/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f25,plain,(
% 1.38/1.00    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.38/1.00    inference(ennf_transformation,[],[f15])).
% 1.38/1.00  
% 1.38/1.00  fof(f26,plain,(
% 1.38/1.00    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.38/1.00    inference(flattening,[],[f25])).
% 1.38/1.00  
% 1.38/1.00  fof(f45,plain,(
% 1.38/1.00    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f26])).
% 1.38/1.00  
% 1.38/1.00  fof(f7,axiom,(
% 1.38/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f20,plain,(
% 1.38/1.00    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/1.00    inference(ennf_transformation,[],[f7])).
% 1.38/1.00  
% 1.38/1.00  fof(f38,plain,(
% 1.38/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.38/1.00    inference(cnf_transformation,[],[f20])).
% 1.38/1.00  
% 1.38/1.00  fof(f2,axiom,(
% 1.38/1.00    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f33,plain,(
% 1.38/1.00    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f2])).
% 1.38/1.00  
% 1.38/1.00  fof(f4,axiom,(
% 1.38/1.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f35,plain,(
% 1.38/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.38/1.00    inference(cnf_transformation,[],[f4])).
% 1.38/1.00  
% 1.38/1.00  fof(f52,plain,(
% 1.38/1.00    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0))) )),
% 1.38/1.00    inference(definition_unfolding,[],[f33,f35])).
% 1.38/1.00  
% 1.38/1.00  fof(f3,axiom,(
% 1.38/1.00    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f34,plain,(
% 1.38/1.00    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.38/1.00    inference(cnf_transformation,[],[f3])).
% 1.38/1.00  
% 1.38/1.00  fof(f50,plain,(
% 1.38/1.00    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))),
% 1.38/1.00    inference(cnf_transformation,[],[f31])).
% 1.38/1.00  
% 1.38/1.00  fof(f14,axiom,(
% 1.38/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f24,plain,(
% 1.38/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.38/1.00    inference(ennf_transformation,[],[f14])).
% 1.38/1.00  
% 1.38/1.00  fof(f44,plain,(
% 1.38/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f24])).
% 1.38/1.00  
% 1.38/1.00  fof(f13,axiom,(
% 1.38/1.00    ! [X0] : (l1_struct_0(X0) => u1_struct_0(X0) = k2_struct_0(X0))),
% 1.38/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.38/1.00  
% 1.38/1.00  fof(f23,plain,(
% 1.38/1.00    ! [X0] : (u1_struct_0(X0) = k2_struct_0(X0) | ~l1_struct_0(X0))),
% 1.38/1.00    inference(ennf_transformation,[],[f13])).
% 1.38/1.00  
% 1.38/1.00  fof(f43,plain,(
% 1.38/1.00    ( ! [X0] : (u1_struct_0(X0) = k2_struct_0(X0) | ~l1_struct_0(X0)) )),
% 1.38/1.00    inference(cnf_transformation,[],[f23])).
% 1.38/1.00  
% 1.38/1.00  cnf(c_5,plain,
% 1.38/1.00      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) ),
% 1.38/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_489,plain,
% 1.38/1.00      ( m1_subset_1(k3_subset_1(X0,k1_xboole_0),k1_zfmisc_1(X0)) = iProver_top ),
% 1.38/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_3,plain,
% 1.38/1.00      ( k3_subset_1(X0,k1_xboole_0) = X0 ),
% 1.38/1.00      inference(cnf_transformation,[],[f53]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_507,plain,
% 1.38/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.38/1.00      inference(light_normalisation,[status(thm)],[c_489,c_3]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_12,plain,
% 1.38/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | ~ l1_pre_topc(X1)
% 1.38/1.00      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f47]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_14,negated_conjecture,
% 1.38/1.00      ( l1_pre_topc(sK0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_226,plain,
% 1.38/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | k3_subset_1(u1_struct_0(X1),k2_pre_topc(X1,k3_subset_1(u1_struct_0(X1),X0))) = k1_tops_1(X1,X0)
% 1.38/1.00      | sK0 != X1 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_12,c_14]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_227,plain,
% 1.38/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.38/1.00      | k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0) ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_226]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_487,plain,
% 1.38/1.00      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) = k1_tops_1(sK0,X0)
% 1.38/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.38/1.00      inference(predicate_to_equality,[status(thm)],[c_227]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_709,plain,
% 1.38/1.00      ( k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),u1_struct_0(sK0)))) = k1_tops_1(sK0,u1_struct_0(sK0)) ),
% 1.38/1.00      inference(superposition,[status(thm)],[c_507,c_487]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_0,plain,
% 1.38/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f32]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_7,plain,
% 1.38/1.00      ( v4_pre_topc(X0,X1)
% 1.38/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | ~ v2_pre_topc(X1)
% 1.38/1.00      | ~ l1_pre_topc(X1)
% 1.38/1.00      | ~ v1_xboole_0(X0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f42]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_163,plain,
% 1.38/1.00      ( v4_pre_topc(X0,X1)
% 1.38/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | ~ v2_pre_topc(X1)
% 1.38/1.00      | ~ l1_pre_topc(X1)
% 1.38/1.00      | k1_xboole_0 != X0 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_7]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_164,plain,
% 1.38/1.00      ( v4_pre_topc(k1_xboole_0,X0)
% 1.38/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
% 1.38/1.00      | ~ v2_pre_topc(X0)
% 1.38/1.00      | ~ l1_pre_topc(X0) ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_163]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_6,plain,
% 1.38/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.38/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_176,plain,
% 1.38/1.00      ( v4_pre_topc(k1_xboole_0,X0) | ~ v2_pre_topc(X0) | ~ l1_pre_topc(X0) ),
% 1.38/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_164,c_6]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_15,negated_conjecture,
% 1.38/1.00      ( v2_pre_topc(sK0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f48]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_187,plain,
% 1.38/1.00      ( v4_pre_topc(k1_xboole_0,X0) | ~ l1_pre_topc(X0) | sK0 != X0 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_176,c_15]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_188,plain,
% 1.38/1.00      ( v4_pre_topc(k1_xboole_0,sK0) | ~ l1_pre_topc(sK0) ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_187]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_190,plain,
% 1.38/1.00      ( v4_pre_topc(k1_xboole_0,sK0) ),
% 1.38/1.00      inference(global_propositional_subsumption,[status(thm)],[c_188,c_14]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_11,plain,
% 1.38/1.00      ( ~ v4_pre_topc(X0,X1)
% 1.38/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | ~ l1_pre_topc(X1)
% 1.38/1.00      | k2_pre_topc(X1,X0) = X0 ),
% 1.38/1.00      inference(cnf_transformation,[],[f45]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_238,plain,
% 1.38/1.00      ( ~ v4_pre_topc(X0,X1)
% 1.38/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.38/1.00      | k2_pre_topc(X1,X0) = X0
% 1.38/1.00      | sK0 != X1 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_11,c_14]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_239,plain,
% 1.38/1.00      ( ~ v4_pre_topc(X0,sK0)
% 1.38/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.38/1.00      | k2_pre_topc(sK0,X0) = X0 ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_238]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_262,plain,
% 1.38/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.38/1.00      | k2_pre_topc(sK0,X0) = X0
% 1.38/1.00      | sK0 != sK0
% 1.38/1.00      | k1_xboole_0 != X0 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_190,c_239]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_263,plain,
% 1.38/1.00      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.38/1.00      | k2_pre_topc(sK0,k1_xboole_0) = k1_xboole_0 ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_262]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_269,plain,
% 1.38/1.00      ( k2_pre_topc(sK0,k1_xboole_0) = k1_xboole_0 ),
% 1.38/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_263,c_6]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_4,plain,
% 1.38/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.38/1.00      | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_490,plain,
% 1.38/1.00      ( k3_subset_1(X0,X1) = k4_xboole_0(X0,X1)
% 1.38/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 1.38/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_804,plain,
% 1.38/1.00      ( k3_subset_1(X0,X0) = k4_xboole_0(X0,X0) ),
% 1.38/1.00      inference(superposition,[status(thm)],[c_507,c_490]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_1,plain,
% 1.38/1.00      ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 1.38/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_2,plain,
% 1.38/1.00      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 1.38/1.00      inference(cnf_transformation,[],[f34]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_501,plain,
% 1.38/1.00      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 1.38/1.00      inference(light_normalisation,[status(thm)],[c_1,c_2]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_806,plain,
% 1.38/1.00      ( k3_subset_1(X0,X0) = k1_xboole_0 ),
% 1.38/1.00      inference(light_normalisation,[status(thm)],[c_804,c_501]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_843,plain,
% 1.38/1.00      ( k1_tops_1(sK0,u1_struct_0(sK0)) = u1_struct_0(sK0) ),
% 1.38/1.00      inference(demodulation,[status(thm)],[c_709,c_3,c_269,c_806]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_13,negated_conjecture,
% 1.38/1.00      ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) ),
% 1.38/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_9,plain,
% 1.38/1.00      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f44]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_8,plain,
% 1.38/1.00      ( ~ l1_struct_0(X0) | k2_struct_0(X0) = u1_struct_0(X0) ),
% 1.38/1.00      inference(cnf_transformation,[],[f43]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_149,plain,
% 1.38/1.00      ( ~ l1_pre_topc(X0) | k2_struct_0(X0) = u1_struct_0(X0) ),
% 1.38/1.00      inference(resolution,[status(thm)],[c_9,c_8]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_221,plain,
% 1.38/1.00      ( k2_struct_0(X0) = u1_struct_0(X0) | sK0 != X0 ),
% 1.38/1.00      inference(resolution_lifted,[status(thm)],[c_149,c_14]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_222,plain,
% 1.38/1.00      ( k2_struct_0(sK0) = u1_struct_0(sK0) ),
% 1.38/1.00      inference(unflattening,[status(thm)],[c_221]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_504,plain,
% 1.38/1.00      ( k1_tops_1(sK0,u1_struct_0(sK0)) != u1_struct_0(sK0) ),
% 1.38/1.00      inference(light_normalisation,[status(thm)],[c_13,c_222]) ).
% 1.38/1.00  
% 1.38/1.00  cnf(c_845,plain,
% 1.38/1.00      ( $false ),
% 1.38/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_843,c_504]) ).
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.38/1.00  
% 1.38/1.00  ------                               Statistics
% 1.38/1.00  
% 1.38/1.00  ------ General
% 1.38/1.00  
% 1.38/1.00  abstr_ref_over_cycles:                  0
% 1.38/1.00  abstr_ref_under_cycles:                 0
% 1.38/1.00  gc_basic_clause_elim:                   0
% 1.38/1.00  forced_gc_time:                         0
% 1.38/1.00  parsing_time:                           0.009
% 1.38/1.00  unif_index_cands_time:                  0.
% 1.38/1.00  unif_index_add_time:                    0.
% 1.38/1.00  orderings_time:                         0.
% 1.38/1.00  out_proof_time:                         0.009
% 1.38/1.00  total_time:                             0.085
% 1.38/1.00  num_of_symbols:                         46
% 1.38/1.00  num_of_terms:                           895
% 1.38/1.00  
% 1.38/1.00  ------ Preprocessing
% 1.38/1.00  
% 1.38/1.00  num_of_splits:                          0
% 1.38/1.00  num_of_split_atoms:                     0
% 1.38/1.00  num_of_reused_defs:                     0
% 1.38/1.00  num_eq_ax_congr_red:                    8
% 1.38/1.00  num_of_sem_filtered_clauses:            1
% 1.38/1.00  num_of_subtypes:                        0
% 1.38/1.00  monotx_restored_types:                  0
% 1.38/1.00  sat_num_of_epr_types:                   0
% 1.38/1.00  sat_num_of_non_cyclic_types:            0
% 1.38/1.00  sat_guarded_non_collapsed_types:        0
% 1.38/1.00  num_pure_diseq_elim:                    0
% 1.38/1.00  simp_replaced_by:                       0
% 1.38/1.00  res_preprocessed:                       67
% 1.38/1.00  prep_upred:                             0
% 1.38/1.00  prep_unflattend:                        15
% 1.38/1.00  smt_new_axioms:                         0
% 1.38/1.00  pred_elim_cands:                        1
% 1.38/1.00  pred_elim:                              5
% 1.38/1.00  pred_elim_cl:                           6
% 1.38/1.00  pred_elim_cycles:                       7
% 1.38/1.00  merged_defs:                            0
% 1.38/1.00  merged_defs_ncl:                        0
% 1.38/1.00  bin_hyper_res:                          0
% 1.38/1.00  prep_cycles:                            4
% 1.38/1.00  pred_elim_time:                         0.004
% 1.38/1.00  splitting_time:                         0.
% 1.38/1.00  sem_filter_time:                        0.
% 1.38/1.00  monotx_time:                            0.
% 1.38/1.00  subtype_inf_time:                       0.
% 1.38/1.00  
% 1.38/1.00  ------ Problem properties
% 1.38/1.00  
% 1.38/1.00  clauses:                                10
% 1.38/1.00  conjectures:                            1
% 1.38/1.00  epr:                                    0
% 1.38/1.00  horn:                                   10
% 1.38/1.00  ground:                                 3
% 1.38/1.00  unary:                                  8
% 1.38/1.00  binary:                                 2
% 1.38/1.00  lits:                                   12
% 1.38/1.00  lits_eq:                                8
% 1.38/1.00  fd_pure:                                0
% 1.38/1.00  fd_pseudo:                              0
% 1.38/1.00  fd_cond:                                0
% 1.38/1.00  fd_pseudo_cond:                         0
% 1.38/1.00  ac_symbols:                             0
% 1.38/1.00  
% 1.38/1.00  ------ Propositional Solver
% 1.38/1.00  
% 1.38/1.00  prop_solver_calls:                      26
% 1.38/1.00  prop_fast_solver_calls:                 293
% 1.38/1.00  smt_solver_calls:                       0
% 1.38/1.00  smt_fast_solver_calls:                  0
% 1.38/1.00  prop_num_of_clauses:                    284
% 1.38/1.00  prop_preprocess_simplified:             1715
% 1.38/1.00  prop_fo_subsumed:                       2
% 1.38/1.00  prop_solver_time:                       0.
% 1.38/1.00  smt_solver_time:                        0.
% 1.38/1.00  smt_fast_solver_time:                   0.
% 1.38/1.00  prop_fast_solver_time:                  0.
% 1.38/1.00  prop_unsat_core_time:                   0.
% 1.38/1.00  
% 1.38/1.00  ------ QBF
% 1.38/1.00  
% 1.38/1.00  qbf_q_res:                              0
% 1.38/1.00  qbf_num_tautologies:                    0
% 1.38/1.00  qbf_prep_cycles:                        0
% 1.38/1.00  
% 1.38/1.00  ------ BMC1
% 1.38/1.00  
% 1.38/1.00  bmc1_current_bound:                     -1
% 1.38/1.00  bmc1_last_solved_bound:                 -1
% 1.38/1.00  bmc1_unsat_core_size:                   -1
% 1.38/1.00  bmc1_unsat_core_parents_size:           -1
% 1.38/1.00  bmc1_merge_next_fun:                    0
% 1.38/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.38/1.00  
% 1.38/1.00  ------ Instantiation
% 1.38/1.00  
% 1.38/1.00  inst_num_of_clauses:                    110
% 1.38/1.00  inst_num_in_passive:                    25
% 1.38/1.00  inst_num_in_active:                     67
% 1.38/1.00  inst_num_in_unprocessed:                18
% 1.38/1.00  inst_num_of_loops:                      70
% 1.38/1.00  inst_num_of_learning_restarts:          0
% 1.38/1.00  inst_num_moves_active_passive:          1
% 1.38/1.00  inst_lit_activity:                      0
% 1.38/1.00  inst_lit_activity_moves:                0
% 1.38/1.00  inst_num_tautologies:                   0
% 1.38/1.00  inst_num_prop_implied:                  0
% 1.38/1.00  inst_num_existing_simplified:           0
% 1.38/1.00  inst_num_eq_res_simplified:             0
% 1.38/1.00  inst_num_child_elim:                    0
% 1.38/1.00  inst_num_of_dismatching_blockings:      9
% 1.38/1.00  inst_num_of_non_proper_insts:           71
% 1.38/1.00  inst_num_of_duplicates:                 0
% 1.38/1.00  inst_inst_num_from_inst_to_res:         0
% 1.38/1.00  inst_dismatching_checking_time:         0.
% 1.38/1.00  
% 1.38/1.00  ------ Resolution
% 1.38/1.00  
% 1.38/1.00  res_num_of_clauses:                     0
% 1.38/1.00  res_num_in_passive:                     0
% 1.38/1.00  res_num_in_active:                      0
% 1.38/1.00  res_num_of_loops:                       71
% 1.38/1.00  res_forward_subset_subsumed:            7
% 1.38/1.00  res_backward_subset_subsumed:           0
% 1.38/1.00  res_forward_subsumed:                   0
% 1.38/1.00  res_backward_subsumed:                  0
% 1.38/1.00  res_forward_subsumption_resolution:     2
% 1.38/1.00  res_backward_subsumption_resolution:    0
% 1.38/1.00  res_clause_to_clause_subsumption:       32
% 1.38/1.00  res_orphan_elimination:                 0
% 1.38/1.00  res_tautology_del:                      8
% 1.38/1.00  res_num_eq_res_simplified:              0
% 1.38/1.00  res_num_sel_changes:                    0
% 1.38/1.00  res_moves_from_active_to_pass:          0
% 1.38/1.00  
% 1.38/1.00  ------ Superposition
% 1.38/1.00  
% 1.38/1.00  sup_time_total:                         0.
% 1.38/1.00  sup_time_generating:                    0.
% 1.38/1.00  sup_time_sim_full:                      0.
% 1.38/1.00  sup_time_sim_immed:                     0.
% 1.38/1.00  
% 1.38/1.00  sup_num_of_clauses:                     13
% 1.38/1.00  sup_num_in_active:                      12
% 1.38/1.00  sup_num_in_passive:                     1
% 1.38/1.00  sup_num_of_loops:                       12
% 1.38/1.00  sup_fw_superposition:                   2
% 1.38/1.00  sup_bw_superposition:                   2
% 1.38/1.00  sup_immediate_simplified:               3
% 1.38/1.00  sup_given_eliminated:                   0
% 1.38/1.00  comparisons_done:                       0
% 1.38/1.00  comparisons_avoided:                    0
% 1.38/1.00  
% 1.38/1.00  ------ Simplifications
% 1.38/1.00  
% 1.38/1.00  
% 1.38/1.00  sim_fw_subset_subsumed:                 0
% 1.38/1.00  sim_bw_subset_subsumed:                 0
% 1.38/1.00  sim_fw_subsumed:                        0
% 1.38/1.00  sim_bw_subsumed:                        0
% 1.38/1.00  sim_fw_subsumption_res:                 1
% 1.38/1.00  sim_bw_subsumption_res:                 0
% 1.38/1.00  sim_tautology_del:                      0
% 1.38/1.00  sim_eq_tautology_del:                   1
% 1.38/1.00  sim_eq_res_simp:                        0
% 1.38/1.00  sim_fw_demodulated:                     2
% 1.38/1.00  sim_bw_demodulated:                     0
% 1.38/1.00  sim_light_normalised:                   5
% 1.38/1.00  sim_joinable_taut:                      0
% 1.38/1.00  sim_joinable_simp:                      0
% 1.38/1.00  sim_ac_normalised:                      0
% 1.38/1.00  sim_smt_subsumption:                    0
% 1.38/1.00  
%------------------------------------------------------------------------------
